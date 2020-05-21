codeunit 90900 "EIE Validations"
{
    procedure CheckForPlusSign(TextToVerify: Text)
    var
        Pos: Integer;
    begin
        Pos := StrPos(TextToVerify, '+');
        If Pos <> 0 then
            Message('Plus + sign is found');
    end;
}