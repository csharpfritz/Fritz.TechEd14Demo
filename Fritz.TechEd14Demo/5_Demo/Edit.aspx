<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Fritz.TechEd14Demo._5_Demo.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <asp:FormView runat="server" ID="myForm" DefaultMode="Edit"
        SelectMethod="myForm_GetItem" 
        UpdateMethod="myForm_UpdateItem"
        ItemType="Fritz.TechEd14Demo.Models.BoardGame"
        DataKeyNames="Id"
        >

        <EditItemTemplate>

          <h2>Editing <%#: Item.Name %> (<%#: Item.Id %>)</h2>

          <fieldset>

            <ol>
              <asp:DynamicEntity runat="server" Mode="Edit"></asp:DynamicEntity>
            </ol>

            <asp:Button runat="server" ID="submit" Text="Save Changes" CommandName="Update" />
            <asp:Button runat="server" ID="cancel" Text="Cancel Changes" CommandName="Cancel" CausesValidation="false" OnClick="cancel_Click" />

          </fieldset>

        </EditItemTemplate>

      </asp:FormView>

    </div>
    </form>
</body>
</html>
