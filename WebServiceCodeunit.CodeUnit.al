 codeunit 50002 checkCustomerWS
 {
    local procedure CallCustomerWS(CustNo: text[50])  ReturnValue: TExt[50]
     var
       Customer: Record Customer;
    begin
       if Customer.GET(CustNo) then
         ReturnValue := StrSubstNo('')
    end;
    
   
 }