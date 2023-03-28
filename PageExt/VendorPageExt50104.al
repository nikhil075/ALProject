pageextension 50106 VendorCardExtension extends "Vendor Card"
{
    layout
    {
        addlast(General)
        {
            field(GSTNo; Rec.VendorGSTNo)
            {
                ApplicationArea = all;
                Caption = 'GST No.';
            }
            field(TinNo; Rec.TinNo)
            {
                ApplicationArea = all;
                Caption = 'TIN No.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}