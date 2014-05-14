<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fritz.TechEd14Demo._2_Demo.Default" EnableViewState="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

      <h2>My Games for Sale</h2>

      <asp:GridView runat="server" ID="grid" DataKeyNames="ID" DataSourceID="magicGreyBox">
      </asp:GridView>
    

      <asp:SqlDataSource runat="server" ID="magicGreyBox"
        ConnectionString='<%$ ConnectionStrings:gamesConnectionString %>'
        SelectCommand="SELECT [ID], [Name], [PriceUSD], [InStock] FROM [BoardGames]">

      </asp:SqlDataSource>


    </div>
    </form>
</body>
</html>
