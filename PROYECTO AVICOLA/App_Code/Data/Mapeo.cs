using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Mapeo
/// </summary>
public class Mapeo:DbContext
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }

    private readonly string schema;

    public Mapeo()
           : base("name=Conexion2")
    {

    }

    public DbSet<EUsuario> usuario { get; set; }           //clase-tabla base de datos

    protected override void OnModelCreating(DbModelBuilder builder)
    {
        builder.HasDefaultSchema(this.schema);

        base.OnModelCreating(builder);
    }
}