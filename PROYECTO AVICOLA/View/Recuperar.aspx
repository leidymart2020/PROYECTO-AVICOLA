<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Recuperar.aspx.cs" Inherits="View_Recuperar" %>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>LOGIN</title>

    <!-- Bootstrap -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
      <link href="css/Custom-Cs.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      
    <![endif]-->
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
   
         <!--Panel start-->
             


               <table class="nav-justified">
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>
                           <br />
                           <br />
                       </td>
                       <td>
        <div class="form-gap"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <h3><i class="fa fa-lock fa-4x"></i></h3>
                                <h2 class="text-center">Recuperar Contraseña</h2>
                             
                                <div class="panel-body">

                                    <form id="register-form" role="form" autocomplete="off" class="form" method="post">

                                        <div class="form-group">
                                                 <div class="input-group">
                                                 <span class="input-group-addon"><i class="glyphicon glyphicon-user color-blue"></i></span>
                                                     <asp:Label ID="L_Contraseña" runat="server" Text="Digite su nueva contraseña:"></asp:Label>
                                                <asp:TextBox ID="TB_Contraseña" runat="server" CssClass="form-control" placeholder="Digite su nueva contraseña"></asp:TextBox>
                                                <!--<input id="email" name="email" placeholder="email address" class="form-control" type="email">-->
                                            </div>
                                         </div>
                                        <div class="form-group">
                                                 <div class="input-group">
                                                 <span class="input-group-addon"><i class="glyphicon glyphicon-user color-blue"></i></span>
                                                     <asp:Label ID="L_Repetir" runat="server" Text="Repita su nueva contraseña"></asp:Label>
                                                <asp:TextBox ID="TB_Repetir" runat="server" CssClass="form-control" placeholder="Confirme su nueva contraseña"></asp:TextBox>
                                                     <br />
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare ="TB_Contraseña" ControlToValidate="TB_Repetir" ErrorMessage="CompareValidator"></asp:CompareValidator>
                                           </div>
                                         </div>     
                                                     
                                                <!--<input id="email" name="email" placeholder="email address" class="form-control" type="email">-->
                                            

                                        <div class="form-group">
                                            <asp:Button ID="B_Cambiar" runat="server" Text="Cambiar Contraseña" class="btn btn-lg btn-dark btn-block" OnClick="B_Cambiar_Click" />
                                             <!--<input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Restablecer Contraseña" type="submit">-->
                                            <br />
                                             <br />
                                             <br />
                                          
                                        </div>

                                        <input type="hidden" class="hide" name="token" id="token" value="">
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div></td>
                       <td>
                           &nbsp;</td>
                       <td>
                           <br />
                           <br />
                           <br />
                           <br />
                           <br />
                           <br />
                           <br />
                           <br />
                           <br />
                           <br />
                           <br />
                           <br />
                           <br />
                           </td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
        </table>
             


               <!--Panel end-->
         

        </form> 

