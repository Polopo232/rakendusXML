<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="rakendusXML.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>


    <div>
        <asp:Xml runat="server"
            Documentsource="/Minusugupuu.xml"
            TransformSource="~/Sugupuuparing.xslt">

        </asp:Xml>
    </div>
</asp:Content>
