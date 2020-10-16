using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;

/// <summary>
/// Descripción breve de DaoSector
/// </summary>
public class DaoGalpones
{
    public void insertarSector(EGalpones galpones)
    {
        DataTable Sector = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Conexion2"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("sectores.f_insertar_galpon", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = galpones.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_propietario", NpgsqlDbType.Text).Value = galpones.Propietario;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Text).Value = galpones.Direccion;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Integer).Value = galpones.Telefono;
            
            conection.Open();
            dataAdapter.Fill(Sector);
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
    }



    public DaoGalpones()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}