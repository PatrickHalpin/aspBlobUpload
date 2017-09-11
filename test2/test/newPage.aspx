<%@ Page Language="C#" Inherits="test.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Your Info</title>
</head>
<body>
        <!--get users info from query and display it on the page-->

		<%
        string name = Request["name"]; 
        string address = Request[address"];
        string county = Request["county"];
		string country = Request["country"];
        string dob = Request["dob"];
		string number = Request["number"];
		%>
		
		<p>Your Details:
			<br> 
        Name: <%= name %> 
			<br> 
        Address: <%= address %> 
            <br> 
        County: <%= county %> 
            <br> 
        Country: <%= country %> 
            <br> 
        Date Of Birth: <%= dob %> 	
			<br> 
        Number: <%= number %> 
			<br> 
		</p>
		
       
</body>
</html>