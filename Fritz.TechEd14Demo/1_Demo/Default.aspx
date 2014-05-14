<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fritz.TechEd14Demo._1_Demo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <h2>My Games for Sale</h2>

      <asp:GridView runat="server" ID="grid" AllowPaging="true" OnPageIndexChanging="grid_PageIndexChanging"></asp:GridView>

    </div>
    </form>
</body>
</html>
