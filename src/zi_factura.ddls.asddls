@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface tabla FACTURA'
@Metadata.ignorePropagatedAnnotations: true
/*@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@AbapCatalog.viewEnhancementCategory: [#NONE]
*/
define view entity ZI_FACTURA as select from ztt_factura

association [1..1] to ZI_PELICULA as _Peliculas
on $projection.id_pelicula = _Peliculas.id_pelicula 

association [1..1] to ZI_FUNCION as _Funciones
on $projection.id_pelicula = _Funciones.id_pelicula
and $projection.id_funcion = _Funciones.id_funcion 

association to parent ZI_SILLA as _Sillas
on $projection.id_pelicula = _Sillas.id_pelicula
and $projection.id_funcion = _Sillas.id_funcion 
and $projection.id_silla = _Sillas.id_silla 

{
    key id_factura,
    key id_silla,
    key id_funcion,
    key id_pelicula,
    @Semantics.amount.currencyCode: 'moneda_total'
    precio_total,
    moneda_total,
    //Antecesores
    _Funciones,
    _Sillas,
    _Peliculas
}
