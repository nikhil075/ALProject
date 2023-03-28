codeunit 50101 NewCodeunit
{
    
    var
        myInt: Integer;
[EventSubscriber(ObjectType::Table, Database::"G/L Entry", 'OnAfterCopyGLEntryFromGenJnlLine', '', false, false)]
local procedure OnAfterCopyGLEntryFromGenJnlLine(var GLEntry: Record "G/L Entry"; var GenJournalLine: Record "Gen. Journal Line");
begin
    GLEntry."Reason Code" := GenJournalLine."Reason Code";
    GLEntry."Gen. Posting Type" := GenJournalLine."Gen. Posting Type";
end;
}