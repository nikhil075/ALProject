report 50109 "Sales Order Report"
{
    ApplicationArea = All;
    Caption = 'Sales Order Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Reportlayout/SalesOrderLayout.rdl';
    dataset
    {

        dataitem(SalesHeader; "Sales Header")
        {

            RequestFilterFields = "No.";
            DataItemTableView = sorting("Document Type", "No.");
            PrintOnlyIfDetail = true;

            column(Ship_to_Address; "Ship-to Address")
            {
            }
            column(Ship_to_Address_2; "Ship-to Address 2")
            {

            }
            column(Ship_to_City; "Ship-to City") { }
            column(Ship_to_Code; "Ship-to Code") { }
            column(Ship_to_Name; "Ship-to Name") { }
            column(Ship_to_Country_Region_Code; "Ship-to Country/Region Code")
            {
            }

            column(State; State) { }
            column(Ship_to_Contact; "Ship-to Contact") { }
            column(Ship_to_Post_Code; "Ship-to Post Code") { }
            column(SelltoCustomerName; "Sell-to Customer Name")
            {
            }
            column(SelltoCustomerNo; "Sell-to Customer No.")
            {
            }

            column(Location_State_Code; "Location State Code") { }

            column(No; "No.")
            {
            }
            column(CompanyInfoPic; CompanyInformation.Picture)
            {
            }
            column(CompanyAddress; CompanyInformation.Address) { }
            column(CompanyName; CompanyInformation.Name) { }
            column(companyCity; companyInformation.City) { }
            column(companyGST; companyInformation."GST Registration No.") { }

            column(ship_to_state; StateDis1) { }
            column(companyEmail; companyInformation."E-Mail") { }
            column(CompState; StateDis)
            { }
            column(companyCIN; companyInformation."Registration No.")
            {

            }
            column(CompanyStateCode; CompanyInformation."State Code") { }
            column(Customer_GST_Reg__No_; "Customer GST Reg. No.") { }
            column(Bill_to_Address; "Bill-to Address")
            {

            }

            column(Bill_to_Address_2; "Bill-to Address 2") { }
            column(Bill_to_City; "Bill-to City") { }
            column(Bill_to_Contact; "Bill-to Contact") { }
            column(Bill_to_Country_Region_Code; "Bill-to Country/Region Code") { }
            column(Bill_to_Post_Code; "Bill-to Post Code") { }
            column(Bill_to_Name; "Bill-to Name") { }
            column(companyPAN; companyInformation."P.A.N. No.") { }

            column(Payment_Terms_Code; "Payment Terms Code") { }

            dataitem("Sales Line"; "Sales Line")
            {
                DataItemTableView = where(Amount = filter(> 0));
                DataItemLinkReference = SalesHeader;
                DataItemLink = "Document No." = field("No.");


                column(Description; Description)
                {

                }
                column(Quantity; Quantity)

                { }
                column(HSN_SAC_Code; "HSN/SAC Code") { }

                column(Unit_Price; "Unit Price") { }

                column(Line_Discount__; "Line Discount %") { }
                column(Unit_of_Measure; "Unit of Measure") { }
                column(Line_Amount__; "Line Amount") { }
                column(SerialNo; SerialNo) { }
                column(Shipment_Date; "Shipment Date") { }

            }
            trigger OnAfterGetRecord()
            begin
                SerialNo += 1;
                states.reset();
                states.setrange(Code, CompanyInformation."State Code");
                if States.FindFirst() then
                    StateDis := States.Description;

                states.Reset();
                states.SetRange(code, State);
                if states.FindFirst() then
                    stateDis1 := states.Description;
            end;

        }
    }

    trigger OnPreReport()
    begin
        companyInformation.get;
        companyInformation.CalcFields(Picture);
    end;

    var
        myInt: Integer;
        companyInformation: Record "Company Information";
        states: Record 18547;
        StateDis: text;
        StateDis1: text;
        SerialNo: Integer;

}