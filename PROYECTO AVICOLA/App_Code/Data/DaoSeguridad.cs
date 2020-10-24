using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DaoSeguridad
/// </summary>
public class DaoSeguridad
{
    public void insertarToken(EToken token)
    {
        using (var db = new Mapeo())
        {
            db.token.Add(token);
            db.SaveChanges();
        }
    }
    public EToken getTokenByUser(int userId)
    {
        return new Mapeo().token.Where(x => x.UserId == userId && x.Vigencia > DateTime.Now).FirstOrDefault();
    }

    public EToken getTokenByToken(string token)
    {
        return new Mapeo().token.Where(x => x.TokenGenerado == token).FirstOrDefault();
    }
    public void updateClave(EUsuario usuario)
    {
        using (var db = new Mapeo())
        {
            EUsuario usuarioAnterior = db.usuario.Where(x => x.Id == usuario.Id).First();
            usuarioAnterior.Clave = usuario.Clave;

            db.usuario.Attach(usuarioAnterior);

            var entry = db.Entry(usuarioAnterior);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }


}