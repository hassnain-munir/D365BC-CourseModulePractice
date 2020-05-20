page 90900 "EIE Course Card"
{
    Caption = 'Course Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "EIE Course";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; Code) { ApplicationArea = All; }
                field(Name; Name) { ApplicationArea = All; }
                field(Description; Description) { ApplicationArea = All; }
            }
            group(Details)
            {
                Caption = 'Details';
                field(Duration; Duration) { ApplicationArea = All; }
                field(Price; Price) { ApplicationArea = All; }
                field(Type; Type) { ApplicationArea = All; }
                field(Active; Active) { ApplicationArea = All; }
                field(Difficulty; Difficulty) { ApplicationArea = All; Visible = false; }
                field("Passing Rate"; "Passing Rate") { ApplicationArea = All; Visible = false; }
                field("Instructor Code"; "Instructor Code") { ApplicationArea = All; }
                field("Instructor Name"; "Instructor Name") { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Resource Card")
            {
                Caption = 'Resource';
                ToolTip = 'Open the Resource Card';
                ApplicationArea = All;
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor Code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
    }
}