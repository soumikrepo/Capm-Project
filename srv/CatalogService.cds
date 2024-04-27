using datamodel.db as db from '../db/data-model';

service CatalogService @(path: '/CatalogService') {

    entity businessPartner as projection on db.businessPartner;
    entity address         as projection on db.address;
    // entity employee        as projection on master.employee;
    // entity product         as projection on master.product;
    // entity purchaseorder   as projection on transaction.purchaseorder;
    // entity poitems as projection on transaction.poitems;

    // annotate purchaseorder with @odata.draft.enabled ;
    
}
