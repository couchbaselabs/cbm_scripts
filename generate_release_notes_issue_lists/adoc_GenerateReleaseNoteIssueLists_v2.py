# PROGRAM = adoc_GenerateReleaseNoteIssueLists.py
#
# Generates cut-and-paste-ready content for the inclusion file pn-issue-lists.adoc
# scrapes content from output of Jira filters and formats into a set of .adoc lists
# one set for each list type inside each component
#
import urllib.error
import urllib.request
import urllib.response
from dataclasses import dataclass
from pathlib import Path

import requests
import validators
from bs4 import BeautifulSoup as BS4

import argparse


def parse_arguments():
  parser = argparse.ArgumentParser()
  parser.add_argument("-a", "--all", help="Process all modules")
  parser.add_argument("-s", "--sgw", help="Process SGW modules")
  parser.add_argument("-c", "--cbl", help="Process CBL modules")
  args = parser.parse_args()
  if args.all:
    return 'all'
  if args.sgw:
    return 'sgw'
  if args.cbl:
    return 'cbl'
  return None




@dataclass
class RESPONSE:
  success: bool = False
  result: object = -1

@dataclass
class relnotestub:
  type: str
  ticket: str
  url: str
  text: str

def is_Valid_Url(argURL):
  """ Return true if this URL exists and is accessible; else return False and http code """

  response = False

  if validators.url(argURL):
    #  Only process 'valid' url
    try:
      conn = urllib.request.urlopen(argURL)
    except urllib.request.HTTPError as e:
      #  404 etc
      print(f'{e}')
      response = e.code
    except urllib.error as e:
      #  non http network type error (conn refused?
      print(f'{e}')
      response = e.code
    else:
      #  200-OK - Valid URL so lets get the data
      response = True

  return response
# ENDDEF

def scrapeDataFromUrl (argURL):

  if(is_Valid_Url(argURL)):
    url = argURL
    payload={}
    headers = {
      'Authorization': 'Basic SWFuLmJyaWRnZTpDOUZpY2lubyE=',
      'Cookie': 'JSESSIONID=B2DB7C7E1C490CCE9F0E8F31311B374C; atlassian.xsrf.token=B2JT-82WI-PU49-SXVL_c193a72d25d965da3217d3ca0fac773b555a49f9_lin'
    }
    content = requests.request("GET", url, headers=headers, data=payload)
    response = content.text
  else:
    response = "Invalid URL"
  return response
# ENDDEF



def get_data(argFile):
  text=""
  print(Path().absolute())
  print(Path(argFile))
  if(Path.is_file(Path(argFile))):
    f = open(argFile)
    text = f.read()
    f.close()
  return text
# ENDDEF


def get_tagContent(argtag, argcontent):
  """Return required tag from raw html content"""
  response = ''

  if len(argtag)<=0:
    response='No tag: '

  if len(argcontent)<=0:
    response= response + 'No content: '

  if len(response)==0:
    doc = BS4(argcontent,"html.parser")
    response = doc.find_all("tbody")

  return response
# ENDDEF


def collateCollectedData(argCollectedData):
  response=RESPONSE()
  local_stublist=[]
  if(len(argCollectedData)>0):
    tables = argCollectedData
    for tbl in tables:
      trs = tbl.contents
      for tr in trs:
        if tr != '\n':
          ticket_summary = tr.find_all("td", class_="summary")
          if(len(ticket_summary)>0):
            ticket = ticket_summary[0].p.a.attrs['data-issue-key']
            href = ticket_summary[0].p.a.get("href")
            summary = ticket_summary[0].p.a.text
            local_stublist.append(relnotestub("",ticket,href,summary))
    response.result = local_stublist
    response.success=True
  else:
    response.result = 'No Collected Data Provided'
    response.success=False

  return local_stublist
# ENDDEF collateCollectedData



