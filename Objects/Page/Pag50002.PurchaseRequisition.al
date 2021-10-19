page 50002 "Purchase Requisition"
{

    Caption = 'Purchase Requisition';
    PageType = Document;
    PromotedActionCategories = 'New,Process,Report,Approve,Release,Posting,Print/Send,Navigate';
    RefreshOnActivate = true;
    SourceTable = "Purchase Requisition Hdr";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Requisition Type"; Rec."Requisition Type")
                {
                    ToolTip = 'Specifies the value of the Requisition Type field.';
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field("UIN No."; Rec."UIN No.")
                {
                    ToolTip = 'Specifies the value of the UIN No. field.';
                    ApplicationArea = All;
                }
                field("Budget Reference No."; Rec."Budget Reference No.")
                {
                    ToolTip = 'Specifies the value of the Budget Reference No. field.';
                    ApplicationArea = All;
                }
                field("Channel of PR"; Rec."Channel of PR")
                {
                    ToolTip = 'Specifies the value of the Channel of PR field.';
                    ApplicationArea = All;
                }
                field("Delivery Address"; Rec."Delivery Address")
                {
                    ToolTip = 'Specifies the value of the Delivery Address field.';
                    ApplicationArea = All;
                }
                field("Payment Terms"; Rec."Payment Terms")
                {
                    ToolTip = 'Specifies the value of the Payment Terms field.';
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ToolTip = 'Specifies the value of the Shortcut Dimension 1 Code field.';
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ToolTip = 'Specifies the value of the Shortcut Dimension 2 Code field.';
                    ApplicationArea = All;
                }
                field("Required Delivery Date"; Rec."Required Delivery Date")
                {
                    ToolTip = 'Specifies the value of the Required Delivery Date field.';
                    ApplicationArea = All;
                }
                field("Requisition Date"; Rec."Requisition Date")
                {
                    ToolTip = 'Specifies the value of the Requisition Date field.';
                    ApplicationArea = All;
                }
            }
            part(PurchaseRequisitionLines; "Purchase Requisition Subform")
            {
                ApplicationArea = Suite;
                SubPageLink = "Document No." = FIELD("No.");
                UpdatePropagation = Both;
            }
            group("Other Information")
            {
                field("Duration of Contract"; Rec."Duration of Contract")
                {
                    ToolTip = 'Specifies the value of the Duration of Contract field.';
                    ApplicationArea = All;
                }
                field("Purpose of Purchase"; Rec."Purpose of Purchase")
                {
                    ToolTip = 'Specifies the value of the Purpose of Purchase field.';
                    ApplicationArea = All;
                }
                field("Product Description"; Rec."Product Description")
                {
                    ToolTip = 'Specifies the value of the Product Description field.';
                    ApplicationArea = All;
                }
                field("Estimated Value"; Rec."Estimated Value")
                {
                    ToolTip = 'Specifies the value of the Estimated Value field.';
                    ApplicationArea = All;
                }
                field(Color; Rec.Color)
                {
                    ToolTip = 'Specifies the value of the Color field.';
                    ApplicationArea = All;
                }
                field(Density; Rec.Density)
                {
                    ToolTip = 'Specifies the value of the Density field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
