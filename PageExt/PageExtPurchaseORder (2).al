pageextension 50107 PourchaseOrderExtension extends "Purchase Order"
{
    layout
    {
        addlast(General)
        {
            field(GSTNo; Rec.GSTNo)
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
        
        
        addafter("Payment Terms Code")
        {
            field(LicencseNo_; Rec.LicencseNo_)
            {
                ApplicationArea = all;
                Caption = 'License No.';
            }
        }
         
    }
    actions
    {
       
    }

    var
        myInt: Integer;
}