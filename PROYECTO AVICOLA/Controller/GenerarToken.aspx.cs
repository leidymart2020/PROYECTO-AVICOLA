using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_GenerarToken : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_Recuperar_Click(object sender, EventArgs e)
    {
        EUsuario usuario = new DaoUser().getUserByUserName(TB_UserName.Text);

        if (usuario != null)
        {
            EToken validarToken = new DaoSeguridad().getTokenByUser(usuario.Id);

            

            EToken token = new EToken();
            token.Creado = DateTime.Now;
            token.UserId = usuario.Id;
            token.Vigencia = DateTime.Now.AddHours(2);


            token.TokenGenerado = encriptar(JsonConvert.SerializeObject(token));
            new DaoSeguridad().insertarToken(token);

            Correo correo = new Correo();

            String mensaje = "su link de acceso es: " + "http://localhost:49988/View/Recuperar.aspx?" + token.TokenGenerado;
            correo.enviarCorreo("leidyvillamizar81@gmail.com", token.TokenGenerado, mensaje);

            L_Mensaje.Text = "Su nueva contraseña ha sido enviada a su correo";
            
        }

        else
        {
            L_Mensaje.Text = "El usuario digitado no existe";
        }

    }

    private string encriptar(string input)
    {
        SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();

        byte[] inputBytes = Encoding.UTF8.GetBytes(input);
        byte[] hashedBytes = provider.ComputeHash(inputBytes);

        StringBuilder output = new StringBuilder();

        for (int i = 0; i < hashedBytes.Length; i++)
            output.Append(hashedBytes[i].ToString("x2").ToLower());

        return output.ToString();
    }
}
