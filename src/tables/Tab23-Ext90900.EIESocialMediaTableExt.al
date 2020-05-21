tableextension 90900 "EIE Socail Media" extends Vendor
{
    fields
    {
        field(90900; Facebook; Text[50])
        {
            Caption = 'Facebook';
            DataClassification = CustomerContent;
        }
        field(90901; Twitter; Text[30])
        {
            Caption = 'Twitter';
            DataClassification = CustomerContent;
        }
        field(90902; Instagram; Text[50])
        {
            Caption = 'Instagram';
            DataClassification = CustomerContent;
        }
        field(90903; LinkedIn; Text[50])
        {
            Caption = 'LinkedIn';
            DataClassification = CustomerContent;
        }
    }
}