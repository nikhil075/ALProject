page 50103 test1 
{
    ApplicationArea = All;
    Caption = 'test1';
    PageType = Card;
    SourceTable = test1;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Id2; Rec.Id)
                {
                   
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone No. field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State field.';
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Country field.';
                }

                field("Employee Id"; Rec."Employee Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Id field.';
                }





            }
        }
    }
}
