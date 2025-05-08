@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Comsuption -  Peliculas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_PELICULA
  provider contract transactional_query as projection on ZI_PELICULA
{
    key id_pelicula,
    nombre,
    descripciion,
    genero,
    duracion,
    imagen,
    fecha_ini_estreno,
    fecha_fin_estreno,
    _Funciones: redirected to composition child ZC_FUNCION
    
}
