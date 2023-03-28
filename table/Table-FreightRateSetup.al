table 50149 "Freight Rate Setup"
{

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Transport/Shipping Agent"; Code[20])
        {

            TableRelation = Vendor;
        }
        field(3; StartDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; EndDate; Date)
        {
            DataClassification = ToBeClassified;
        }
    }



    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}