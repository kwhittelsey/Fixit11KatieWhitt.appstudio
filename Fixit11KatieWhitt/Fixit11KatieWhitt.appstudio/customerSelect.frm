{
  "!type": "Form",
  "_uuid": "1141ad4835a148c38d6ee06a48eb63e5",
  "HTML": "",
  "attributes": "",
  "background": "",
  "backgroundimage": "",
  "borderColor": "",
  "borderStyle": "",
  "borderWidth": "",
  "cached_js": "/*\nUsed a Select query and AJAX call to get all the customers from the database. \nDisplayed all the customers in a textArea so user can pick one. \nUsed a sql Select  query to get all of the customers whose state matches the state of the customer chosen by the user. \nUsed a textArea to show the user the matching customers, one per line, using a template literal. \n*/\n\nvar query = \"\"\nvar req = \"\"\nvar results = \"\"\n\ncustomerSelect.onshow=function(){\n  txtSelect_contents.style.height = \"100px\"\n  query = \"SELECT name FROM customer\"\n  //alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=\" + query)\n  \n  if (req.status ==200) {\n    results = JSON.parse(req.responseText)\n    console.log(results)\n  \n    if (results.length == 0)\n      NSB.MsgBox('There are no customers in the database.')\n    else {\n      console.log(`The parsed JSON is ${results}.`)\n      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)\n      \n      let customer = \"\"\n        for (i = 0; i <= results.length - 1; i++) {\n          customer = customer + results[i][0] + \"\\n\"\n        }\n      txtSelect.value = customer\n    }\n  } else\n      NSB.MsgBox('There was an error.')\n}\n\n\n\nlet queryState = \"\"\n\nbtnSelect.onclick=function(){\n  queryState = 'SELECT state FROM customer WHERE name = \"${txtSelect.value}\"'\n  //alert(queryState)\n  reqState = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=\" + queryState)\n  \n  if (reqState.status ==200) {\n    state = JSON.parse(reqState.responseText)\n    console.log(state)\n  } else\n      NSB.MsgBox('There is no states in the database.')\n  \n  query = 'SELECT * FROM customer WHERE state = ${state}'\n  //alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=\" + query)\n  \n  if (req.status ==200) {\n    console.log(results)\n  \n    if (results.length == 0)\n      NSB.MsgBox('There are no customers matching that criteria.')\n    else {\n      console.log(`The parsed JSON is ${results}.`)\n      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)\n      \n      let state = \"\"\n        for (i = 0; i <= results.length - 1; i++) {\n          state = state + results[i][1] + \"\\n\"\n        }\n      txtSelect.value = state\n    }\n  } else\n      NSB.MsgBox('There was an error.')\n}\n\n\n\nbtnCustDelete1.onclick=function(){\n  ChangeForm(customerDelete)\n}\n\nbtnCustUpate1.onclick=function(){\n  ChangeForm(customerUpdate)\n}\n\n",
  "cached_js_script_hash": "c4f742a9a80e1deec7aea2df3111cf4f",
  "children": [
    {
      "!type": "Dropdown_bs4",
      "_uuid": "b2afa8597f414d02835d5ec9f8c8a182",
      "align": "",
      "appearance": " btn-secondary",
      "backgroundColor": "",
      "badge": "",
      "badgeAppearance": " badge-info",
      "blockLevel": "",
      "borderColor": "",
      "borderStyle": "",
      "borderWidth": "",
      "bottom": "auto",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "class": "",
      "color": "",
      "disabled": "",
      "display": "",
      "dropdown": "dropdown",
      "expanded_pmp": true,
      "filter": "false",
      "filterPlaceholder": "Search...",
      "fontFamily": "",
      "fontSize": "",
      "fontStyle": "",
      "fontWeight": "",
      "groupStyle": "",
      "grouping": "",
      "height": "auto",
      "hidden": "",
      "icon": "caret",
      "id": "drpSelect",
      "items": "",
      "left": "24",
      "mAll": "",
      "mBottom": "",
      "mLeft": "",
      "mRight": "",
      "mTop": "",
      "onclick": "drpSelect.onclick()",
      "onmousedown": "",
      "onmousemove": "",
      "onmouseout": "",
      "onmouseup": "",
      "onresize": "",
      "ontouchend": "",
      "ontouchmove": "",
      "ontouchstart": "",
      "outline": "",
      "pAll": "",
      "pBottom": "",
      "pLeft": "",
      "pRight": "",
      "pTop": "",
      "popBody": "Body",
      "popClose": "hover",
      "popPosition": "",
      "popStyle": "popover",
      "popTitle": "Title",
      "right": "auto",
      "script": "",
      "size": " btn-md",
      "style": "",
      "top": "24",
      "value": "Customers",
      "width": "auto"
    },
    {
      "!type": "Textarea_bs4",
      "_uuid": "f302553fbf3e48958fa8cc10c462fd69",
      "align": "",
      "autocapitalize": "",
      "autocomplete": "",
      "autocorrect": "",
      "backgroundColor": "",
      "badge": "",
      "badgeAppearance": " badge-info",
      "bottom": "auto",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "class": "",
      "color": "",
      "disabled": "",
      "display": "",
      "expanded_pmp": true,
      "fontFamily": "",
      "fontSize": "",
      "fontStyle": "",
      "fontWeight": "",
      "footer": "",
      "header": "All customers:",
      "headerCols": 2,
      "height": "auto",
      "hidden": "",
      "icon": "",
      "iconTitle": "",
      "id": "txtSelect",
      "inputmode": "",
      "left": 0,
      "mAll": "",
      "mBottom": "",
      "mLeft": "",
      "mRight": "",
      "mTop": "",
      "maxlength": "",
      "name": "",
      "onchange": "",
      "onclick": "",
      "oncopy": "",
      "oncut": "",
      "onfocus": "",
      "onfocusout": "",
      "onkeypress": "",
      "onkeyup": "",
      "onmousedown": "",
      "onmousemove": "",
      "onmouseout": "",
      "onmouseup": "",
      "onpaste": "",
      "onresize": "",
      "ontouchend": "",
      "ontouchmove": "",
      "ontouchstart": "",
      "pAll": "",
      "pBottom": "",
      "pLeft": "",
      "pRight": "",
      "pTop": "",
      "placeholder": "",
      "popBody": "Body",
      "popClose": "hover",
      "popPosition": "",
      "popStyle": "popover",
      "popTitle": "Title",
      "readonly": "",
      "required": "",
      "right": "auto",
      "rows": "",
      "script": "",
      "spellcheck": "true",
      "style": "",
      "top": 248,
      "validation": "",
      "value": "",
      "valueCols": 10,
      "width": "auto"
    },
    {
      "!type": "Button_bs4",
      "_uuid": "94844823473943e9b287cf817133a472",
      "ChangeForm": "",
      "appearance": " btn-secondary",
      "backgroundColor": "",
      "badge": "",
      "badgeAppearance": " badge-info",
      "blockLevel": "",
      "borderColor": "",
      "borderStyle": "",
      "borderWidth": "",
      "bottom": "auto",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "class": "",
      "color": "",
      "disabled": "",
      "display": "",
      "expanded_pmp": true,
      "fontFamily": "",
      "fontSize": "",
      "fontStyle": "",
      "fontWeight": "",
      "groupStyle": "",
      "grouping": "",
      "height": "auto",
      "hidden": "",
      "icon": "",
      "iconTitle": "",
      "id": "btnFormDelete",
      "left": "140",
      "mAll": "",
      "mBottom": "",
      "mLeft": "",
      "mRight": "",
      "mTop": "",
      "onclick": "",
      "onmousedown": "",
      "onmousemove": "",
      "onmouseout": "",
      "onmouseup": "",
      "onresize": "",
      "ontouchend": "",
      "ontouchmove": "",
      "ontouchstart": "",
      "outline": "",
      "pAll": "",
      "pBottom": "",
      "pLeft": "",
      "pRight": "",
      "pTop": "",
      "popBody": "Body",
      "popClose": "hover",
      "popPosition": "",
      "popStyle": "popover",
      "popTitle": "Title",
      "right": "auto",
      "script": "",
      "size": " btn-md",
      "style": "",
      "toggleControl": "",
      "top": 402,
      "value": "Change to Delete Form",
      "width": "180"
    }
  ],
  "class": "",
  "designHeight": 0,
  "designWidth": 0,
  "expanded_pmp": true,
  "fullScreen": "true",
  "height": 460,
  "id": "customerSelect",
  "language": "JavaScript",
  "left": "0",
  "locked": false,
  "modal": "false",
  "onhide": "",
  "onkeypress": "",
  "onresize": "",
  "onshow": "customerSelect.onshow()",
  "openMode": "none",
  "parentForm": "",
  "position": "absolute",
  "script": "\nvar allData = \"\"\nvar query = \"\"\nvar req = \"\"\nvar results = \"\"\n\ncustomerSelect.onshow=function(){\n  txtState_contents.style.height = \"100px\"\n  query = \"SELECT * FROM customer\"\n  //alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=\" + query)\n  \n     if (req.status == 200) {\n        results = JSON.parse(req.responseText)\n        console.log(results)\n        allData = results\n        \n    if (results.length == 0)\n        NSB.MsgBox(\"There are no customers in this table.\")\n    else {       \n        let message = \"\"\n        for (i = 0; i <= results.length - 1; i++)\n            message = message + results[i][0] + \"\\n\"\n        txtStates.value = message\n      }\n    \n  } else\n        NSB.MsgBox(\"There was an error.\")\n}\n\n\n\ndrpSelect.onclick=function(s){\n  var companyName = \"\"\n  var state = \"\"\n  var resultCompany = \"\"\n  \n  if (typeof(s) == \"object\") {\n     return\n}else{\n     drpSelect.value = s\n     companyName = drpSelect.selection\n     for (i = 0; i <= allData.length - 1; i++) {\n          if (companyName == allData[i][1]) {\n               state = allData[i][4]\n               break\n          }\n     }\n     \n     for (i = 0; i <= a;;Data.length - 1; i++) {\n          if (state == allData[i][4])\n               resultCompany.push(allData[i][1])\n          }\n          \n          query = \"SELECT name FROM customer WHERE state = \"${state}\"\"\n          req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=\" + query)\n          if (req.status == 200) {\n               results = JSON.parse(req.responseText)\n               if (results.length == 0)\n                    NSB.MsgBox(\"There are no customers matching that state.\")\n               else {\n                    let message = \"\"\n                         for (i = 0; i <= results.length - 1; i++) {\n                              message = message + results[i][1] + \"\\n\"\n                         txtSelect.valie = message\n                         }\n                    }\n               }else \n                    NSB.MsgBox(\"There was an error.\")\n          }\n}\n\n",
  "setFocusID": "",
  "style": "",
  "theme": "",
  "top": "0",
  "width": 320,
  "_functions": [
    {
      "!type": "Form",
      "_uuid": "bfb63a85e77d4e459fcb56b485181dc0",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "customerSelect.onshow",
      "location": [
        6,
        7
      ],
      "script": "",
      "signature": "customerSelect.onshow()"
    },
    {
      "!type": "Form",
      "_uuid": "32d007ea6b704edd83ffd7392ef80caf",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "drpSelect.onclick",
      "location": [
        32,
        33
      ],
      "script": "",
      "signature": "drpSelect.onclick(s)"
    }
  ]
}