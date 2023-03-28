tableextension 50102 SalesHeaderExt extends "Sales Header"
{
    fields
    {
        field(50101; "Terms & Conditions"; Text[500]) { }
        field(50102; "TinNo"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50103; "Total Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50104; "Total Weight"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50105; "Include TIN No"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50106; "Warranty Period"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50107; "Payment Method"; Code[2048])
        {
            DataClassification = ToBeClassified;

        }

    }


    var
        myInt: Integer;

    trigger OnAfterInsert()
    var
        SalesReceivableSetup: Record "Sales & Receivables Setup";
    begin
        SalesReceivableSetup.Get();
        if SalesReceivableSetup.TermsAndCondition <> '' then begin
            Rec."Terms & Conditions" := SalesReceivableSetup.TermsAndCondition;
        end else begin
            Error('Please fill terms and condition');
        end
    end;
}