<%@ Page Title="Ajuda" Language="C#" MasterPageFile="~/View/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="AjudaView.aspx.cs" Inherits="Prova.View.AjudaView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="lbltitulo" runat="server" Text="Ajuda" CssClass="B font"></asp:Label>
    <br />
    <br />
    <p>Este software correspode a prova de programação, todos os requisitos e funcionalidades requeridos foram devidamente desenvolvidos e implantados, se necessita de ajuda entre em contato com o desenvolvedor pelo E-mail: jpbraulio@live.com, em resposta ao seu E-mail enviado te ajudaremos!</p>
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel3" runat="server" cssclass="PanelLine" style="height: 68px; width: 370px; " BorderStyle="None" HorizontalAlign="Right" >
        <asp:Button ID="bttPesquisar" runat="server" Text="VOLTAR" BackColor="#4285F4" BorderColor="#4285F4" ForeColor="White" cssclass="BTTE font shadow" Height="37px" Width="90px" Font-Size="11pt" OnClick="bttPesquisar_Click"  />
    </asp:Panel>
</asp:Content>
    