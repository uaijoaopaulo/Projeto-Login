<%@ Page Title="Login" Language="C#" MasterPageFile="~/View/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="LoginView.aspx.cs" Inherits="Prova.View.LoginView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        lblEsqueceu.Attributes.Add("OnClick", "javascript:ChamaPaginaEsqueceu()");
    }    
</script>
<script type="text/javascript">
    function ChamaPaginaEsqueceu(){
        window.location = "ForgetPasswordView.aspx";
    }
</script>
    <br />
    <br />
    <br />
    <asp:Label ID="lbltitulo" runat="server" Text="Bem-vindo(a)" CssClass="B font"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Digite seu Email ou Usuario" ForeColor="#4285F4" cssclass="txts font"></asp:Label>
    <br />
    <asp:TextBox runat="server" ID="txtEmail"  Width="370px" BorderStyle="None"></asp:TextBox>
    <asp:Panel ID="pnlEmail" runat="server" cssclass="PanelLine" style="height: 1px; width: 370px; " BackColor="lightgray">
    </asp:Panel>
    <br />
    <asp:Label ID="lbldigitesenha" runat="server" Text="Digite sua senha" ForeColor="#4285F4" cssclass="txts font"></asp:Label>
    <br />
    <asp:TextBox ID="txtSenha" runat="server" type="password" BorderStyle="None" Width="370px"></asp:TextBox>
    <asp:Panel ID="Panel2" runat="server" cssclass="PanelLine" style="height: 1px; width: 370px; " BackColor="lightgray">
    </asp:Panel>
    <br />
    <asp:Label ID="lblAviso" runat="server" Text=" " ForeColor="Red" cssclass="font" Font-Size="9pt"></asp:Label>
    <br />
    <br />
    <asp:Panel ID="Panel3" runat="server" cssclass="PanelLine" style="height: 68px; width: 370px; " BorderStyle="None">
        <asp:Label ID="lblEsqueceu" runat="server" Text="Esqueceu a senha?" cssclass="font ES cursor" ForeColor="#4285F4"></asp:Label>
        &nbsp;<asp:Button ID="bttProximo" runat="server" Text="PRÓXIMA" BackColor="#4285F4" BorderColor="#4285F4" ForeColor="White" cssclass="BTTE font shadow" Height="37px" Width="90px" Font-Size="11pt" OnClick="bttProximo_Click"  />
    </asp:Panel> 
</asp:Content>
