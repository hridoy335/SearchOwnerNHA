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
            <asp:BoundField DataField="OwnerID" HeaderText="OwnerID" SortExpression="OwnerID" />
            <asp:BoundField DataField="ProjectID" HeaderText="ProjectID" SortExpression="ProjectID" />
            <asp:BoundField DataField="FormNo" HeaderText="FormNo" SortExpression="FormNo" />
            <asp:BoundField DataField="PlotNo" HeaderText="PlotNo" SortExpression="PlotNo" />
            <asp:BoundField DataField="FlatNo" HeaderText="FlatNo" SortExpression="FlatNo" />
            <asp:BoundField DataField="OwnerSrlNo" HeaderText="OwnerSrlNo" SortExpression="OwnerSrlNo" />
            <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" SortExpression="OwnerName" />
            <asp:BoundField DataField="OwnerFName" HeaderText="OwnerFName" SortExpression="OwnerFName" />
            <asp:BoundField DataField="OwnerNationalID" HeaderText="OwnerNationalID" SortExpression="OwnerNationalID" />
            <asp:BoundField DataField="OwnerDateOfBirth" HeaderText="OwnerDateOfBirth" SortExpression="OwnerDateOfBirth" />
            <asp:BoundField DataField="OwnerPresentAddress" HeaderText="OwnerPresentAddress" SortExpression="OwnerPresentAddress" />
            <asp:BoundField DataField="OwnerPermanentAddress" HeaderText="OwnerPermanentAddress" SortExpression="OwnerPermanentAddress" />
            <asp:BoundField DataField="OwnerMobileNo" HeaderText="OwnerMobileNo" SortExpression="OwnerMobileNo" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" SelectCommand="SELECT * FROM [tblPlotOwner] WHERE ([OwnerMobileNo] = @OwnerMobileNo) OR ([OwnerName] = @OwnerName) OR ([OwnerNationalID] = @OwnerNationalID)  ">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxSearch" Name="OwnerMobileNo" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBoxSearch" Name="OwnerName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBoxSearch" Name="OwnerNationalID" PropertyName="Text" Type="String" />
            <%--<asp:ControlParameter ControlID="TextBoxSearch" Name="OwnerID" PropertyName="text" Type="String" />--%>
        </SelectParameters>
    </asp:SqlDataSource>
&nbsp;
</asp:Content>
