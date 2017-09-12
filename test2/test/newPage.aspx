<%@ Page Language="C#" Inherits="test.Default" %>
<!DOCTYPE html>
<html>
<link href="/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">	
<head runat="server">
    <title>Your Info</title>
</head>
<body>
      
		
    
  <div class="row">
    <div class="col-xs-12 col-md-12 top">
            <img class="img" src="https://phblobtest.blob.core.windows.net/mycontainer/<%= Request["file"]%>" >

    </div>
  </div>
    <div class="row">
      <div class="col-xs-12 col-md-4">
      </div>
      <div class="col-xs-12 col-md-4 mid head">
	      <h2>Your Details</h2>
	      <h3>Name</h3>
	      <h4><%= Request["name"]  %></h4>
	      <h3>Address</h3>
	      <h4><%= Request["address"]  %></h4>
	      <h3>County</h3>
	      <h4><%= Request["county"]  %></h4>
	      <h3>Country</h3>
	      <h4><%= Request["country"]  %></h4>
	      <h3>Phone Number</h3>
	      <h4><%= Request["number"]  %></h4>
	      <h3>Date Of Birth</h3>
	      <h4><%= Request["dob"]  %></h4>
				<br>
	      <a class="link" href="https://phblobtest.blob.core.windows.net/mycontainer/<%= Request["file"]%>">Image Download</a>
	</div>
    <div class="col-xs-12 col-md-4">
    </div>
  </div>
		
       
</body>
</html>