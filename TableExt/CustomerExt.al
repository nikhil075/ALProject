 tableextension 50115 CustomerExt extends Customer
{
    fields
    {
       field(50108; TinNo_; Code[20])
       {
        DataClassification = ToBeClassified;
        Caption= 'TIN No.';
       }
    }
    
    var
        myInt: Integer;
}