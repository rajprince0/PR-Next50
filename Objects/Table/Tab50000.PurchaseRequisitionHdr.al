table 50000 "Purchase Requisition Hdr"
{
    Caption = 'Purchase Requisition Hdr';
    DataCaptionFields = "No.";
    LookupPageID = "Purchase Requisition List";
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Requisition Type"; Enum "Requisition Type")
        {
            Caption = 'Requisition Type';
            DataClassification = ToBeClassified;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(3; "UIN No."; Code[20])
        {
            Caption = 'UIN No.';
            DataClassification = ToBeClassified;
        }
        field(4; "Requisition Date"; Date)
        {
            Caption = 'Requisition Date';
            DataClassification = ToBeClassified;
        }
        field(5; "Channel of PR"; Enum "Channel of PR")
        {
            Caption = 'Channel of PR';
            DataClassification = ToBeClassified;
        }
        field(6; "Payment Terms"; Code[10])
        {
            Caption = 'Payment Terms';
            DataClassification = ToBeClassified;
        }
        field(7; "Duration of Contract"; DateFormula)
        {
            Caption = 'Duration of Contract';
            DataClassification = ToBeClassified;
        }
        field(8; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            DataClassification = ToBeClassified;
        }
        field(9; "Delivery Address"; Code[20])
        {
            Caption = 'Delivery Address';
            DataClassification = ToBeClassified;
        }
        field(10; "Budget Reference No."; Code[20])
        {
            Caption = 'Budget Reference No.';
            DataClassification = ToBeClassified;
        }
        field(11; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            DataClassification = ToBeClassified;
        }
        field(12; "Product Description"; Text[100])
        {
            Caption = 'Product Description';
            DataClassification = ToBeClassified;
        }
        field(13; "Purpose of Purchase"; Text[100])
        {
            Caption = 'Purpose of Purchase';
            DataClassification = ToBeClassified;
        }
        field(14; "Estimated Value"; Decimal)
        {
            Caption = 'Estimated Value';
            DataClassification = ToBeClassified;
        }
        field(15; "Required Delivery Date"; Date)
        {
            Caption = 'Required Delivery Date';
            DataClassification = ToBeClassified;
        }
        field(16; Color; Code[20])
        {
            Caption = 'Color';
            DataClassification = ToBeClassified;
        }
        field(17; Density; Decimal)
        {
            Caption = 'Density';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Requisition Type", "No.")
        {
            Clustered = true;
        }
    }

}
