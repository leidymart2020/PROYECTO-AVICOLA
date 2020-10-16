using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Administrador_CrearSector : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_Guardar_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        EGalpones galpones = new EGalpones();

        galpones.Nombre = TB_Nombre.Text;
        galpones.Propietario = TB_Propietario.Text;
        galpones.Direccion = TB_Direccion.Text;
        galpones.Telefono = int.Parse(TB_Telefono.Text); 
        

    }

    protected void B_Cerrar_Click(object sender, EventArgs e)
    {

    }
}