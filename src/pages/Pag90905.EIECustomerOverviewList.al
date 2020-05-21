page 90905 "EIE Customer Overview List"
{
    Caption = 'Customer Overview List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "EIE Customer Overview";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; "Entry No.") { ApplicationArea = All; }
                field("Customer No."; "Customer No.") { ApplicationArea = All; }
                field("Customer Name"; "Customer Name") { ApplicationArea = All; }
                field("Source Code"; "Source Code") { ApplicationArea = All; }
                field(Amount; Amount) { ApplicationArea = All; }
                field(LastRunDate; LastRunDate) { ApplicationArea = All; }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Import Records")
            {
                Caption = 'Import Records';
                Image = Import;
                ApplicationArea = All;

                trigger OnAction()
                var
                    UpdateCustomerOverview: Codeunit "EIE Customer Management";
                begin
                    UpdateCustomerOverview.Run();
                end;
            }
        }
    }
}