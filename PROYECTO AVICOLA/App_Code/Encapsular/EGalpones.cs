using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ESector
/// </summary>
public class EGalpones
{
    private int id;
    private string nombre;
    private string propietario;
    private string direccion;
    private int telefono;
   


    public int Id { get => id; set => id = value; }
    public string Nombre { get => nombre; set => nombre = value; }
    public string Propietario { get => propietario; set => propietario = value; }
    public string Direccion { get => direccion; set => direccion = value; }
    public int Telefono { get => telefono; set => telefono = value; }
   
}