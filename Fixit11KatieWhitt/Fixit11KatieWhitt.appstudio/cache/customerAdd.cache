
customerAdd.onshow=function(){
  txtAdd_contents.style.height = "100px"
  query = "SELECT * FROM customer"
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
  
  if (req.status == 200) {
    console.log(results)
    if (results.length == 0)
      NSB.MsgBox("There are no customers in the database.")
    else {
      let message = ''
      for (i = 0; i <= results.length - 1; i++) {
        message = message + results[i][1] + "\n"
        txtAdd.value = message
      }
    }
  } else
      NSB.MsgBox("There was an error.")
}



btnAdd.onclick=function(){
  query = `INSERT INTO customer (name, street, city, state, zipcode) VALUES ("Jesse Antiques", "1113 F St", "Omaha", "NE", "68178")`
  //alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
  
  if (req.status == 200) {
    console.log(results)
    if (req.responseText == 500) {
      NSB.MsgBox("The customer was successfully added!")
    } else {
        NSB.MsgBox("There was an error when adding the customer.")
      }
  } else
      NSB.MsgBox("There was an error.")
     
  
  query = "SELECT * FROM customer"
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
  
  if (req.status == 200) {
    console.log(results)
    if (results.length == 0)
      NSB.MsgBox("There are no customers in the database.")
    else {
      let message = ""
      for (i = 0; i <= results.length - 1; i++) {
        message = message + results[i][1] + "\n"
        txtAdd.value = message
      }
    }
  } else
      NSB.MsgBox("There was an error.")
}

