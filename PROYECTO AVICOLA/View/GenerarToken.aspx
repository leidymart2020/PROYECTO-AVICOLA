<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/GenerarToken.aspx.cs" Inherits="View_GenerarToken" %>

<!DOCTYPE html>

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
              width: auto;
              height: 36px;
              position: absolute;
              top: 742px;
              bottom: 9px;
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
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Login.aspx"><span>
                            <img alt="Logo" src="imagenes/tev.jpeg" height="30" /></span>GRANJA TEV S.A.S</a>
                    </div>
                </div>
            </div>
        </div>


          
         <!--Panel start-->
             


               <table class="nav-justified">
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>
        <div class="form-gap"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <h3><i class="fa fa-lock fa-4x"></i></h3>
                                <h2 class="text-center">Olvidaste tu contraseña?</h2>
                                <p>Puede restablecer su contraseña aqui.</p>
                                <div class="panel-body">

                                    <form id="register-form" role="form" autocomplete="off" class="form" method="post">

                                        <div class="form-group">
                                                 <div class="input-group">
                                                 <span class="input-group-addon"><i class="glyphicon glyphicon-user color-blue"></i></span>
                                                <asp:TextBox ID="TB_UserName" runat="server" CssClass="form-control" AutoCompleteType="email" placeholder="UserName"></asp:TextBox>
                                                <!--<input id="email" name="email" placeholder="email address" class="form-control" type="email">-->
                                            </div>
                                         </div>

                                        <div class="form-group">
                                            <asp:Button ID="B_Recuperar" runat="server" Text="Restablecer Contraseña" class="btn btn-lg btn-primary btn-block" OnClick="B_Recuperar_Click" />
                                             <!--<input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Restablecer Contraseña" type="submit">-->
                                        </div>

                                        <input type="hidden" class="hide" name="token" id="token" value="">
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div></td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
        </table>
             


               <!--Panel end-->
         

        </form> 
          
        
      <!--Footer start-->

         <br />

       <footer class="auto-style1">
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