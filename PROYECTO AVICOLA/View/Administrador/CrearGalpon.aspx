<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrador/AdminMaster.master" AutoEventWireup="true" CodeFile="~/Controller/Administrador/CrearGalpon.aspx.cs" Inherits="View_Administrador_CrearSector" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
       
      <a class="navbar-brand" href="Administrador.aspx">Administrador</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
     
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Cerrar</a></li>
    </ul>
  </div>
</nav> 

    <div class ="container">
        <div class="form-horizontal">
            <h2>Crear Galpon</h2>
            <hr />
            
            
            <div class="form-group">
                <asp:Label ID="L_Nombre" runat="server" CssClass="col-md-2 control-label" Text="Nombre"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Nombre" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Nombre"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="L_Propietario" runat="server" CssClass="col-md-2 control-label" Text="Propietario"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Propietario" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorPropietario" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Propietario"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="L_Direccion" runat="server" CssClass="col-md-2 control-label" Text="Direccion"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Direccion" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Direccion"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="L_Telefono" runat="server" CssClass="col-md-2 control-label" Text="Telefono"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Telefono" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Telefono"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="L_NumGalpones" runat="server" CssClass="col-md-2 control-label" Text="Cantidad Ponedoras"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_NGalpones" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_NGalpones"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="form-group">
               <div class="col-md-3"></div>
                <div class="col-xs-12 col-md-4">
                 
                     <asp:Button ID="B_Guardar" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="B_Guardar_Click"/>
                  
                      <asp:Button ID="B_Cerrar" runat="server" Text="Cerrar" CssClass="btn btn-default" OnClick="B_Cerrar_Click"/>
                
               </div>         

        </div>
   </div>
 



       
</asp:Content>

