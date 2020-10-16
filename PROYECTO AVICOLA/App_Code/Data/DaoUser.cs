using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DaoUser
/// </summary>
public class DaoUser
{
    public DaoUser()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public DataTable login (EUsuario eUsuario)
    {
        DataTable Usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_login", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_user_name", NpgsqlDbType.Text).Value = eUsuario.UserName;
            dataAdapter.SelectCommand.Parameters.Add("_clave", NpgsqlDbType.Text).Value = eUsuario.Clave;

            conection.Open();
            dataAdapter.Fill(Usuario);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        //usuarios = usuarios.AsEnumerable().Select(m => new EPelu()
        //{
        //	RolNombre = m.Field<string>("rol_nombre"),
        //	RolId = m.Field<int>("rol_id")
        //}).ToList();
        return Usuario;

    }

    //////login2//////
    public EUsuario login2(EUsuario user)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.UserName.Equals(user.UserName) && x.Clave.Equals(user.Clave)).FirstOrDefault();
        }
    }
}