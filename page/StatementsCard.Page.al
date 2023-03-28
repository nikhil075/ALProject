page 50112 "Statements Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;


    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    Caption = 'Difficulity';
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        GetSuggestion();
                    end;


                }

            }
            group(output)
            {
                Caption = 'Output';

                field(Suggestion; Suggestion)
                {
                    Caption = 'Suggestion';
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Level; Level)
                {
                    Caption = 'Level';
                    ApplicationArea = All;
                    Editable = false;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;

    local procedure GetSuggestion()
    var
        myInt: Integer;
    begin
        Level := '';
        Suggestion := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
            10 .. 15:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Practice and self study';
                end;
        end;
    end;
}
