using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Configuration;
using System.Data;
using System.Linq;

/// <summary>
/// Descripción breve de DaoSector
/// </summary>
public class DaoGalpones
{
    public List<EGalpones> obtenerGalpones()
    {
        using (var db = new Mapeo())
        {
            return (from uu in db.galpon


                    select new
                    {
                        uu,


                    }).ToList().Select(m => new EGalpones
                    {
                        Id = m.uu.Id,
                        Nombre = m.uu.Nombre,
                        Empleado = m.uu.Empleado,
                        Direccion = m.uu.Direccion,
                        Telefono = m.uu.Telefono,
                        Num_ponedoras = m.uu.Num_ponedoras



                    }).ToList();
        }



    }

    ///////////////////////////////actualizar////////////////////////////////////////////
    public void actualizarGalpones(EGalpones galpon)
    {
        using (var db = new Mapeo())
        {
            EGalpones galpon2 = db.galpon.First();
           galpon2.Nombre =galpon.Nombre;
           galpon2.Empleado = galpon.Empleado;
           galpon2.Direccion = galpon.Direccion;
           galpon2.Telefono= galpon.Telefono;
           galpon2.Num_ponedoras = galpon.Num_ponedoras;

            db.galpon.Attach(galpon2);

            var entry = db.Entry(galpon2);
            entry.State = EntityState.Modified;
            db.SaveChanges();


        }
    }

    ///////////////////////////////eliminar galpones/////////////////////////////////////7
    public void eliminarGalpones(EGalpones galpon)


    {
        using (var db = new Mapeo())
        {
            EGalpones galpon2 = db.galpon.First();
            galpon2.Nombre = galpon.Nombre;
            galpon2.Empleado = galpon.Empleado;
            galpon2.Direccion = galpon.Direccion;
            galpon2.Telefono = galpon.Telefono;
            galpon2.Num_ponedoras = galpon.Num_ponedoras;

            db.galpon.Attach(galpon2);

            var entry = db.Entry(galpon2);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }
    //////////////////////////////////insertar galpones//////////////////////////////
    public void insertarGalpones(EGalpones galpon)
    {
        using (var db = new Mapeo())
        {
            db.galpon.Add(galpon);
            db.SaveChanges();
        }
    }



}