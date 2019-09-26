<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchOwner.aspx.cs" Inherits="OwnerSearch.SearchOwner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Owner Name"></asp:Label>
    <br />
    <asp:TextBox ID="TextBoxSearch" runat="server" Width="265px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
    <br />
    <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No data found" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" >
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="EstateID" HeaderText="EstateID" SortExpression="EstateID" />
            <asp:BoundField DataField="OwnerID" HeaderText="OwnerID" SortExpression="OwnerID" />
            <asp:BoundField DataField="ProjectID" HeaderText="ProjectID" SortExpression="ProjectID" />
            <asp:BoundField DataField="SubProjectID" HeaderText="SubProjectID" SortExpression="SubProjectID" />
            <asp:BoundField DataField="FormNo" HeaderText="FormNo" SortExpression="FormNo" />
            <asp:BoundField DataField="AllotmentID" HeaderText="AllotmentID" SortExpression="AllotmentID" />
            <asp:BoundField DataField="FileNo" HeaderText="FileNo" SortExpression="FileNo" />
            <asp:BoundField DataField="AllotmentMemoNo" HeaderText="AllotmentMemoNo" SortExpression="AllotmentMemoNo" />
            <asp:BoundField DataField="AllotmentMemoDate" HeaderText="AllotmentMemoDate" SortExpression="AllotmentMemoDate" />
            <asp:BoundField DataField="NumberofOwner" HeaderText="NumberofOwner" SortExpression="NumberofOwner" />
            <asp:BoundField DataField="PlotNo" HeaderText="PlotNo" SortExpression="PlotNo" />
            <asp:BoundField DataField="PlotArea" HeaderText="PlotArea" SortExpression="PlotArea" />
            <asp:BoundField DataField="PlotUnit" HeaderText="PlotUnit" SortExpression="PlotUnit" />
            <asp:BoundField DataField="BlockName" HeaderText="BlockName" SortExpression="BlockName" />
            <asp:BoundField DataField="SectionName" HeaderText="SectionName" SortExpression="SectionName" />
            <asp:BoundField DataField="RoadNo" HeaderText="RoadNo" SortExpression="RoadNo" />
            <asp:BoundField DataField="LaneNo" HeaderText="LaneNo" SortExpression="LaneNo" />
            <asp:BoundField DataField="AvenueNo" HeaderText="AvenueNo" SortExpression="AvenueNo" />
            <asp:BoundField DataField="PlotType" HeaderText="PlotType" SortExpression="PlotType" />
            <asp:BoundField DataField="FlatNo" HeaderText="FlatNo" SortExpression="FlatNo" />
            <asp:BoundField DataField="GarageType" HeaderText="GarageType" SortExpression="GarageType" />
            <asp:BoundField DataField="GrageAllotmentNo" HeaderText="GrageAllotmentNo" SortExpression="GrageAllotmentNo" />
            <asp:BoundField DataField="GrageAllotmentDate" HeaderText="GrageAllotmentDate" SortExpression="GrageAllotmentDate" />
            <asp:BoundField DataField="RefNo" HeaderText="RefNo" SortExpression="RefNo" />
            <asp:BoundField DataField="OwnerSrlNo" HeaderText="OwnerSrlNo" SortExpression="OwnerSrlNo" />
            <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" SortExpression="OwnerName" />
            <asp:BoundField DataField="OwnerFName" HeaderText="OwnerFName" SortExpression="OwnerFName" />
            <asp:BoundField DataField="OwnerHName" HeaderText="OwnerHName" SortExpression="OwnerHName" />
            <asp:BoundField DataField="OwnerMName" HeaderText="OwnerMName" SortExpression="OwnerMName" />
            <asp:BoundField DataField="OwnerWName" HeaderText="OwnerWName" SortExpression="OwnerWName" />
            <asp:BoundField DataField="OwnerNationalID" HeaderText="OwnerNationalID" SortExpression="OwnerNationalID" />
            <asp:BoundField DataField="OwnerDateOfBirth" HeaderText="OwnerDateOfBirth" SortExpression="OwnerDateOfBirth" />
            <asp:BoundField DataField="OwnerPresentAddress" HeaderText="OwnerPresentAddress" SortExpression="OwnerPresentAddress" />
            <asp:BoundField DataField="OwnerPermanentAddress" HeaderText="OwnerPermanentAddress" SortExpression="OwnerPermanentAddress" />
            <asp:BoundField DataField="OwnerMobileNo" HeaderText="OwnerMobileNo" SortExpression="OwnerMobileNo" />
            <asp:BoundField DataField="OwnerEmail" HeaderText="OwnerEmail" SortExpression="OwnerEmail" />
            <asp:BoundField DataField="OwnerTIN" HeaderText="OwnerTIN" SortExpression="OwnerTIN" />
            <asp:BoundField DataField="FastAllotteeName" HeaderText="FastAllotteeName" SortExpression="FastAllotteeName" />
            <asp:BoundField DataField="ProGetttingPlot" HeaderText="ProGetttingPlot" SortExpression="ProGetttingPlot" />
            <asp:BoundField DataField="PresentConditionPlot" HeaderText="PresentConditionPlot" SortExpression="PresentConditionPlot" />
            <asp:BoundField DataField="PreviousLesse" HeaderText="PreviousLesse" SortExpression="PreviousLesse" />
            <asp:BoundField DataField="Payment" HeaderText="Payment" SortExpression="Payment" />
            <asp:BoundField DataField="PaidAmount" HeaderText="PaidAmount" SortExpression="PaidAmount" />
            <asp:BoundField DataField="InstallmentNo" HeaderText="InstallmentNo" SortExpression="InstallmentNo" />
            <asp:BoundField DataField="Dues" HeaderText="Dues" SortExpression="Dues" />
            <asp:BoundField DataField="LeaseResNo" HeaderText="LeaseResNo" SortExpression="LeaseResNo" />
            <asp:BoundField DataField="LeaseResDate" HeaderText="LeaseResDate" SortExpression="LeaseResDate" />
            <asp:BoundField DataField="ProGettingAllotment" HeaderText="ProGettingAllotment" SortExpression="ProGettingAllotment" />
            <asp:BoundField DataField="MortgageName" HeaderText="MortgageName" SortExpression="MortgageName" />
            <asp:BoundField DataField="ClearanceCerNo" HeaderText="ClearanceCerNo" SortExpression="ClearanceCerNo" />
            <asp:BoundField DataField="ClearanceCerDate" HeaderText="ClearanceCerDate" SortExpression="ClearanceCerDate" />
            <asp:BoundField DataField="CourtCaseNo" HeaderText="CourtCaseNo" SortExpression="CourtCaseNo" />
            <asp:BoundField DataField="CourtCaseDate" HeaderText="CourtCaseDate" SortExpression="CourtCaseDate" />
            <asp:CheckBoxField DataField="HasSpouse" HeaderText="HasSpouse" SortExpression="HasSpouse" />
            <asp:BoundField DataField="OwnerComments" HeaderText="OwnerComments" SortExpression="OwnerComments" />
            <asp:BoundField DataField="OpName" HeaderText="OpName" SortExpression="OpName" />
            <asp:BoundField DataField="EntryDate" HeaderText="EntryDate" SortExpression="EntryDate" />
            <asp:BoundField DataField="MyRemarks" HeaderText="MyRemarks" SortExpression="MyRemarks" />
            <asp:BoundField DataField="OwnerImageFile" HeaderText="OwnerImageFile" SortExpression="OwnerImageFile" />
            <asp:BoundField DataField="OwnerSignFile" HeaderText="OwnerSignFile" SortExpression="OwnerSignFile" />
            <asp:BoundField DataField="OwnerFingerFile" HeaderText="OwnerFingerFile" SortExpression="OwnerFingerFile" />
            <asp:CheckBoxField DataField="IsChecked" HeaderText="IsChecked" SortExpression="IsChecked" />
            <asp:BoundField DataField="FileName" HeaderText="FileName" SortExpression="FileName" />
            <asp:BoundField DataField="IsBlock" HeaderText="IsBlock" SortExpression="IsBlock" />
            <asp:BoundField DataField="IsPaymentBlock" HeaderText="IsPaymentBlock" SortExpression="IsPaymentBlock" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" SelectCommand="SELECT * FROM [tblPlotOwner] WHERE ([OwnerName] = @OwnerName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxSearch" Name="OwnerName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
&nbsp;
</asp:Content>
