@AbapCatalog.sqlViewName: 'ZDMT_V_ART_001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'VIsta de Articulos de Arte'
@Metadata.allowExtensions: true
define view ZDMT_CDS_ART_001 as select from zdmt_tab_art
{
    key client as client,
    key id_art as IdArt,
    descr as Descr,
    desc2 as Desc2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
    // 0 Neutral Grey
    // 1 Red
    // 2 Yellow
    // 3 Green
    case
    when stock = 0 then 0
    when stock between 1 and 10 then 1
    when stock between 11 and 99 then 2
    when stock >= 100 then 3
    else 0
    end as Status    
}
