<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrador/AdminMaster.master" AutoEventWireup="true" CodeFile="~/Controller/Empleado/Empleado.aspx.cs" Inherits="View_Empleado_Empleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Empleado</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    
      </ul>
    <ul class="nav navbar-nav navbar-right">
     
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Cerrar</a></li>
    </ul>
  </div>
</nav>
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
                <asp:Label ID="L_Propietario" runat="server" CssClass="col-md-2 control-label" Text="Apellido"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Apellido" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorPropietario" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Apellido"></asp:RequiredFieldValidator>
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
                <asp:Label ID="L_NumGalpones" runat="server" CssClass="col-md-2 control-label" Text="Correo"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Correo" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Correo"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Nombre Usuario"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Usuario" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Usuario"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Contraseña"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Contraseña" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Contraseña"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Rol"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Rol" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Rol"></asp:RequiredFieldValidator>
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

    <div >

    </div>
    <div >
        <h2 class="text-center">Empleados
    </h2>
    </div>
    <div >

        <asp:GridView ID="GV_Empleados" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

    </div>
</asp:Content>


