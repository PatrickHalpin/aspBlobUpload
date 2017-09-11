<%@ Page Language="C#" Inherits="test.Default" %>
<!DOCTYPE html>
<html>
<link href="style.css?ts=<?=time()?>&quot" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<head runat="server">
	<title>Home</title>
</head>
<body>

   	<form id="form1" runat="server">
   
      <div>
         <h3 class="header" > File Upload:</h3>
         <br />
				<asp:FileUpload ID="FileUpload1" runat="server" />
        <br /><br />
		        <asp:TextBox ID="name" runat="server" value="Name"/>
		<br /><br />
		        <asp:TextBox ID="address" runat="server" value="Address"/>
        <br /><br />
				<asp:TextBox ID="county" runat="server" value="County"/>
        <br /><br />
				<asp:TextBox ID="country" runat="server" value="Country"/>
        <br /><br />
				<asp:TextBox ID="dob" runat="server" value="DOB"/>
        <br /><br />
				<asp:TextBox ID="number" runat="server" value="Phone" />
        <br /><br />
                <asp:Button ID="btnsave" runat="server" onclick="respond"  Text="Save" style="width:85px" />
         <br /><br />
                <asp:Label ID="lblmessage" runat="server" />
      </div>
      
   </form>
</body>

</html>
