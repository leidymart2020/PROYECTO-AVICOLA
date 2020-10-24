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

        try
        {

            EGalpones galpon = new EGalpones();
            galpon.Nombre = TB_Nombre.Text;
            galpon.Empleado = TB_Empleado.Text;
            galpon.Direccion = TB_Direccion.Text;
            galpon.Telefono = int.Parse(TB_Telefono.Text);
            galpon.Num_ponedoras = int.Parse(TB_NumPonedoras.Text);

            new DaoGalpones().insertarGalpones(galpon);

            Response.Redirect("CrearGalpon.aspx");
        }
        catch (Exception ex)
        {
            {
                return;
            }


        }
    }
        protected void B_Cerrar_Click(object sender, EventArgs e)
        {

        }


    protected void GV_Galpones_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("GalponUno.aspx");
    }
}
