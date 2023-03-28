report 50103 "Purchase order Report "
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Reportlayout/NewPurchaseReport.rdl';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "No.";
            DataItemTableView = sorting("No.");

            column(CompInfo_Address; CompInfo.Address) { }
            column(CompInfopicture; CompInfo.Picture) { }
            column(CompInfo_Name; CompInfo.Name) { }
            column(CompInfo_city; CompInfo.City) { }
            column(CompInfo_countrycode; CompInfo."Country/Region Code") { }
            column(CompInfo_Email; CompInfo."E-Mail") { }
            column(CompInfo_phoneNo; CompInfo."Phone No.") { }
            column(CompInfo; CompInfo."Registration No.") { }
            column(Amount; Amount) { }
            column(Vendor_Order_No_; "Vendor Order No.") { }
            column(Vendor_Invoice_No_; "Vendor Invoice No.") { }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name") { }
            column(Ship_to_Name; "Ship-to Name") { }
            column(Ship_to_Address; "Ship-to Address") { }
            column(Ship_to_City; "Ship-to City") { }
            column(Ship_to_Code; "Ship-to Code") { }
            column(Ship_to_Contact; "Ship-to Contact") { }
            column(Ship_to_Post_Code; "Ship-to Post Code") { }
            column(Ship_to_County; "Ship-to County") { }
            column(Document_Date; "Document Date") { }


            dataitem("Purchase Line"; "Purchase Line")
            {

                DataItemLink = "Document No." = field("No.");
                column(Quantity; Quantity) { }
                column(Unit_Cost; "Unit Cost") { }
                column(Unit_Price; "Unit Price (LCY)") { }
                column(Item_Description; "Purchase Line".Description) { }
                column(Item_Reference_No_; "Item Reference No.") { }
                column(Unit_of_Measure; "Unit of Measure") { }
                column(Line_Discount__; "Line Discount %") { }
                column(No_; "No.") { }
                column(SNo; " SNo.")
                {

                }
                trigger OnAfterGetRecord()
                begin
                    " SNo." := " SNo." + 1;
                    if Vendor.get("Buy-from Vendor No.") then begin

                    end;
                end;

            }


        }



    }
    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        CompInfo.Get;
        CompInfo.CalcFields(Picture)
    end;


    var
        CompInfo: Record "Company Information";
        Item: Record Item;
        Vendor: Record Vendor;

}