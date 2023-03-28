pageextension 50101 "Sales Order Subform Page Ext" extends "Sales Order Subform"
{
    layout
    {
        addafter(Quantity)
        {
            field(Weight; Rec.Weight)
            {
                ApplicationArea = all;
                trigger OnValidate()
                begin
                    If Rec.Quantity <> 0 then begin
                
                        if Rec.Weight<>0 then begin
                            Rec."Total Weight" := Rec.Weight * Rec.Quantity;
                        end else begin
                            Error('Enter Weight ')
                        end;
                    end else 
                    begin
                        Error('Please Enter Quantity First')
                    end 
                end;
                

            }
            field("Total Weight"; Rec."Total Weight")
            {
                ApplicationArea = all;
                Editable=false;
                
            }
            field("Total Quantity";Rec."Total Quantity")
            {
                ApplicationArea = All;
                Editable=false;
            }
        }
        addafter("Tax Area Code")
        {

            field(BarCode; Rec.BarCode)
            {
                ApplicationArea = all;
                Caption = 'BAR Code.';
                Editable = false;
            }
        }
    }


}
