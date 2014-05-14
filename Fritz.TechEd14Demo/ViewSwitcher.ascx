<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewSwitcher.ascx.cs" Inherits="Fritz.TechEd14Demo.ViewSwitcher" %>
<div id="viewSwitcher">
    <%: CurrentView %> view | <a data-rel="external" href="<%: SwitchUrl %>" data-ajax="false">Switch to <%: AlternateView %></a>
</div>