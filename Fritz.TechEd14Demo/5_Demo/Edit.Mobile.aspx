<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.Mobile.aspx.cs" Inherits="Fritz.TechEd14Demo._5_Demo.Edit_Mobile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width" />

    <link href="http://cdn.kendostatic.com/2014.1.416/styles/kendo.common.min.css" rel="stylesheet" />
    <link href="http://cdn.kendostatic.com/2014.1.416/styles/kendo.default.min.css" rel="stylesheet" />
    <link href="http://cdn.kendostatic.com/2014.1.416/styles/kendo.mobile.all.min.css" rel="stylesheet" />
    <script src="http://cdn.kendostatic.com/2014.1.416/js/jquery.min.js"></script>
    <script src="http://cdn.kendostatic.com/2014.1.416/js/kendo.all.min.js"></script>

</head>
<body>

    <div data-role="view" data-title="Edit Game" id="edit_main" data-layout="layout">


    <form id="form1" runat="server">
    <div id="edit">
    
      <asp:FormView runat="server" ID="myForm" 
        DefaultMode="Edit" DataKeyNames="Id"
        ItemType="Fritz.TechEd14Demo.Models.BoardGame"
        SelectMethod="myForm_GetItem"
        UpdateMethod="myForm_UpdateItem"
        RenderOuterTable="false">

        <EditItemTemplate>

          <ul data-role="listview" data-style="inset">

            <li>
              <label>
                Name: 
                <asp:TextBox runat="server" ID="name" Text="<%#: BindItem.Name %>"></asp:TextBox>
              </label>
            </li>

            <li>
              <label>
                Price USD:
                <asp:TextBox runat="server" id="priceUsd" Text="<%#: BindItem.PriceUSD %>" TextMode="Number"></asp:TextBox>
              </label>
            </li>

            <li>
              <label>
                # In Stock:
                <asp:TextBox runat="server" ID="inStock" Text="<%#: BindItem.InStock %>" TextMode="Number"></asp:TextBox>
              </label>
            </li>

          </ul>

          <div style="width: 100%; text-align: center;">
          <asp:LinkButton data-rel="external" runat="server" ID="submit" CommandName="Update" Text="Save Changes" CssClass="k-button selected-button" data-role="button" />
          <asp:LinkButton data-rel="external" runat="server" ID="cancel" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="k-button " data-role="button" OnClick="cancel_Click" />
            </div>

        </EditItemTemplate>


      </asp:FormView>

    </div>
    </form>

      </div>

      <div data-role="layout" data-id="layout">
    <header data-role="header">
        <div data-role="navbar">
            <span data-role="view-title"></span>
        </div>
    </header>
  </div>

    <script>
    var app = new kendo.mobile.Application(document.body);
    //var app = new kendo.mobile.Application(document.body, { skin: "flat"});
  </script>

</body>
</html>
