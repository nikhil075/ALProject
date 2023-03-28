report 50130 "Sales Invoice"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Sales layout.rdl';


    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(No_; "No.")
            {

            }

            column("Bill_to_Customer_No_"; "Bill-to Customer No.")
            {

            }
            column(Bill_to_Address; "Bill-to Address")
            {

            }
            column(Bill_to_City; "Bill-to City")
            {

            }
            column(Bill_to_Contact; "Bill-to Contact")
            {

            }
            column("Amount"; Amount)
            {

            }

        }
        dataitem(CustLedgerEntry; "Sales Line")
        {
            DataItemLinkReference = "Sales Header";
            DataItemLink = "Document No." = field("No.");
            column(No__; "No.")
            {

            }
            column(Document_No; "Document No.")
            {

            }
            column(Bill_to_Customer_No; "Bill-to Customer No.")
            {

            }
            column(Document_No_; "Document No.") { }
            column(Amount_; Amount) { }
        }
    }





    var
        myInt: Integer;
}