<%@ Page Title="Elizaveta II Sugupuu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="rakendusXML.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>

        <div>
            <asp:Xml runat="server"
                Documentsource="~/Elizavetasugupuu.xml"
                TransformSource="~/Sugupuuparing.xslt">

            </asp:Xml>
        </div>
    </main>
</asp:Content>
