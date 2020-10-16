using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void B_Login_Click(object sender, EventArgs e)
    {
        
        EUsuario user = new EUsuario();
        DaoUser datos = new DaoUser();
        user.UserName = TB_UserName.Text.ToString();
        user.Clave = TB_Clave.Text.ToString();
        user = new DaoUser ().login2(user);


        if (user != null)
        {
            
            //Response.Redirect("~/View/Administrador/Admin.aspx");
            switch (user.RolId)
            {
                case 1:
                    Response.Redirect("~/View/Administrador/Administrador.aspx");
                    break;
                case 2:
                    Response.Redirect("~/View/Empleado/Empleado.aspx");
                    break;
                
            }

        }
        else
        {

            ((Label)L_Mensaje.FindControl("L_Mensaje")).Text = "Usuario o Clave Incorrecta";
            Session["user"] = null;
        }





    }


    protected void LB_RecuperarContrasena_Click(object sender, EventArgs e)
    {

    }
}