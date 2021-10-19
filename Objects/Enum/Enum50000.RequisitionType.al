enum 50000 "Requisition Type"
{
    Extensible = true;
    AssignmentCompatibility = true;

    value(0; ToInitiateOrder)
    {
        Caption = 'To Initiate Order';
    }
    value(1; ToPaidPurchase)
    {
        Caption = 'To regularise Paid Purchase';
    }

}