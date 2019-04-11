page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setup";
    InsertAllowed = false;
    DeleteAllowed = false;
    
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Seminar Nos.";"Seminar Nos.")
                {
                    ApplicationArea = All;
                    
                }
                field("Seminar Registration Nos.";"Seminar Registration Nos.")
                {
                    ApplicationArea = All;
                    
                }
                field("Posted Seminar Reg. Nos.";"Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if not get then
          insert;
    end;
    
    var
        myInt: Integer;
}