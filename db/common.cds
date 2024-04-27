namespace soumik.common;

//We will create Gender for reuse
type Gender      : String(1) enum {
    male         = 'M';
    female       = 'F';
    noBinary     = 'N';
    noDisclosure = 'D';
    selfDescribe = 'S';
};

//Custom Aspect for Name

aspect Name {
    nameFirst    : String not null;
    nameMiddle   : String;
    nameLast     : String not null;
    nameInitials : String;
}

//Create a amount format for reuse
type AmountT     : Decimal(15, 2);

//Type for Email and Phone number
type PhoneNumber : String(30) @assert.format: '((?:\\+|00)[17](?: |\\-)?|(?:\\+|00)[1-9]\\d{0,2}(?: |\\-)?|(?:\\+|00)1-\\d{3}(?: |\\-)?)?(0\\d|\\([0-9]{3}\\)|[1-9]{0,3})(?:((?: |\\-)[0-9]{2}){4}|((?:[0-9]{2}){4})|((?: |\\-)[0-9]{3}(?: |\\-)[0-9]{4})|([0-9]{7}))';
type Email       : String(255) @assert.format: '^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';

//Custom aspect for amount
aspect Amount {

    CURRENCY_CODE : String(4);
    GROSS_AMOUNT  : AmountT;
    NET_AMOUNT    : AmountT;
    TAX_AMOUNT    : AmountT;
}
