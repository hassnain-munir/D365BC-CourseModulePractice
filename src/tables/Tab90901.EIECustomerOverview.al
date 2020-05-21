table 90901 "EIE Customer Overview"
{
    Caption = 'Customer Overview';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer) { DataClassification = CustomerContent; }
        field(2; "Customer No."; Code[20]) { DataClassification = CustomerContent; }
        field(3; "Customer Name"; Text[50]) { DataClassification = CustomerContent; }
        field(4; "Source Code"; Code[20]) { DataClassification = CustomerContent; }
        field(5; Amount; Decimal) { DataClassification = CustomerContent; }
        field(6; LastRunDate; DateTime) { DataClassification = CustomerContent; }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}