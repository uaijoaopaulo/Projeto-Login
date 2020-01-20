<%@ Page Title="Sobre" Language="C#" MasterPageFile="~/View/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="SobreView.aspx.cs" Inherits="Prova.View.SobreView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="lbltitulo" runat="server" Text="Sobre" CssClass="B font"></asp:Label>
    <br />
    <br />
    <p>Site/Programa desenvolvido em função da prova da matéria de programação</p>
    <br />
    <p>Desenvolvedor: João Paulo Bráulio</p>
    <p>Contato: jpbraulio@live.com</p>
    <br />
    <br />
    <asp:Panel ID="Panel3" runat="server" cssclass="PanelLine" style="height: 68px; width: 370px; " BorderStyle="None" HorizontalAlign="Right" >
        <asp:Button ID="bttPesquisar" runat="server" Text="VOLTAR" BackColor="#4285F4" BorderColor="#4285F4" ForeColor="White" cssclass="BTTE font shadow" Height="37px" Width="90px" Font-Size="11pt" OnClick="bttPesquisar_Click"  />
    </asp:Panel>
</asp:Content>
    