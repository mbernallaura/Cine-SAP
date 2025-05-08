@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface para silla'
@Metadata.ignorePropagatedAnnotations: true
/*@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@AbapCatalog.viewEnhancementCategory: [#NONE]
*/
define view entity ZI_SILLA as select from ztt_silla

association to parent ZI_FUNCION as _Funciones
on $projection.id_pelicula = _Funciones.id_pelicula
and $projection.id_funcion = _Funciones.id_funcion 

association [1..1] to ZI_PELICULA as _Peliculas
on $projection.id_pelicula = _Peliculas.id_pelicula

composition [1..*] of ZI_FACTURA as _Facturas

{
    key id_silla,
    key id_funcion,
    key id_pelicula,
    nombre_silla,
    estado_silla,
    //antecesores
    _Peliculas,
    _Funciones,
    //hijo
    _Facturas
}
