report 50000 "Purchase Requisition Report"
{
    ApplicationArea = All;
    Caption = 'Purchase Requisition Report';
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/Layouts/PurchaseRequisition.rdlc';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(PurchaseRequisitionHdr; "Purchase Requisition Hdr")
        {
            column(No; "No.")
            {
            }
            column(UINNo; "UIN No.")
            {
            }
            column(BudgetReferenceNo; "Budget Reference No.")
            {
            }
            column(ChannelofPR; "Channel of PR")
            {
            }
            column(Color; Color)
            {
            }
            column(DeliveryAddress; "Delivery Address")
            {
            }
            column(Density; Density)
            {
            }
            column(DurationofContract; "Duration of Contract")
            {
            }
            column(EstimatedValue; "Estimated Value")
            {
            }
            column(PaymentTerms; "Payment Terms")
            {
            }
            column(ProductDescription; "Product Description")
            {
            }
            column(PurposeofPurchase; "Purpose of Purchase")
            {
            }
            column(RequiredDeliveryDate; "Required Delivery Date")
            {
            }
            column(RequisitionDate; "Requisition Date")
            {
            }
            column(RequisitionType; "Requisition Type")
            {
            }
            column(ShortcutDimension1Code; "Shortcut Dimension 1 Code")
            {
            }
            column(ShortcutDimension2Code; "Shortcut Dimension 2 Code")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
