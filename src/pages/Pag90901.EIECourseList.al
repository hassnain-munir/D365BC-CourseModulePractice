page 90901 "EIE Course List"
{
    Caption = 'Course List';
    PageType = List;
    Editable = false;
    CardPageId = "EIE Course Card";
    UsageCategory = Lists;
    SourceTable = "EIE Course";
    ApplicationArea = All;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field(Code; Code) { ApplicationArea = All; }
                field(Name; Name) { ApplicationArea = All; }
                field(Description; Description) { ApplicationArea = All; }
                field(Price; Price) { ApplicationArea = All; }
                field("Instructor Name"; "Instructor Name") { ApplicationArea = All; }
            }
        }
    }
}