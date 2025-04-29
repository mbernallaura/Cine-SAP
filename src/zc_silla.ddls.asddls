@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - silla'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_SILLA provider contract transactional_query as projection on ZI_PELICULA
{
    key id_pelicula
//    key id_silla,
//    id_funcion,
//    nombre_silla,
//    estado_silla
}
