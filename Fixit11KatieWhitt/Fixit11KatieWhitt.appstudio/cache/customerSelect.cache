
let query = ""
let req = ""
let results = ""
let allData = []

customerSelect.onshow=function(){
  txtSelect_contents.style.height = "100px"
  query = "SELECT * FROM customer"
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
  
  if (req.status == 200) {
    results = JSON.parse(req.responseText)
    console.log(results)
    allData = results
  
    if (results.length == 0)
      NSB.MsgBox("There are no customers.")
    else {
      let message = ""
        for (i = 0; i <= results.length - 1; i++) {
      drpSelect.addItem(results[i][1]) }
    }
  } else
      NSB.MsgBox("There was an error.")
}



drpSelect.onclick=function(s){
  let companyName = ""
  let state = ""
  let finalNames = []
  
  if (typeof (s) == 'object') {
    return
  } else {
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
          finalNames.push(allData[i][1])
      }
      
          query = `SELECT name FROM customer WHERE state = "${state}"`
          //alert(query)
          req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ksw80857&pass=VTEHome8-5!&database=ksw80857&query=" + query)
          
          if (req.status == 200) {
            console.log(results)
            if (results.length == 0)
              NSB.MsgBox("There are no customers in the database.")
            
            else {
              let message = ""
                for (i = 0; i <= results.length - 1; i++) {
                  message = message + results[i][0] + "\n"
              txtSelect.value = message }
            }
          } else
              NSB.MsgBox("There was an error")
    }
}

