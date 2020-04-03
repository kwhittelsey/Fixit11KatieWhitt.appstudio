var allData = ""
var query = ""
var req = ""
var results = ""

customerSelect.onshow=function(){
  txtSelect_contents.style.height = "100px"
  query = "SELECT * FROM customer"
  //alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
  
     if (req.status == 200) {
        results = JSON.parse(req.responseText)
        console.log(results)
        allData = results
        
         if (results.length == 0)
             NSB.MsgBox("There are no customers in this table.")
         else {       
             let message = ""
             for (i = 0; i <= results.length - 1; i++)
                 message = message + results[i][0] + "\n"
             txtStates.value = message
           }
         
       } else
             NSB.MsgBox("There was an error.")
}



drpSelect.onclick=function(s){
  var companyName = ""
  var state = ""
  var resultCompany = ""
  
  if (typeof(s) == "object") {
     return
}else{
     drpSelect.value = s
     companyName = drpSelect.selection
     for (i = 0; i <= allData.length - 1; i++) {
          if (companyName == allData[i][1]) {
               state = allData[i][4]
               break
          }
     }
     
     for (i = 0; i <= allData.length - 1; i++) {
          if (state == allData[i][4])
               resultCompany.push(allData[i][1])
          }
          
          query = 'SELECT name FROM customer WHERE state = "${state}"'
          req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
          
          if (req.status == 200) {
               results = JSON.parse(req.responseText)
               if (results.length == 0)
                    NSB.MsgBox("There are no customers matching that state.")
               else {
                    let message = ""
                         for (i = 0; i <= results.length - 1; i++) {
                              message = message + results[i][1] + "\n"
                         txtSelect.value = message
                         }
                    }
               }else 
                    NSB.MsgBox("There was an error.")
          }
}



btnFormDelete.onclick=function(){
  ChangeForm(customerDelete)
}
customerDelete.onshow=function(){
  txtDelete_contents.style.height = "100px"
  query = "SELECT * FROM customer"
  //alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
  
     if (req.status == 200) {
        console.log(results)
        
         if (results.length == 0)
             NSB.MsgBox("There are no customers in this table.")
         else {       
             for (i = 0; i <= results.length - 1; i++)
                 drpDelete.addItem(results[i][1])
           }
      } else
           NSB.MsgBox("There was an error.")
}



drpDelete.onclick=function(){
  if (typeof(s) == "object") {
     return
}else{
     drpDelete.value = s
     companyName = drpDelete.selection
          
          query = "DELETE FROM customer WHERE name = "${companyName}""
          req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
          
          if (req.status == 200) {
               results = JSON.parse(req.responseText)
               if (results.length == 500)
                    NSB.MsgBox("You successfully deleted the company from the database!")
               else {
                    NSB.MsgBox("There was an error deleting the company from the database.")
                    }
               }else 
                    NSB.MsgBox("There was an error.")
          }
          
            query = "SELECT * FROM customer"
            //alert(query)
            req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
            
               if (req.status == 200) {
                  results = JSON.parse(req.responseText)
                  console.log(results)
                  allData = results
                  
                   if (results.length == 0)
                       NSB.MsgBox("There are no customers in this table.")
                   else {       
                       let message = ""
                       for (i = 0; i <= results.length - 1; i++)
                           message = message + results[i][0] + "\n"
                       txtDelete.value = message
                     }
          }
}



btnFormAdd.onclick=function(){
  ChangeForm(customerAdd)
}
customerAdd.onshow=function(){
  txtAdd_contents.style.height = "100px"
  query = "SELECT * FROM customer"
  //alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
  
     if (req.status == 200) {
        results = JSON.parse(req.responseText)
        console.log(results)
        allData = results
        
    if (results.length == 0)
        NSB.MsgBox("There are no customers in this table.")
    else {       
        let message = ""
        for (i = 0; i <= results.length - 1; i++)
            message = message + results[i][0] + "\n"
        txtAdd.value = message
      }
    
  } else
        NSB.MsgBox("There was an error.")
}



btnAdd.onclick=function(){
  query = "INSERT INTO customer (name, street, city, state, zipcode) VLAUES ("Jesse Antiques", "1113 F St", "Omaha", "NE", "68178")"
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)

     if (req.status == 200) {
          results = JSON.parse(req.responseText)
          if (results.length == 500)
               NSB.MsgBox("You successfully added the client from the database!")
          else {
               NSB.MsgBox("There was an error deleting the company from the database.")
               }
          }else 
               NSB.MsgBox("There was an error.")
          }
          
            query = "SELECT * FROM customer"
            //alert(query)
            req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
            
               if (req.status == 200) {
                  results = JSON.parse(req.responseText)
                  console.log(results)
                  allData = results
                  
                   if (results.length == 0)
                       NSB.MsgBox("There are no customers in this table.")
                   else {       
                       let message = ""
                       for (i = 0; i <= results.length - 1; i++)
                           message = message + results[i][0] + "\n"
                       txtAdd.value = message
                     }
               }
     } else
          NSB.MsgBox("There was an error.")
}



btnFormUpdate.onclick=function(){
    ChangeForm(customerAdd)
}
customerUpdate.onshow=function(){
  txtUodate_contents.style.height = "100px"
  query = "SELECT * FROM customer"
  //alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
  
       if (req.status == 200) {
        results = JSON.parse(req.responseText)
        console.log(results)
        
        for (i = 0; i <= results.length - 1; i++)
          txtUpdate.addItem(allData[i])
          
     }else {
          NSB.MsgBox("There was an error.")
     }
}

btnUpdate.onclick=function(){
  let newName = inptUpdate.value
  let oldName = drpUpdate.value
  
  let found = false
  for (i = 0; i <= allData.length - 1; i++) {
       if (oldnmae == allData[i]) {
       found = true
       break
     }
  }
  if (found == false)
     NSB.MsgBox("That name is not in the database.")
else if (found == true) {
     query = "UPDATE customer SET name = " + '"' + newName + '"' + " WHERE name = " + '"' + oldName + '"'
     req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)

     if (req.status == 200)
       if (req.responseTExt == 500) {
          NSB.MsgBox("You successfully updated the name!")
          inptUpdate.value = ""
          drpUpdate.value = ""
     } else 
          NSB.MsgBox("There was a problem updating the name.")
     } else
          NSBMsgBox("There was an error.")
     }
}