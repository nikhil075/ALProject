pageextension 50112 SalesOrderExt extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field("Terms & Conditions"; Rec."Terms & Conditions")
            {
                ApplicationArea = All;
                MultiLine = true;
            }
            field("Total Quantity"; Rec."Total Quantity")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("Total Weight"; Rec."Total Weight")
            {
                ApplicationArea = All;
                Editable = false;
            }

            field(TinNo; Rec.TinNo)
            {
                ApplicationArea = all;
                Caption = 'TIN No.';
            }
            field("Include TIN No"; Rec."Include TIN No")
            {
                ApplicationArea = All;

            }
            field("Warranty Period"; Rec."Warranty Period")
            {
                ApplicationArea = All;
                ToolTip = 'Total Warranty of product';

            }

        }

        addafter(SalesLines)
        {
            field("Payment Method"; Rec."Payment Method")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addafter(SendApprovalRequest)
        {
            action("Calculate Totals")
            {
                ApplicationArea = all;
                Caption = 'Calculate Totals';
                ToolTip = 'Calculate Total Quantity and Total Weight from Sales Lines';
                Promoted = true;
                PromotedCategory = Category10;
                Image = Calculate;
                trigger OnAction()
                var
                    SalesLine: Record "Sales Line";
                begin
                    Clear(rec."Total Quantity");
                    Clear(rec."Total Weight");
                    // SalesLine.SETRANGE("Document Type", Rec."Document Type");
                    SalesLine.SETRANGE("Document No.", Rec."No.");
                    if SalesLine.FindSet() then
                        repeat
                            Rec."Total Weight" += SalesLine."Total Weight";
                            Rec."Total Quantity" += SalesLine.Quantity;
                        until SalesLine.Next() = 0;
                end;
            }
            
            
        }
    }
    var
        myInt: Integer;
}