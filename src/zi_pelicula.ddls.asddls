@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface tabla Pelicula'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_PELICULA as select from ztt_pelicula
{
    key id_pelicula,
    nombre,
    descripciion,
    genero,
    duracion,
    imagen,
    fecha_ini_estreno,
    fecha_fin_estreno
}
