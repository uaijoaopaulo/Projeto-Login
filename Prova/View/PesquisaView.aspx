<%@ Page Title="Pesquisa de Usuario" Language="C#" MasterPageFile="~/View/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="PesquisaView.aspx.cs" Inherits="Prova.View.PesquisaView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="lbltitulo" runat="server" Text="Pesquisar Usuario" CssClass="B font"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblPesquisarNome" runat="server" Text="Pesquise Pelo Nome" ForeColor="#4285F4" cssclass="txts font"></asp:Label>
    <br />
    <asp:TextBox runat="server" ID="txtPesquisarNome"  Width="370px" BorderStyle="None"></asp:TextBox>
    <asp:Panel ID="Panel5" runat="server" cssclass="PanelLine" style="height: 1px; width: 370px; " BackColor="lightgray">
    </asp:Panel>
    <br />
    <asp:Label ID="lblPesquisarUsuario" runat="server" Text="Pesquise Pelo Usuario" ForeColor="#4285F4" cssclass="txts font"></asp:Label>
    <br />
    <asp:TextBox ID="txtPesquisarUsuario" runat="server" BorderStyle="None" Width="370px"></asp:TextBox>
    <asp:Panel ID="Panel2" runat="server" cssclass="PanelLine" style="height: 1px; width: 370px; " BackColor="lightgray">
    </asp:Panel>
    <br />
    <asp:Label ID="lblAviso" runat="server" Text="" ForeColor="Red" cssclass="font" Font-Size="9pt"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="grdDados" runat="server" style="width: 370px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" CssClass="font shadow" OnRowCommand="grdDados_RowCommand">
        <Columns>
            <asp:BoundField DataField="Nome" HeaderText="Nome" />
            <asp:BoundField DataField="Usuario1" HeaderText="Usuario">
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" CssClass="font" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass="font" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" CssClass="font"/>
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" CssClass="font"/>
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <br />
    <asp:Panel ID="Panel3" runat="server" cssclass="PanelLine" style="height: 68px; width: 370px; " BorderStyle="None" HorizontalAlign="Right">
        <asp:Button ID="bttPesquisar" runat="server" Text="PESQUISAR" BackColor="#4285F4" BorderColor="#4285F4" ForeColor="White" cssclass="BTTE font shadow" Height="37px" Width="90px" Font-Size="11pt" OnClick="bttPesquisar_Click"/>
    </asp:Panel>
</asp:Content>
    