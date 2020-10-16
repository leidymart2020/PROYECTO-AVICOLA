<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrador/AdminMaster.master" AutoEventWireup="true" CodeFile="~/Controller/Administrador/Administrador.aspx.cs" Inherits="View_Administrador_Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
       
      <a class="navbar-brand" href="#">Granja TEV S.A.S</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="CrearGalpon.aspx">CREAR GALPON</a></li>
      <li> <a href="Empleado.aspx"><span class="glyphicon glyphicon-user"></span>&nbsp REGISTRAR EMPLEADO</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-tag"></span>&nbsp Proveedores</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-briefcase"></span>&nbsp Clientes</a></li>
     <!-- <li><a href="#">Page 2</a></li>-->
    </ul>
    <ul class="nav navbar-nav navbar-right">
     
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Cerrar</a></li>
    </ul>
  </div>
</nav> 

    


     
    <!-- <div class="vertical-menu">  
        
  <p><a href="#" class="active" >
      <span class="glyphicon glyphicon-home"></span> &nbsp Home</a></p>
   <p> <a href="#"><span class="glyphicon glyphicon-user"></span> &nbsp Empleados</a></p>
    <p><a href="#"><span class="glyphicon glyphicon-tag"></span>&nbsp Proveedores</a></p>
    <p><a href="#"><span class="glyphicon glyphicon-briefcase"></span>&nbsp Clientes</a></p>
  <a href="#">Link 4</a>-->
      
<!-- Page Features -->
    <br />
         <br />
        
    <div class="row text-center">

      <div class="col-lg-3 col-md-6 mb-4">
      <div class="card h-100">
           <div class="vertical-menu">
         <p><a href="#" class="active" >
      <span class="glyphicon glyphicon-home"></span> &nbsp Home</a></p>
   <p> <a href="#"><span class="glyphicon glyphicon-user"></span> &nbsp Empleados</a></p>
    <p><a href="#"><span class="glyphicon glyphicon-tag"></span>&nbsp Proveedores</a></p>
    <p><a href="#"><span class="glyphicon glyphicon-briefcase"></span>&nbsp Clientes</a></p> 
        </div> 
      </div>
        </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/200x125" alt="">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">
                
               <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
               <div class="col-sm-8" style="background-color:lavenderblush;">.col-sm-8</div>
                <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
               <div class="col-sm-8" style="background-color:lavenderblush;">.col-sm-8</div>
                <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
               <div class="col-sm-8" style="background-color:lavenderblush;">.col-sm-8</div>
          </p>
          </div>
            &nbsp
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Find Out More!</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/200x125" alt="">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">

               <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
               <div class="col-sm-8" style="background-color:lavenderblush;">.col-sm-8</div>
                <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
                <div class="col-sm-8" style="background-color:lavenderblush;">.col-sm-8</div>
                <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
               <div class="col-sm-8" style="background-color:lavenderblush;">.col-sm-8</div>

            </p>
          </div>
            &nbsp
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Find Out More!</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/200x125" alt="">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">

                <div class="col-sm-4" style="background-color:lavender;"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                 <div class="col-sm-8" style="background-color:coral;"> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>   
               
                  
                <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
               <div class="col-sm-8" style="background-color:lavenderblush;">.col-sm-8</div>
                <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
               <div class="col-sm-8" style="background-color:lavenderblush;">.col-sm-8</div>

            </p>
          </div>
            &nbsp
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Find Out More!</a>
          </div>
        </div>
      </div>

    </div>
    <!-- /.row -->

 
  <!-- /.container -->
      
  </body>      

</asp:Content>

