<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="webproject2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"/>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</head>
<body>
    
    <div class="container-fluid bg">

        
        <div class="row">

            <div class="col-md-4 col-sm-4 col-xs-12">
               
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">

                
                 <form class="form-conatiner" id="form1" runat="server">
        
         


           
  <div class="form-group">
      
      <h1>Login Form</h1>
    <label for="exampleInputEmail1">Username</label>
      <asp:TextBox ID="TextBox1" class="form-control" onkeyup="count()" placeholder="username" runat="server" ControlToValidate="TextBox1"></asp:TextBox><asp:Label ID="Label2" runat="server" Text=""></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username Cannot Be Blank" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox1"></asp:CustomValidator>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
      <asp:TextBox ID="TextBox2" class="form-control" onkeyup="count2()" placeholder="password" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox><asp:Label ID="Label3" runat="server" Text=""></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Cannot Be Blank" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator><asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator2_ServerValidate" ControlToValidate="TextBox2"></asp:CustomValidator>
  </div>
 
  <div class="checkbox">
    <label>
     <asp:CheckBox ID="CheckBox1" runat="server" /> keep Me Logged In
    </label>
  </div>
  <asp:Button ID="Button1" class="btn btn-danger btn-block" runat="server" Text="Button" OnClick="Button1_Click1" />
                     <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                     <h4>Does Not Have An Account?<br />Create Account For Free</h4>

                    <a href="chgchch">CLICK HERE</a>
                     <script type="text/javascript">
                         document.getElementById("TextBox1").focus();

                         function count() {
                             document.getElementById("Label2").innerHTML=
                             document.getElementById("TextBox1").value.length + " characters";

                             
                         }
                         function count2() {
                             document.getElementById("Label3").innerHTML =
                                 document.getElementById("TextBox2").value.length + " characters";
                         }
        
    </script>
    </form>


                </div>
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
    </div>
   
</body>
</html>
