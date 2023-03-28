report 50101 "Customer Invoice"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Customer layout.rdl';


    dataset
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; "No.")
            {
            }
            column(CustomerName; Name)
            {
            }
            dataitem(CustomerLedgers; "Cust. Ledger Entry")
            {
                column(CustomerLedgersCustomerNo; "Customer No.")
                {
                }
                column(CustomerLedgersAmountLCY; "Amount (LCY)")
                {
                }
            }
        }
    }


    var
        myInt: Integer;
}