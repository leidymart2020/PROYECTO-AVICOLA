using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ESector
/// </summary>
[Serializable]
[Table ("galpon", Schema = "galpones")]
public class EGalpones
{
    private int id;
    private string nombre;
    private string empleado;
    private string direccion;
    private int telefono;
    private int num_ponedoras;



    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("empleado")]
    public string Empleado { get => empleado; set => empleado = value; }
    [Column("direccion")]
    public string Direccion { get => direccion; set => direccion = value; }
    [Column("telefono")]
    public int Telefono { get => telefono; set => telefono = value; }
    [Column("num_ponedoras")]
    public int Num_ponedoras { get => num_ponedoras; set => num_ponedoras = value; }
    
}