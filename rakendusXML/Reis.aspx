<%@ Page Title="Reis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reis.aspx.cs" Inherits="rakendusXML.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>


    <div>
        <asp:Xml runat="server"
            Documentsource="~/XMLtour.xml"
            TransformSource="~/ReisXSLT.xslt">

        </asp:Xml>
    </div>
</asp:Content>
