pageextension 50116 SalesReceivableSetupExt extends "Sales & Receivables Setup"
{
    layout
    {
        addlast(General)
        {
            field("Terms & Conditions"; Rec.TermsAndCondition)
            {
                ApplicationArea = All;

            }
        }
        addlast(General)
        {
            field(TAC; Rec.TermsAndCondition)
            {
                Applicationarea = all;
                Caption = 'Terms and Conditions';
                ToolTip = 'T&C';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}