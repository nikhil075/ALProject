pageextension 50115 ItemExtension extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            field(BarCode; Rec.BarCode)
            {
                ApplicationArea = All;
                Caption='Bar Code';

            }
        }
    }
       actions
    {
        addlast(Functions){
           

    action(ImportItemPicture)
    {
        Caption = 'Import Item Picture';
        ApplicationArea = All;
        Image = Import;

        trigger OnAction()
            var ImageManagement : Codeunit "ImageManagement";
        begin
           ImageManagement.ImportItemPicture(Rec);                
        end;
    }

        }
    }
    

    var
        myInt: Integer;
}