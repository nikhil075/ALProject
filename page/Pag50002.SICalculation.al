page 50108 "SI Calculation"
{
    Caption = 'SI Calculation';
    PageType = Card;
    SourceTable = "Simple Interst Calculation";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(input)
            {
                Caption = 'Input';
                field(InitAmount; Rec.InitAmount)
                {
                    Caption = 'InitAmount';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the InitAmount field.';
                }
                field(NoOfYears; Rec.NoOfYears)
                {
                    Caption = 'NoOfYears';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the NoOfYears field.';
                }
                field(Rateofinterest; Rec.Rateofinterest)
                {
                    Caption = 'Rateofinterest';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rateofinterest field.';
                }
            }
            group(output)
            {
                field(FinalAmt; Rec.FinalAmt)
                {
                    Caption = 'FinalAmt';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FinalAmt field.';
                    Editable = false;
                }
            }

        }
    }}