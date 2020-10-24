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
            
              
            <div class="form-group-right">
                <asp:Label ID="L_Nombre" runat="server" CssClass="col-md-2 control-label" Text="Nombre del Galpon:"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Nombre" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Nombre" InitialValue="VG_Insertar" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="L_Empleado" runat="server" CssClass="col-md-2 control-label" Text="Empleado"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Empleado" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpleado" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Empleado" InitialValue="VG_Insertar" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group-right">
                <asp:Label ID="L_Direccion" runat="server" CssClass="col-md-2 control-label" Text="Direccion"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Direccion" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorDireccion" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Direccion" InitialValue="VG_Insertar" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="L_Telefono" runat="server" CssClass="col-md-2 control-label" Text="Telefono"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_Telefono" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorTelefono" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_Telefono" InitialValue="VG_Insertar" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  
                </div>
               </div> 
                
             <div class="form-group-right">
                <asp:Label ID="L_NumPnedoras" runat="server" CssClass="col-md-2 control-label" Text="Numero de Ponedoras"></asp:Label>
                 <div class="col-md-3">
                <asp:TextBox ID="TB_NumPonedoras" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorNumPonedoras" CssClass="alert-danger" runat ="server" ErrorMessage="Este campo es requerido" ControlToValidate="TB_NumPonedoras" InitialValue="VG_Insertar" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

            </div>
            
            <div class="form-group">
                 <div class="col-md-3"> </div>
                 <div class="col-xs-12 col-md-3">

                   <asp:Button ID="B_Guardar" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="B_Guardar_Click" ValidationGroup="VG_Insertar"/>&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="B_Cerrar" runat="server" Text="Cerrar" CssClass="btn btn-default" OnClick="B_Cerrar_Click"/>
                   </div>  
                 </div> 
             </div>


                   
                    <div class ="col-md-8 col-md-offset-2">
                    <table class="nav-center">
                        <tr>
                            <td style="width: 45px">&nbsp;</td>
                            <td style="width: 573px">&nbsp;</td>
                            <td style="width: 749px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 45px">&nbsp;</td>
                            <td style="width: 573px">&nbsp;</td>
                            <td style="width: 749px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 45px">&nbsp;</td>
                            <td style="width: 573px">&nbsp;&nbsp;&nbsp;
                             
                                <asp:GridView ID="GV_Galpones" CssClass="table table-bordered table-hover table-responsive"  runat="server" AutoGenerateColumns="False" DataSourceID="ODS_Galpones" HorizontalAlign="Center" Width="601px" AllowPaging="True" DataKeyNames="Id" style="margin-right: 4px" OnSelectedIndexChanged="GV_Galpones_SelectedIndexChanged">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" HeaderText="Seleccionar Galpon" SelectText="Ir a...." />
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                        <asp:BoundField DataField="Empleado" HeaderText="Empleado" SortExpression="Empleado" />
                                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                        <asp:BoundField DataField="Num_ponedoras" HeaderText="Num_ponedoras" SortExpression="Num_ponedoras" />
                                        <asp:CommandField ButtonType="Button" HeaderText="Eliminar Galpon" ControlStyle-BackColor="Red" ControlStyle-ForeColor="White" ControlStyle-BorderStyle="Solid" ShowDeleteButton  ="True" >
<ControlStyle BackColor="Red" BorderStyle="Solid" ForeColor="White"></ControlStyle>
                                        </asp:CommandField>
                                        <asp:CommandField ButtonType="Button" HeaderText="Actualizar Galpon" ControlStyle-BackColor="SteelBlue" ControlStyle-ForeColor="White" ShowEditButton="True" >
<ControlStyle BackColor="SteelBlue" ForeColor="White"></ControlStyle>
                                        </asp:CommandField>
                                    </Columns>
                                    <HeaderStyle HorizontalAlign="Center" CssClass="table table-dark"/>
                                </asp:GridView>
                                <asp:ObjectDataSource ID="ODS_Galpones" runat="server" SelectMethod="obtenerGalpones" TypeName="DaoGalpones" DataObjectTypeName="EGalpones" DeleteMethod="eliminarGalpones" UpdateMethod="actualizarGalpones"></asp:ObjectDataSource>
                            </td>
                            <td style="width: 749px">&nbsp;</td>
                            <td>
                            
                                &nbsp;</td>
                        </tr>
                       
                        <tr>
                            <td style="width: 45px">&nbsp;</td>
                            <td style="width: 573px">&nbsp;</td>
                            <td style="width: 749px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 45px">&nbsp;</td>
                            <td style="width: 573px">&nbsp;</td>
                            <td style="width: 749px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 45px">&nbsp;</td>
                            <td style="width: 573px">&nbsp;</td>
                            <td style="width: 749px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 45px">&nbsp;</td>
                            <td style="width: 573px">&nbsp;</td>
                            <td style="width: 749px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 45px">&nbsp;</td>
                            <td style="width: 573px">&nbsp;</td>
                            <td style="width: 749px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                  </div> 
                     
                
               
                
               </div>         

          
     
   
   
    <!-- /.row -->

<!-- you need to include the shieldui css and js assets in order for the grids to work -->




       
</asp:Content>

