page 90903 "EIE Statements Card"
{
    Caption = 'Statements Card';
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
                    Caption = 'Difficulty';
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;
                }
            }
            group(Output)
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

    local procedure GetSuggestion()
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
        end;
    end;

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;
}