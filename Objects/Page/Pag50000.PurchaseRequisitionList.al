page 50000 "Purchase Requisition List"
{

    ApplicationArea = All;
    Caption = 'Purchase Requisition List';
    CardPageID = "Purchase Requisition";
    PageType = List;
    DataCaptionFields = "No.";
    Editable = false;
    PromotedActionCategories = 'New,Process,Report,Approve,Release,Posting,Print/Send,Navigate';
    QueryCategory = 'Purchase Requisition List';
    RefreshOnActivate = true;
    SourceTable = "Purchase Requisition Hdr";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field("Requisition Type"; Rec."Requisition Type")
                {
                    ToolTip = 'Specifies the value of the Requisition Type field.';
                    ApplicationArea = All;
                }
                field("UIN No."; Rec."UIN No.")
                {
                    ToolTip = 'Specifies the value of the UIN No. field.';
                    ApplicationArea = All;
                }
                field("Payment Terms"; Rec."Payment Terms")
                {
                    ToolTip = 'Specifies the value of the Payment Terms field.';
                    ApplicationArea = All;
                }
                field("Required Delivery Date"; Rec."Required Delivery Date")
                {
                    ToolTip = 'Specifies the value of the Required Delivery Date field.';
                    ApplicationArea = All;
                }
                field("Product Description"; Rec."Product Description")
                {
                    ToolTip = 'Specifies the value of the Product Description field.';
                    ApplicationArea = All;
                }
                field("Purpose of Purchase"; Rec."Purpose of Purchase")
                {
                    ToolTip = 'Specifies the value of the Purpose of Purchase field.';
                    ApplicationArea = All;
                }
                field("Requisition Date"; Rec."Requisition Date")
                {
                    ToolTip = 'Specifies the value of the Requisition Date field.';
                    ApplicationArea = All;
                }
                field("Estimated Value"; Rec."Estimated Value")
                {
                    ToolTip = 'Specifies the value of the Estimated Value field.';
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ToolTip = 'Specifies the value of the Shortcut Dimension 1 Code field.';
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
            }
        }
    }

}
