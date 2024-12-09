report 50112 "ZY Purchase Order Report"
{
    Caption = 'ZY Purchase Order Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = MyLayout;
    dataset
    {
        dataitem(Integer; Integer)
        {
            column(Buy_from_Vendor_No_; ZYPurchaseOrderQuery.Buy_from_Vendor_No_)
            {
            }
            column(Buy_from_Vendor_Name; ZYPurchaseOrderQuery.Buy_from_Vendor_Name)
            {
            }
            column(Order_Date; ZYPurchaseOrderQuery.Order_Date)
            {
            }
            column(Amount_Including_VAT; ZYPurchaseOrderQuery.Amount_Including_VAT)
            {
            }
            column(No_; ZYPurchaseOrderQuery.No_)
            {
            }
            column(Description; ZYPurchaseOrderQuery.Description)
            {
            }
            column(Quantity; ZYPurchaseOrderQuery.Quantity)
            {
            }
            column(Amount; ZYPurchaseOrderQuery.Amount)
            {
            }
            column(Inventory; ZYPurchaseOrderQuery.Inventory)
            {
            }

            trigger OnPreDataItem()
            begin
                ZYPurchaseOrderQuery.Open();
            end;

            trigger OnAfterGetRecord()
            begin
                if not ZYPurchaseOrderQuery.Read() then
                    CurrReport.Break();
            end;
        }
    }
    rendering
    {
        layout(MyLayout)
        {
            Type = Word;
            LayoutFile = 'ZYPurchaseOrderReport.docx';
        }
    }

    var
        ZYPurchaseOrderQuery: Query "ZY Purchase Order Query";
}
