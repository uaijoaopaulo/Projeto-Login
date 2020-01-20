<%@ Page Title="Esqueceu a Senha" Language="C#" MasterPageFile="~/View/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="ForgetPasswordView.aspx.cs" Inherits="Prova.View.ForgetPasswordView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="lbltitulo" runat="server" Text="Esqueceu a Senha:" CssClass="B font"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="lblEsqueceuSenha" runat="server" Text="E-mail:" ForeColor="#4285F4" cssclass="txts font cursor"></asp:Label>
    <br />
    <asp:TextBox runat="server" ID="txtEmail"  Width="370px" BorderStyle="None"></asp:TextBox>
    <asp:Panel ID="Panel5" runat="server" cssclass="PanelLine" style="height: 1px; width: 370px; " BackColor="lightgray">
    </asp:Panel>
    <br />
    <asp:Label ID="lblAviso" runat="server" Text=" " ForeColor="Red" cssclass="font" Font-Size="9pt"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel3" runat="server" cssclass="PanelLine" style="height: 68px; width: 370px; " BorderStyle="None" HorizontalAlign="Right">
        <asp:Button ID="bttEnviar" runat="server" Text="ENVIAR" BackColor="#4285F4" BorderColor="#4285F4" ForeColor="White" cssclass="BTTE font shadow" Height="37px" Width="90px" Font-Size="11pt" OnClick="bttEnviar_Click"/>
    </asp:Panel>
</asp:Content>
    