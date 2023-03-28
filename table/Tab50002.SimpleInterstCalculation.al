table 50102 "Simple Interst Calculation"
{
    Caption = 'Simple Interst Calculation';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; InitAmount; Decimal)
        {
            Caption = 'InitAmount';
            DataClassification = ToBeClassified;
        }
        field(2; NoOfYears; Decimal)
        {
            Caption = 'NoOfYears';
            DataClassification = ToBeClassified;
        }
        field(3; Rateofinterest; Decimal)
        {
            Caption = 'Rateofinterest';
            DataClassification = ToBeClassified;
        }
        field(4; FinalAmt; Decimal)
        {
            Caption = 'FinalAmt';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; InitAmount)
        {
            Clustered = true;
        }
    }
}
