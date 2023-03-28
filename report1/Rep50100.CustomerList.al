report 50105 "CustomerList 2"
{
    ApplicationArea = All;
    Caption = 'Customer List';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'CustomerList.rdl';
    dataset
    {
        dataitem(Customer; Customer)
        {
            // DataItemTableView =where(Balance = filter(> 0));
            
            
            column(LocationCode; "Location Code")
            {
            }
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Address; Address)
            {
            }
            column(Balance; Balance)
            {
            }
            column(BalanceDue; "Balance Due")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
