@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - funcion'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_FUNCION as projection on ZI_FUNCION
{
    key id_funcion,
    key id_pelicula,
    hora_inicio_funcion,
    hora_final_funcion,
    fecha_funcion,
    @Semantics.amount.currencyCode: 'moneda_funcion'
    precio_funcion,
    moneda_funcion,
    _Peliculas
}
