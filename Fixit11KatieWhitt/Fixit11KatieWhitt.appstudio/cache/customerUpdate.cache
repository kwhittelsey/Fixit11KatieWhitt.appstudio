
customerUpdate.onshow=function(){
  txtUpdate_contents.style.height = "100px"
  query = "SELECT name FROM customer"
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
  
    if (req.status == 200) {
     allNames = JSON.parse(req.responseText)
     selUpdate.clear()
     for (i = 0; i <= allNames.length - 1; i++)
                 
     selUpdate.addItem(allNames[i])
    } else {
        NSB.MsgBox("There was an error.");
    }  
}

btnUpdate.onclick=function(){
    let newName = inptUpdate.value
    let oldName = selUpdate.value
  
  let found = false
  for (i = 0; i <= allNames.length - 1; i++) {
       if (oldName == allNames[i]) {
       found = true
       break
     }
  }
  
  if (found == false)
     NSB.MsgBox("That name is not in the database.")
else if (found == true) {
     query = "UPDATE customer SET name =" + '"' + newName + '"' + " WHERE name = " + '"' + oldName + '"'
     req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)

     if (req.status == 200)
       if (req.responseText == 500) {
          NSB.MsgBox("You successfully updated the name!")
          inptUpdate.value = ""
          selUpdate.value = ""
     } else 
          NSB.MsgBox("There was a problem updating the name.")
     } else
          NSBMsgBox("There was an error.")
     }
