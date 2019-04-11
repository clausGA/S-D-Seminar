pageextension 50100 "ResourceCard_Extra" extends "Resource Card" 
{
    layout
    {
        addlast(General)
        {
            
            field("CSD Resource Type";"CSD Resource Type")
            {
            }
            field("CSD Quantity Per Day";"CSD Quantity Per Day")
            {}

        }
        // Add changes to page layout here
        addlast(Content)
        {
            group(Room)
            {
                field("CSD Maximum Participants";"CSD Maximum Participants")
                {}
            }
        }
        modify(Type)
        {
            Visible = roomvisible;
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if GetFilter(Type) <> '' then
          roomvisible := false
          else
          roomvisible := true;
          
    end;
    
    var
        myInt: Integer;
        roomvisible: boolean;
}