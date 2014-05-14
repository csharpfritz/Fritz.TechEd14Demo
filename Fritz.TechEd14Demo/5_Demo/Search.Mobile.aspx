<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.Mobile.aspx.cs" Inherits="Fritz.TechEd14Demo._5_Demo.Search_Mobile" %>

<%@ Register Src="~/ViewSwitcher.ascx" TagPrefix="uc1" TagName="ViewSwitcher" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Search for Games</title>
  <meta name="viewport" content="width=device-width" />

  <link href="http://cdn.kendostatic.com/2014.1.416/styles/kendo.common.min.css" rel="stylesheet" />
  <link href="http://cdn.kendostatic.com/2014.1.416/styles/kendo.default.min.css" rel="stylesheet" />
  <link href="http://cdn.kendostatic.com/2014.1.416/styles/kendo.mobile.all.min.css" rel="stylesheet" />
  <script src="http://cdn.kendostatic.com/2014.1.416/js/jquery.min.js"></script>
  <script src="http://cdn.kendostatic.com/2014.1.416/js/kendo.all.min.js"></script>

<style>
    /* stretch the form element */
    html, body, FORM { height: 100%; }
    /* remove margin and padding */
    body { margin: 0; padding: 0; }
  footer {
    text-align: center;
    font-size: larger;
  }
</style>

</head>
<body>

  <form id="form1" runat="server" style="width: 100%; height: 100%;">

        <div data-role="view" data-title="My Games" data-layout="layout">


        <asp:ListView runat="server" ID="gameList"
          ItemType="Fritz.TechEd14Demo.Models.BoardGame"
          ItemPlaceholderID="items"
          SelectMethod="Get"
          OnCallingDataMethods="gameList_CallingDataMethods">

          <LayoutTemplate>
            <ul data-role="listview" data-style="inset">
              <asp:PlaceHolder runat="server" ID="items" />
            </ul>
          </LayoutTemplate>

          <ItemTemplate>
            <li><a data-rel="external" href="Edit/<%#: Item.Id %>"><%#: Item.Name %></a></li>
          </ItemTemplate>

        </asp:ListView>

    </div>

    <div data-role="layout" data-id="layout">
      <header data-role="header">
        <div data-role="navbar">
          <span data-role="view-title"></span>
        </div>
      </header>
      <footer data-role="footer">
        <uc1:ViewSwitcher runat="server" ID="ViewSwitcher" />
      </footer>
    </div>

  </form>



  <script>
    var app = new kendo.mobile.Application(document.getElementById("form1"));
    //var app = new kendo.mobile.Application(document.body, { skin: "flat"});
  </script>
</body>
</html>
