table 50101 test1
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "First Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Last Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Phone No."; Integer) 
       
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Email"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; City; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(7; State; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(8; Country; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Employee Id"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Employee Id")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        Message('Data inserted');
    end;

    trigger OnModify()
    begin
        Message('Data Modified');
    end;

    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;

    trigger OnRename()
    begin
        Message('Data Renamed');
    end;

}