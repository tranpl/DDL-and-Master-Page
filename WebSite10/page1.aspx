﻿<%@ Page Title="Page 1" Language="C#" MasterPageFile="~/Patrick.Master" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="_Page1" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Associate page1.aspx to the Master Page named Patrick.master-->
    <div class="jumbotron">
        <h2>Page 1</h2>
        <p class="lead">Page should contain a DropDownList with its options’ values and text populated from two fields in Product table. 
            Option values should be set to the value of the primary key from the table. DDL should be sorted by text field.</p>

        <label>Select Product:</label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PRODUCT_NAME" 
            DataValueField="PRODUCT_ID">
            <asp:ListItem Enabled="true" Text="Select Product" Value="-1"></asp:ListItem>
            <asp:ListItem Text="Blue Adult Dog Food" Value="1"></asp:ListItem>
            <asp:ListItem Text="KONG Classic Dog Toy" Value="2"></asp:ListItem>
            <asp:ListItem>Simply Nourish Adult Dog Food</asp:ListItem>
            <asp:ListItem>Southeast Life Sing Door Folding Dog Crate</asp:ListItem>
            <asp:ListItem>Top Paw Dog Bowl</asp:ListItem>
        </asp:DropDownList>
        

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
                <asp:BoundField DataField="PRODUCT_NAME" HeaderText="PRODUCT_NAME" SortExpression="PRODUCT_NAME" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fall16_g3ConnectionString2 %>" SelectCommand="SELECT [PRODUCT_ID], [PRODUCT_NAME] FROM [PRODUCT] ORDER BY [PRODUCT_NAME]"></asp:SqlDataSource>



    </div>

 
</asp:Content>
