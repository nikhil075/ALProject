tableextension 50101 SalesInvoiceHeaderExt extends "Sales Invoice Header"
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

    }

    var
        myInt: Integer;
}