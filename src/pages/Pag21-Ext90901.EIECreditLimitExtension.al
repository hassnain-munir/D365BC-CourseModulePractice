pageextension 90901 "EIE Credit Limit Ext." extends "Customer Card"
{
    actions
    {
        addlast("F&unctions")
        {
            action(UpdateCreditLimit)
            {
                Caption = 'Update Credit Limit';
                Image = CalculateCost;
                Promoted = true;
                PromotedIsBig = true;
                trigger OnAction()
                begin
                    CallUpdateCreditLimit();
                end;
            }
        }
    }

    procedure CallUpdateCreditLimit()
    var
        CreditLimitCalculated: Decimal;
        CreditLimitActual: Decimal;
    begin
        CreditLimitCalculated := Rec.CalculateCreditLimit();
        if CreditLimitCalculated = Rec."Credit Limit (LCY)" then begin
            Message(CreditLimitUpToDateTxt);
            exit;
        end;

        if GuiAllowed() then
            if not Confirm(AreYouSureQst, false, FieldCaption("Credit Limit (LCY)"), CreditLimitCalculated) then
                exit;

        CreditLimitActual := CreditLimitCalculated;
        Rec.UpdateCreditLimit(CreditLimitActual);
        if CreditLimitActual <> CreditLimitCalculated then
            Message(CreditLimitROundedTxt, CreditLimitActual);
    end;

    var
        myInt: Integer;
        AreYouSureQst: Label 'Are you sure that you want to set the %1 to %2?';
        CreditLimitUpToDateTxt: Label 'The credit limit was rounded to %1 to comply with company policies.';
        CreditLimitROundedTxt: Label 'The credit limit is up to date.';
}