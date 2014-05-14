<%@ Control Language="C#" CodeBehind="ForeignKey.ascx.cs" Inherits="Fritz.TechEd14Demo.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

