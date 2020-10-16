using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EUsuario
/// </summary>
[Serializable]
[Table("usuario", Schema = "usuario")]
public class EUsuario
{
    private string userName;
    private string clave;
    private string nombre;
    private int id;
    private string apellido;
    private int rolId;

    [Column("user_name")]
    public string UserName { get => userName; set => userName = value; }
    [Column("clave")]
    public string Clave { get => clave; set => clave = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("apellido")]
    public string Apellido { get => apellido; set => apellido = value; }
    [Column("rol_id")]
    public int RolId { get => rolId; set => rolId = value; }
}