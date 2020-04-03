
customerDelete.onshow=function(){
  txtDelete_contents.style.height = "100px"
  query = "SELECT * FROM customer"
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
  
  if (req.status == 200) {
    console.log(results)
    if (results.length == 0)
      NSB.MsgBox("There are no customers.")
    else {      
        for (i = 0; i <= results.length - 1; i++) {
          drpDelete.addItem(results[i][1]) 
        }
    }
  } else
      NSB.MsgBox("There was an error.")
}

drpDelete.onclick=function(s){
   if (typeof (s) == 'object') {
    return
  } else {
      drpDelete.value = s
      companyName = drpDelete.selection
      console.log(companyName)
  
      query = `DELETE FROM customer WHERE name = "${companyName}"`
      //alert(query)
      req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
      
           if (req.status == 200) {
             console.log(results)
             if (req.responseText == 500) {
               NSB.MsgBox("The customer was successfully deleted!")
               }
               else {
                 NSB.MsgBox("There was an error when deleting the customer.")
               }
             } else
                 NSB.MsgBox("There was an error.")
           }
      
      
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
               txtDelete.value = message
             }
          }
     }
}

