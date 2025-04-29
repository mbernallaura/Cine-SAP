@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface para funcion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_FUNCION as select from ztt_funcion 
association to parent ZI_PELICULA as _Peliculas
on $projection.id_pelicula = _Peliculas.id_pelicula
composition [1..*] of ZI_SILLA as _Sillas
{
    key id_funcion,
    key id_pelicula,
    hora_inicio_funcion,
    hora_final_funcion,
    fecha_funcion,
    @Semantics.amount.currencyCode: 'moneda_funcion'
    precio_funcion,
    moneda_funcion,
    _Peliculas,
    _Sillas 
}
