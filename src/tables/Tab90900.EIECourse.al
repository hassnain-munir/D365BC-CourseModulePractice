table 90900 "EIE Course"
{
    Description = 'Courses';
    LookupPageId = "EIE Course List";
    DrillDownPageId = "EIE Course List";
    fields
    {
        field(10; Code; Code[10]) { }
        field(20; Name; Text[30]) { }
        field(30; Description; Text[50]) { }
        field(40; Type; Enum "EIE Type") { }
        field(50; Duration; Decimal) { }
        field(60; Price; Decimal) { }
        field(70; Active; Boolean) { }
        field(80; Difficulty; Integer) { }
        field(90; "Passing Rate"; Integer) { }
        field(100; "Instructor Code"; Code[20])
        {
            TableRelation = Resource where(Type = const(Person));
        }
        field(120; "Instructor Name"; Text[50])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Lookup (Resource.Name WHERE("No." = FIELD("Instructor Code")));
        }
    }

    keys
    {
        key(PrimaryKey; Code) { Clustered = true; }
        key("Secondary Key 1"; "Instructor Code") { }
        key("Secondary Key 2"; Type) { }
    }
}