﻿<%@ Page Title="Page 3" Language="C#" MasterPageFile="~/Shi.Master" AutoEventWireup="true" CodeFile="page3.aspx.cs" Inherits="_Page3" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Associate page3.aspx to the Master Page named Shi.master #ps-->
    <div class="jumbotron">
        <h2>Page 3</h2>
        <p class="lead">Page should contain a DropDownList with its options’ values and text populated from two fields in Product table. 
            Option values should be set to the value of the primary key from the table. DDL should be sorted by text field.</p>

        <label>Product ID:</label>

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PRODUCT_ID" 
            DataValueField="PRODUCT_ID"></asp:DropDownList>

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
                <asp:BoundField DataField="PRODUCT_NAME" HeaderText="PRODUCT_NAME" SortExpression="PRODUCT_NAME" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=&quot;128.172.188.42, 14330&quot;;Initial Catalog=fall16_g3;Persist Security Info=True;User ID=fall16_g3;Password=Fallgrp3!" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [PRODUCT_ID], [PRODUCT_NAME] FROM [PRODUCT] ORDER BY [PRODUCT_NAME]"></asp:SqlDataSource>



    </div>


</asp:Content>
