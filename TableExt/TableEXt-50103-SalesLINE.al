tableextension 50103 SalesLineExt extends "Sales Line"
{
    fields
    {
        field(50101; "Weight"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(50103;"Total Quantity";Decimal)
        {

        }
        field(50102; BarCode; Code[50])
        {

            Caption = 'BarCode No.';

        }
        field(50104; "Total Weight"; Decimal){

        }
        field(50105; "SNo"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }


    var
        myInt: Integer;
     trigger OnAfterInsert()
    var
        Item: Record Item;
    begin
        Item.Get("No.");
        if Item."No." <> '' then begin
            Rec.BarCode := Item.BarCode;
        end;
        end;
 


}
