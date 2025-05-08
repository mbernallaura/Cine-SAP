@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Comsuption -  Factura'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_FACTURA as projection on ZI_FACTURA
{
  key id_factura,
  key id_silla,
  key id_funcion,
  key id_pelicula,
  @Semantics.amount.currencyCode: 'moneda_total'
  precio_total,
  moneda_total,
  //Antecesores
  _Peliculas: redirected to ZC_PELICULA,
  _Funciones,
  _Sillas: redirected to parent ZC_SILLA
}
