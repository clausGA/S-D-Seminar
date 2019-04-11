pageextension 50101 "ResourceListExtra" extends "Resource List"
{
    layout
    {
        addafter(Type)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {

            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {
Visible = showmaxparticipants;
            }
        }
        modify(type)
        {
            Visible = showtype;
        }
        
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if GetFilter(type) = '' then
         showtype := true
         else
         showtype := false;
        if GetFilter(Type) = format(Type::Machine) then
        showmaxparticipants := false
        else
        showmaxparticipants := true;
    end;

    var
        myInt: Integer;
        showtype: Boolean;
        showmaxparticipants: boolean;
}