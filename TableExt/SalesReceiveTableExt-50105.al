tableextension 50105 SalesReceiveExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50101; TermsAndCondition; Text[500])
        {
            DataClassification = ToBeClassified;
            Caption = 'Terms And Condition';
        }
    }

    var
        myInt: Integer;
}