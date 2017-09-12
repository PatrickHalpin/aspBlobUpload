<%@ Page Language="C#" Inherits="test.Default" %>
<!DOCTYPE html>
<html>
<link href="style.css?ts=<?=time()?>&quot" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<head runat="server">
		<script type="text/javascript">
window.addEventListener('load',
function()
{
  //Renames upload button
  var inputs = document.querySelectorAll( '.inputfile' );
    Array.prototype.forEach.call( inputs, function( input )
    {
        var label    = input.nextElementSibling,
            labelVal = label.innerHTML;

        input.addEventListener( 'change', function( e )
        {
            var fileName = '';
            if( this.files && this.files.length > 1 )
                fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
            else
                fileName = e.target.value.split( '\\' ).pop();

            if( fileName )
                label.querySelector( 'span' ).innerHTML = fileName;
            else
                label.innerHTML = labelVal;
        });

    });

  }, false);

</script>
	<title>Home</title>
</head>
<body>
	<div class="container-fluid">
    <div class="row">

      <div class="col-xs-12 col-md-12 top">
     <h1>Image Upload</h1>
	</div>
    </div>
    </div>	
		
    <div class="container-fluid">
    <div class="row">
	<div class="col-xs-12 col-md-4">
	</div>
    <div class="col-xs-12 col-md-4 mid">
		<form id="form1" runat="server">
        <asp:FileUpload ID="file" class="inputfile" runat="server" />
		<label for="file"><span>Choose a file</span></label>
        <br>
            <span class="text">Name</span>
       <br>
		        <asp:TextBox ID="name" runat="server"  value="" class="input"/>
    	<br>
            <span class="text">Address</span>
       <br>
		        <asp:TextBox ID="address" runat="server" value="" class="input" />
       <br>
            <span class="text">County</span>
       <br>
				<asp:TextBox ID="county" runat="server" value="" class="input" />
       <br>
            <span class="text">Country</span>
       <br>
				<asp:TextBox ID="country" runat="server" value="" class="input" />
        <br>
            <span class="text">Date Of Birth</span>
		<br>
				<asp:TextBox ID="dob" runat="server" value="" class="input" />
        <br>
            <span class="text">Phone Number</span> 
		<br>
				<asp:TextBox ID="number" runat="server" value="" class="input" />
        <br>
                <asp:Button ID="btnsave" runat="server" onclick="respond" class="link" Text="Upload"/>
		<br>
            
        </form>
		</div>
		<div class="col-xs-12 col-md-4">
        </div>	
        </div>  
        </div>

</body>

</html>
