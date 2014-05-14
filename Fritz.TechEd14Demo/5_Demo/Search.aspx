<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Fritz.TechEd14Demo._5_Demo.Search" %>

<%@ Register Src="~/ViewSwitcher.ascx" TagPrefix="uc1" TagName="ViewSwitcher" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

      <h2>My Games for Sale</h2>

      <asp:GridView runat="server" ID="grid" DataKeyNames="ID" OnCallingDataMethods="grid_CallingDataMethods"
        SelectMethod="Get" AllowSorting="true" AutoGenerateColumns="false">

        <Columns>
          <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="id" />
          <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
          <asp:BoundField DataField="PriceUSD" HeaderText="Price USD" SortExpression="PriceUSD" />
          <asp:BoundField DataField="InStock" HeaderText ="# In Stock" SortExpression="InStock" />
          <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="/5_Demo/Edit/{0}" Text="Edit"></asp:HyperLinkField>
        </Columns>

      </asp:GridView>
    
      <uc1:ViewSwitcher runat="server" ID="ViewSwitcher" />
    </div>
    </form>
</body>
</html>
