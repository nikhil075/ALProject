tableextension 50007 ItemExtension extends Item
{
    fields
    {
        field(50008; UnitPrice; Decimal)
        {
            Caption = 'Unit Price 2';
            DataClassification = ToBeClassified;




        }
        field(50009; DiscountPercent; Decimal)
        {
            Caption = 'DiscountPercent';
            DataClassification = ToBeClassified;



        }
        field(50010; DiscountAmt; Decimal)
        {
            Caption = 'DiscountAmt';
            DataClassification = ToBeClassified;
            Trigger OnValidate()
            var
                UnitPrice: Decimal;
                DiscountAmt_: Decimal;
            begin
                UnitPrice := "Unit Price";
                DiscountAmt_ := DiscountAmt;
                DiscountPercent := Round(DiscountAmt_ / UnitPrice * 100);
                Modify();
            end;
        }
        field(50011; RemainingAmt; Decimal)
        {
            Caption = 'RemainingAmt';
            DataClassification = ToBeClassified;
        }
        field(50101; BarCode; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'BarCode';

        }
    }

}
