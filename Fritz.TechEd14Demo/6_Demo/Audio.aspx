<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Audio.aspx.cs" Inherits="Fritz.TechEd14Demo._6_Demo.Audio" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <h2>Dot Net Rocks #855</h2>

      <audio controls="controls" runat="server" id="audioPlayer">
        <source src="/content/dotnetrocks_0855_frisk.mp3" type="audio/mp3" />
        <%--<source src="file.ogg" type="audio/ogg" />--%>
      </audio>


    </div>
    </form>
</body>
</html>
