@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - silla'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_SILLA as projection on ZI_SILLA
{
    key id_silla,
    key id_funcion,
    key id_pelicula,
    nombre_silla,
    estado_silla,
    /* Associations */
    _Funciones: redirected to parent ZC_FUNCION,
    _Peliculas,
    _Facturas: redirected to composition child ZC_FACTURA
    
}