def composeAdocContent(argProductStubLists,
         argProducts,
          argProdComponents,
          argListTypes,
          argVerbose=False,
          argtag=""):

  # Local variables
  adocTitle = "= Release Note issues for "
  adocSubTitle = "\n=="
  adocTagLine = '// tag::'
  adocEndTagLine = '// end::'
  adocBrackets ='[]'
  jira_root_url = "https://issues.couchbase.com/"
  local_stublist =[]
  local_list_type_stublist =[]
  fileroot = {
              'android':'/Users/ianbridge/CouchbaseDocs/bau/cbl/modules/android/pages/_partials',
              'csharp': '/Users/ianbridge/CouchbaseDocs/bau/cbl/modules/csharp/pages/_partials',
              'java': '/Users/ianbridge/CouchbaseDocs/bau/cbl/modules/java/pages/_partials',
              'objc': '/Users/ianbridge/CouchbaseDocs/bau/cbl/modules/objc/pages/_partials',
              'swift': '/Users/ianbridge/CouchbaseDocs/bau/cbl/modules/swift/pages/_partials',
              'c': '/Users/ianbridge/CouchbaseDocs/bau/cbl/modules/c/pages/_partials',
              }
  verbose = argVerbose==True
  if(len(argtag)>0): thisTag=argtag

  for product in argProducts:

    thisProdStubList = argProductStubLists[product]
    thisProdComponents = argProdComponents[product]

    for component in thisProdComponents:
      if component == '':
        filename = '/Users/ianbridge/CouchbaseDocs/bau/sgw/modules/root/pages/_partials/RelNoteIssues_{}.adoc'.format(product)
      else:
        filename = '/Users/ianbridge/CouchbaseDocs/bau/cbl/modules/RelNoteIssues_{}.adoc'.format(component)
      with open(filename,'w') as adocFile:
        if verbose:
          if component != '':
            print(f"Composing {component}")
        local_stublist = thisProdStubList[component]
        adocFile.write(f"{adocTitle} {component}\n\n")
        adocFile.write(f"// tag::issues-{thisTag}[]\n\n")
        # print(f"{adocTitle} {component}")
        for list_type in argListTypes:
          adocFile.write(f"{adocSubTitle} {list_type}\n\n")
          adocFile.write(f"{adocTagLine}{list_type}-{thisTag}{adocBrackets}\n\n")
          local_list_type_stublist = local_stublist[list_type]
          if len(local_list_type_stublist) > 0:
            for item in local_list_type_stublist:
              adocFile.write(f"* {jira_root_url}{item.url}[{item.ticket}] -- {jira_root_url}{item.url}[{item.text}]\n")
          else:
            adocFile.write(f"None for this release.\n\n")
          adocFile.write(f"{adocEndTagLine}{list_type}-{thisTag}{adocBrackets} total items = {len(local_list_type_stublist)}\n\n")
          if verbose:print(f"Composed {list_type} [{len(local_list_type_stublist)}]")
        adocFile.write(f"// end::issues-{thisTag}[] \n\n")

      adocFile.close()
      print(f"Composed {component}")

# ENDDEF composeAdocContent


def main():
  # Initialize
  release_tag ='3-0-0'

  mode = parse_arguments()
  if mode:
    if mode in 'all':
      Products = ['SG', 'CBL']
    if mode in 'sgw':
      Products = ['SG']
    if mode in 'cbl':
      Products = ['CBL']
  else:
    Products = []

  ComponentsDict = {
    'CBL': ['Android','C','Net', 'JK', 'iOS', 'Tools'],
    'SG': [''],
  }
  Components = []
  list_types = ['Fixed', 'Enhancements', 'KI', 'Deprecated', 'Removed']
  url_roots = {
    "Fixed": "https://issues.couchbase.com/issues/?jql=filter%20%3D%20Lithium-RN-",
    "Enhancements": "https://issues.couchbase.com/issues/?jql=filter%20%3D%20Lithium-RN-",
    "Removed": "https://issues.couchbase.com/issues/?jql=filter%20%3D%20Lithium-RN-",
    "KI": "https://issues.couchbase.com/issues/?jql=filter%20%3D%20ReleaseNotes-",
    "Deprecated": "https://issues.couchbase.com/issues/?jql=filter%20%3D%20ReleaseNotes-"
    # "Fixed":"https://issues.couchbase.com/issues/?jql=filter%20%3D%20Lithium-RN-CBL-",
    # "Enhancements":"https://issues.couchbase.com/issues/?jql=filter%20%3D%20Lithium-RN-CBL-",
    # "Removed":"https://issues.couchbase.com/issues/?jql=filter%20%3D%20Lithium-RN-CBL-",
    # "KI":"https://issues.couchbase.com/issues/?jql=filter%20%3D%20ReleaseNotes-CBL-",
    # "Deprecated":"https://issues.couchbase.com/issues/?jql=filter%20%3D%20ReleaseNotes-CBL-"
  }
  content_source ='/Users/ianbridge/theshed/pieshop/sauce/wranglebraces/example-jira-issues-list.html'
  required_tag = 'tbody'
  # required_url='https://issues.couchbase.com/issues/?jql=filter%20%3D%20Lithium-RN-CBL-Android-Enhancements%20%20%20'
  required_url='https://issues.couchbase.com/issues/?jql=filter%20%3D%20Lithium-RN-CBL-NET-Enhancements%20%20'

  platform_stubs = {}
  product_stubs = {}
  response = RESPONSE()
  for product in Products:
    print(f"Processing product {product}")
    Components = ComponentsDict[product]
    for component in Components:
      list_type_stubs = {}

      if component != '':
        print(f"Processing {component}")
      for list_type in list_types:
        stublist = []

        this_url_root = url_roots[list_type]
        if component== '':
          hyphen = ''
        else:
          hyphen = '-'

        this_url = f"{this_url_root}{product}{hyphen}{component}-{list_type}"

        scrapedData = scrapeDataFromUrl(this_url)
        collectedData = get_tagContent(required_tag,scrapedData)
        stublist = collateCollectedData(collectedData)
        list_type_stubs[list_type] = stublist
        # print(f"{component} has {len(stublist)} {list_type}")
      platform_stubs[component] = list_type_stubs
    product_stubs[product] = platform_stubs


  print("Completed Collection")

  composeAdocContent(
          argProductStubLists=product_stubs,
          argtag=release_tag,
          argProducts=Products,
          argProdComponents=ComponentsDict,
          argListTypes=list_types,
          argVerbose=True)
# ENDMAIN


if __name__ == "__main__":
  main()
