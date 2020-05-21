pageextension 90900 "EIE Social Media Card" extends "Vendor Card"
{
    layout
    {
        addlast(General)
        {
            field(Facebook; Facebook) { ApplicationArea = All; }
            field(Twitter; Twitter) { ApplicationArea = All; }
            field(Instagram; Instagram) { ApplicationArea = All; }
            field(LinkedIn; LinkedIn) { ApplicationArea = All; }
        }
    }
}