tableextension 50119 TableVendorExt extends Vendor
{
    fields
    {
        field(50104; VendorGSTNo; Code[15])
        {
            DataClassification = ToBeClassified;
            Caption = 'Vendor GST No.';
        }
        field(50100; TinNo; Code[15])
        {
            DataClassification = ToBeClassified;
            Caption='Tin No.';
        }
        field(50105; CustomerNo; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50106; CustomerName; text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50107; CustomerID; Code[20])
        {
            DataClassification = ToBeClassified;
        }


    }

    var
        myInt: Integer;
}