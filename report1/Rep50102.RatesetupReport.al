report 50102 "Ratesetup Report"
{
    ApplicationArea = All;
    Caption = 'Ratesetup Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Reportlayout\Untitled.rdl';
    dataset
    {
        dataitem(FreightRateSetup; "Freight Rate Setup")
        {
            column(Code; "Code")
            {
            }
            column(StartDate; StartDate)
            {
            }
            column(EndDate; EndDate)
            {
            }
            column(TransportShippingAgent; "Transport/Shipping Agent")
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
