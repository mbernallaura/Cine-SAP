@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface para silla'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SILLA as select from ztt_silla
//association to parent ZI_FUNCION as _Funciones
//on $projection.id_pelicula 
{
    key id_silla,
    id_funcion,
    nombre_silla,
    estado_silla
}
