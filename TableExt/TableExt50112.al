tableextension 50145 PurchaseHeaderExt extends "Purchase Header"
{
    fields
    { 
        field(50111; LicencseNo_; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Licensse No.';
        }
        
        field(50109; GSTNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'GST No.';
        }
        field(50110; TinNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Tin No.';
        }
        
        field(50112; CustomerDetails; Text[50])
        {
            DataClassification = ToBeClassified;

        }
    }

    var

        myInt: Integer;

    trigger OnAfterInsert()
    var
       Purchase_Set: Record "Purchase Header";
        Vendor: Record Vendor;
    begin
        Purchase_Set.Get();
        if Purchase_Set.LicencseNo_ <> ' ' then begin
            Rec.LicencseNo_ := Purchase_Set.LicencseNo_;
        end else begin
            Error('Please fill Licencse No in Customer Card');
        end;
    begin
        IF Vendor.get("Buy-from Vendor No.") then begin
            Rec."GSTNo" := Vendor."VendorGSTNo";
            Rec.Modify();
        end;
    end;
    end;


}