using {CatalogService} from '../../srv/CatalogService';

annotate CatalogService.purchaseorder with @(UI: {

    SelectionFields                   : [PURCHASE_ORDER_ID],
    LineItem                          : [

        {
            $Type: 'UI.DataField',
            Value: PURCHASE_ORDER_ID
        },
        {
            $Type                    : 'UI.DataField',
            Value                    : LIFECYCLE_STATUS,
            Criticality              : Criticality,
            CriticalityRepresentation: #WithIcon
        }
    ],

    HeaderInfo                        : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Purchase Order',
        TypeNamePlural: 'Purchase Orders',
        Title         : {
            Label: 'Purchase Order Id',
            Value: PURCHASE_ORDER_ID
        },
        Description   : {
            Label: 'Status of Purchase Order',
            Value: LIFECYCLE_STATUS
        },
        ImageUrl      : 'https://digitalharborbolivia.com/wp-content/uploads/2023/04/cropped-favicom-1.jpg'
    },

    Facets                            : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Details of Purchase Order',
            Target: ![@UI.FieldGroup#DetailsOfPurchaseOrder]
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Purchase Items Associated With Purchase Order',
            Target: ![poitems/@UI.LineItem]
        },
    ],

    FieldGroup #DetailsOfPurchaseOrder: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: PURCHASE_ORDER_ID
            },
            {
                $Type: 'UI.DataField',
                Value: PARTNER_ID_ID
            },
            {
                $Type                    : 'UI.DataField',
                Value                    : LIFECYCLE_STATUS,
                Criticality              : Criticality,
                CriticalityRepresentation: #WithIcon
            },
            {
                $Type: 'UI.DataField',
                Value: OVERALL_STATUS
            },
            {
                $Type: 'UI.DataField',
                Value: Criticality
            },
            {
                $Type: 'UI.DataField',
                Value: GROSS_AMOUNT
            },
            {
                $Type: 'UI.DataField',
                Value: NET_AMOUNT
            },
            {
                $Type: 'UI.DataField',
                Value: TAX_AMOUNT
            },
            {
                $Type: 'UI.DataField',
                Value: CURRENCY_CODE
            }

        ]
    },


});


annotate CatalogService.poitems with @(UI: {

    LineItem                    : [
        {
            $Type: 'UI.DataField',
            Value: ID
        },
        {
            $Type: 'UI.DataField',
            Value: PARENT_KEY_ID
        },
        {
            $Type: 'UI.DataField',
            Value: TOTAL_ITEMS
        },
        {
            $Type: 'UI.DataField',
            Value: PRODUCT_ID_ID
        },
        {
            $Type: 'UI.DataField',
            Value: GROSS_AMOUNT
        },
        {
            $Type: 'UI.DataField',
            Value: NET_AMOUNT
        },
        {
            $Type: 'UI.DataField',
            Value: TAX_AMOUNT
        },
        {
            $Type: 'UI.DataField',
            Value: CURRENCY_CODE
        }

    ],
    HeaderInfo                  : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'PO Item',
        TypeNamePlural: 'PO Items',
        Title         : {
            $Type: 'UI.DataField',
            Value: ID
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: TOTAL_ITEMS
        },
        ImageUrl      : 'https://digitalharborbolivia.com/wp-content/uploads/2023/04/cropped-favicom-1.jpg'
    },

    Facets                      : [

        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Purchase Order Item Details',
            Target: ![@UI.FieldGroup#DetailsOfPOitems]
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Product Details',
            Target: ![PRODUCT_ID/@UI.FieldGroup#ProductDetails]
        }
    ],

    FieldGroup #DetailsOfPOitems: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: ID
            },
            {
                $Type: 'UI.DataField',
                Value: PARENT_KEY_ID
            },
            {
                $Type: 'UI.DataField',
                Value: TOTAL_ITEMS
            },
            {
                $Type: 'UI.DataField',
                Value: PRODUCT_ID_ID
            },
            {
                $Type: 'UI.DataField',
                Value: GROSS_AMOUNT
            },
            {
                $Type: 'UI.DataField',
                Value: NET_AMOUNT
            },
            {
                $Type: 'UI.DataField',
                Value: TAX_AMOUNT
            },
            {
                $Type: 'UI.DataField',
                Value: CURRENCY_CODE
            }
        ]
    },


});

annotate CatalogService.product with @(UI: {FieldGroup#ProductDetails: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Value: PRODUCT_ID
        },
        {
            $Type: 'UI.DataField',
            Value: TYPE_CODE
        },
        {
            $Type: 'UI.DataField',
            Value: CATEGORY
        },
        {
            $Type: 'UI.DataField',
            Value: SUPPLIER_ID_ID
        },
        {
            $Type: 'UI.DataField',
            Value: TAX_TARIF_CODE
        },
        {
            $Type: 'UI.DataField',
            Value: MEASURE_UNIT
        },
        {
            $Type: 'UI.DataField',
            Value: WEIGHT_MEASURE
        },
        {
            $Type: 'UI.DataField',
            Value: WEIGHT_UNIT
        },
        {
            $Type: 'UI.DataField',
            Value: CURRENCY_CODE
        },
        {
            $Type: 'UI.DataField',
            Value: PRICE
        },
        {
            $Type: 'UI.DataField',
            Value: WIDTH
        },
        {
            $Type: 'UI.DataField',
            Value: DEPTH
        },
        {
            $Type: 'UI.DataField',
            Value: HEIGHT
        },
        {
            $Type: 'UI.DataField',
            Value: DIM_UNIT
        },
        {
            $Type: 'UI.DataField',
            Value: DESCRIPTION
        },
    ]
}});
