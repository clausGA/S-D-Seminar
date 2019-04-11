tableextension 50100 Reource_ExtraFields extends Resource
{
    fields
    {
        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Internal,External;
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                rec.testfield("Unit Cost");     
            end;
           
            
                    }
            modify(Type)
            {
                OptionCaption = 'Instructor,Room';
            }
        // Add changes to table fields here
    }
    
    var
        myInt: Integer;
}