<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Login.aspx.cs" Inherits="View_Login" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>LOGIN</title>

    <!-- Bootstrap -->

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
      <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
      <style type="text/css">
          .auto-style1 {
              width: 235px;
          }
          .auto-style3 {
              position: relative;
              min-height: 1px;
              float: left;
              width: 25%;
              left: 1px;
              top: 2px;
              margin-left: 0px;
              padding-left: 15px;
              padding-right: 15px;
          }
          .auto-style4 {
              width: 150px
          }
          .auto-style5 {
              position: relative;
              min-height: 1px;
              float: left;
              width: 79%;
              left: 0px;
              top: 0px;
              padding-left: 15px;
              padding-right: 15px;
          }
          .auto-style6 {
              width: 150px;
              text-align: right;
          }
          .auto-style7 {
              width: auto;
              height: 46px;
              position: absolute;
              top: 710px;
              bottom: 6px;
              left: 0;
              right: 0;
              margin: auto;
          }
      </style>
  </head>    
<body>
    <form id="form1" runat="server">
        <div>
              <div class="navbar navbar-default navbar-fixed-top" role="navigation">
       <div class ="container">
           <div class ="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target =".navbar-collapse">
                   <span class="sr-only">Toggle navigation</span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                </button>
                 <a class="navbar-brand" href="Login.aspx"> <span> <img alt="Logo" src="imagenes/tev.jpeg" height="30" /></span>GRANJA TEV S.A.S</a>
           </div>
           <div class ="navbar-collapse collapse">
               <ul class ="nav navbar-nav navbar-right">
                   <li class="active"><a href="PaginaPrincipal.aspx">Home</a></li>
                   <li><a href="#">About</a></li>
                   <li><a href="#">Contatenos...</a></li>
                                    
               </ul>
             
                
           </div>
       </div>
    </div>
       </div> 

         <table class="nav-justified">
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="text-center" colspan="4"><h2>Iniciar Sesion</h2></td>
             </tr>
             <tr>
                 <td colspan="3">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td colspan="3">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;&nbsp;</td>
                 <td class="auto-style1"> <label class="auto-style3">Username</label></td>
                 <td class="auto-style4">
                     <asp:TextBox ID="TB_UserName" runat="server" CssClass="form-horizontal" placeholder="UserName"></asp:TextBox>
                 </td>
                 <td><asp:RequiredFieldValidator ID="RFV_UserName" runat="server" ErrorMessage="*" SetFocusOnError="True" ControlToValidate="TB_UserName" ForeColor="Red"></asp:RequiredFieldValidator></td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1"> <label class="auto-style5" >Contraseña</label></td>
                 <td class="auto-style4"><asp:TextBox ID="TB_Clave" runat="server" CssClass="form-horizontal"   placeholder="Contraseña" TextMode="Password"></asp:TextBox></td>
                 <td>
                     <asp:RequiredFieldValidator ID="RFV_Contraseña" runat="server" ErrorMessage="*" SetFocusOnError="True" ControlToValidate="TB_Clave" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="text-center" colspan="2">
                     <asp:Label ID="L_Mensaje" runat="server"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="text-center" colspan="2">
                     <asp:LinkButton ID="LB_RecuperarContrasena" runat="server" OnClick="LB_RecuperarContrasena_Click">Recuperar Contraseña</asp:LinkButton>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style6"><asp:Button ID="B_Login" runat="server" Text="Registrar" Class="btn btn-success" OnClick="B_Login_Click" /></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
        </table>

        </form> 
          
        
      <!--Footer start-->

         <br />

       <footer class="auto-style7">
       <div class="container">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy;2020 Granja TEV S.A.S.com &middot;<a href="PaginaInicial.aspx">Home</a>&middot; <a href="#">About</a>&middot; <a href="#">Contactenos</a>&middot; <a href="#">Productos</a></p>

       </div>
      </footer>
      <!--Footer end-->
 
     <!--responsive start-->
 
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
       <!-- Include all compiled plugins (below), or include individual files as needed -->
       <script src="js/bootstrap.min.js"></script>

      <!--responsive end-->  
</body>
</html>
