@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface tabla Pelicula'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_PELICULA as select from ztt_pelicula 
composition [1..*] of ZI_FUNCION as _Funciones
{
    key id_pelicula,
    nombre,
    descripciion,
    genero,
    duracion,
    imagen,
    fecha_ini_estreno,
    fecha_fin_estreno,
    _Funciones
    
}
