table 50001 "Purchase Requisition Line"
{
    Caption = 'Purchase Requisition Line';
    DrillDownPageID = "Purchase Requisition Subform";
    LookupPageID = "Purchase Requisition Subform";

    fields
    {
        field(1; "Requisition Type"; Enum "Requisition Type")
        {
            Caption = 'Requisition Type';
        }
        field(2; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Purchase Requisition Hdr"."No." WHERE("Requisition Type" = FIELD("Requisition Type"));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Type; Enum "Purchase Line Type")
        {
            Caption = 'Type';

            trigger OnValidate()
            var
                TempPurchLine: Record "Purchase Line" temporary;
                IsHandled: Boolean;
            begin
                // if Type <> xRec.Type then begin
                //     case xRec.Type of
                //         Type::Item:
                //             if Quantity <> 0 then begin
                //                 PurchHeader.TestField(Status, PurchHeader.Status::Open);
                //                 PurchLineReserve.VerifyChange(Rec, xRec);
                //                 CalcFields("Reserved Qty. (Base)");
                //                 TestField("Reserved Qty. (Base)", 0);
                //                 WhseValidateSourceLine.PurchaseLineVerifyChange(Rec, xRec);
                //                 OnValidateTypeOnAfterCheckItem(Rec, xRec);
                //             end;
                //         Type::"Fixed Asset":
                //             if Quantity <> 0 then
                //                 PurchHeader.TestField(Status, PurchHeader.Status::Open);
                //         Type::"Charge (Item)":
                //             DeleteChargeChargeAssgnt("Document Type", "Document No.", "Line No.");
                //     end;
                //     if xRec."Deferral Code" <> '' then
                //         DeferralUtilities.RemoveOrSetDeferralSchedule('',
                //           "Deferral Document Type"::Purchase.AsInteger(), '', '',
                //           xRec."Document Type".AsInteger(), xRec."Document No.", xRec."Line No.",
                //           xRec.GetDeferralAmount(), PurchHeader."Posting Date", '', xRec."Currency Code", true);
                // end;
                // TempPurchLine := Rec;
                // Init();
                // SystemId := TempPurchLine.SystemId;

                // if xRec."Line Amount" <> 0 then
                //     "Recalculate Invoice Disc." := true;

                // Type := TempPurchLine.Type;
                // "System-Created Entry" := TempPurchLine."System-Created Entry";
                // OnValidateTypeOnCopyFromTempPurchLine(Rec, TempPurchLine);
                // Validate("FA Posting Type");

                // if Type = Type::Item then
                //     "Allow Item Charge Assignment" := true
                // else
                //     "Allow Item Charge Assignment" := false;
            end;
        }
        field(5; "No."; Code[20])
        {
            Caption = 'No.';

            trigger OnValidate()
            var
            begin

            end;
        }
        field(6; Description; Text[100])
        {
            Caption = 'Description';

        }
        field(7; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(8; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST(Item),
                                "No." = FILTER(<> '')) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            if (Type = const(Resource), "No." = filter(<> '')) "Resource Unit of Measure".Code where("Resource No." = field("No."))
            else
            "Unit of Measure";

        }
        field(9; "Unit of Measure"; Text[50])
        {
            Caption = 'Unit of Measure';
        }

        field(10; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;

        }
        field(11; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;

            trigger OnValidate()
            begin

            end;
        }
        field(12; "Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Discount Amount';

            trigger OnValidate()
            var

            begin

            end;
        }
        field(13; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }

        field(14; "Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Amount';

            trigger OnValidate()
            begin

            end;
        }

        field(15; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }

        field(16; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
            Editable = false;
        }

    }

    keys
    {
        key(Key1; "Requisition Type", "Document No.", "Line No.")
        {
            Clustered = true;
        }

    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, "Line Amount", Quantity, "Unit of Measure Code")
        {
        }
    }

}

