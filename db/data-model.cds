namespace datamodel.db;

using {
  cuid,
  temporal,
  Currency
} from '@sap/cds/common';
using {soumik.common} from './common';


entity businessPartner : cuid {
  BP_ROLE       : String;
  EMAIL_ADDRESS : String;
  PHONE_NUMBER  : String;
  FAX_NUMBER    : String;
  WEB_ADDRESS   : String;
  ADDRESS_ID    : Association to one address;
  BP_ID         : String;
  COMPANY_NAME  : String;
}

entity address : cuid {
  CITY            : String;
  POSTAL_CODE     : String;
  STREET          : String;
  BUILDING        : String;
  COUNTRY         : String;
  VAL_START_DATE  : Date;
  VAL_END_DATE    : Date;
  LATITUDE        : Decimal;
  LONGITUDE       : Decimal;
  businessPartner : Association to one businessPartner
                      on businessPartner.ADDRESS_ID = $self;
}


// @assert.unique: {
//   phoneNumber: [phoneNumber],
//   email      : [email]
// }
// entity employee : cuid, temporal, common.Name {
//   DOB           : Date;
//   AGE           : Integer;
//   sex           : common.Gender;
//   language      : String;
//   phoneNumber   : common.PhoneNumber;
//   email         : common.Email;
//   loginName     : String;
//   currency      : Currency;
//   salaryAmount  : common.AmountT;
//   accountNumber : String;
//   bankId        : String;
//   bankName      : String;
// }

// entity product : cuid {

//   PRODUCT_ID     : String;
//   TYPE_CODE      : String;
//   CATEGORY       : String;
//   SUPPLIER_ID    : Association to one businessPartner;
//   TAX_TARIF_CODE : Integer;
//   MEASURE_UNIT   : String;
//   WEIGHT_MEASURE : Decimal;
//   WEIGHT_UNIT    : String;
//   CURRENCY_CODE  : String;
//   PRICE          : Decimal;
//   WIDTH          : Decimal;
//   DEPTH          : Decimal;
//   HEIGHT         : Decimal;
//   DIM_UNIT       : String;
//   DESCRIPTION    : localized String
// }

// annotate businessPartner with {
//   ID            @title: '{i18n>ID}';
//   BP_ROLE       @title: '{i18n>BP_ROLE}';
//   EMAIL_ADDRESS @title: '{i18n>EMAIL_ADDRESS}';
//   PHONE_NUMBER  @title: '{i18n>PHONE_NUMBER}';
//   FAX_NUMBER    @title: '{i18n>FAX_NUMBER}';
//   WEB_ADDRESS   @title: '{i18n>WEB_ADDRESS}';
//   ADDRESS_ID    @title: '{i18n>ADDRESS_ID}';
//   BP_ID         @title: '{i18n>BP_ID}';
//   COMPANY_NAME  @title: '{i18n>COMPANY_NAME}';
// };


// annotate address with {
//   COUNTRY @title: '{i18n>COUNTRY}';
// };

// annotate product with {

//   ID             @title: '{i18n>ID}';
//   PRODUCT_ID     @title: '{i18n>PRODUCT_ID}';
//   TYPE_CODE      @title: '{i18n>TYPE_CODE}';
//   CATEGORY       @title: '{i18n>CATEGORY}';
//   SUPPLIER_ID    @title: '{i18n>SUPPLIER_ID}';
//   TAX_TARIF_CODE @title: '{i18n>TAX_TARIF_CODE}';
//   MEASURE_UNIT   @title: '{i18n>MEASURE_UNIT}';
//   WEIGHT_MEASURE @title: '{i18n>WEIGHT_MEASURE}';
//   WEIGHT_UNIT    @title: '{i18n>WEIGHT_UNIT}';
//   CURRENCY_CODE  @title: '{i18n>CURRENCY_CODE}';
//   PRICE          @title: '{i18n>PRICE}';
//   WIDTH          @title: '{i18n>WIDTH}';
//   DEPTH          @title: '{i18n>DEPTH}';
//   HEIGHT         @title: '{i18n>HEIGHT}';
//   DIM_UNIT       @title: '{i18n>DIM_UNIT}';
//   DESCRIPTION    @title: '{i18n>DESCRIPTION}';
// };


// context transaction {

//   entity purchaseorder : cuid, common.Amount {
//     PURCHASE_ORDER_ID : String;
//     PARTNER_ID        : Association to one master.businessPartner;
//     LIFECYCLE_STATUS  : String;
//     OVERALL_STATUS    : String;
//     Criticality       : Integer;
//     poitems           : Composition of many poitems
//                           on poitems.PARENT_KEY = $self

//   }

//   entity poitems : cuid, common.Amount {
//     PARENT_KEY  : Association to purchaseorder;
//     TOTAL_ITEMS : Integer;
//     PRODUCT_ID  : Association to master.product;
//   }

//   annotate purchaseorder with {
//     ID                @title: '{i18n>ID}';
//     PARTNER_ID        @title: '{i18n>PARTNER_ID}';
//     LIFECYCLE_STATUS  @title: '{i18n>LIFECYCLE_STATUS}';
//     OVERALL_STATUS    @title: '{i18n>OVERALL_STATUS}';
//     Criticality       @title: '{i18n>Criticality}';
//     poitems           @title: '{i18n>poitems}';
//     PURCHASE_ORDER_ID @title: '{i18n>PURCHASE_ORDER_ID}';
//     GROSS_AMOUNT      @title: '{i18n>GROSS_AMOUNT}';
//     NET_AMOUNT        @title: '{i18n>NET_AMOUNT}';
//     TAX_AMOUNT        @title: '{i18n>TAX_AMOUNT}';
//     CURRENCY_CODE     @title: '{i18n>CURRENCY_CODE}';

//   };

//   annotate poitems with {
//     ID            @title: '{i18n>ID_POI}';
//     PARENT_KEY    @title: '{i18n>PARENT_KEY}';
//     PRODUCT_ID    @title: '{i18n>PRODUCT_ID_POI}';
//     TOTAL_ITEMS   @title: '{i18n>TOTAL_ITEMS}';
//     GROSS_AMOUNT  @title: '{i18n>GROSS_AMOUNT}';
//     NET_AMOUNT    @title: '{i18n>NET_AMOUNT}';
//     TAX_AMOUNT    @title: '{i18n>TAX_AMOUNT}';
//     CURRENCY_CODE @title: '{i18n>CURRENCY_CODE}';
//   };


// }
