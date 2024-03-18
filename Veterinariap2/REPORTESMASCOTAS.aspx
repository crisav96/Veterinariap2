<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="REPORTESMASCOTAS.aspx.cs" Inherits="Veterinariap2.REPORTES_MASCOTAS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> REPORTE DE MASCOTAS</h2>
<table style="width:100%;">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_mascota" DataSourceID="SqlDatamascotas">
                <Columns>
                    <asp:BoundField DataField="id_mascota" HeaderText="id_mascota" InsertVisible="False" ReadOnly="True" SortExpression="id_mascota" />
                    <asp:BoundField DataField="nombre_mascota" HeaderText="nombre_mascota" SortExpression="nombre_mascota" />
                    <asp:BoundField DataField="tipo_mascota" HeaderText="tipo_mascota" SortExpression="tipo_mascota" />
                    <asp:BoundField DataField="comida_favorita" HeaderText="comida_favorita" SortExpression="comida_favorita" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDatamascotas" runat="server" ConnectionString="<%$ ConnectionStrings:DBVETERINARIAConnectionString %>" ProviderName="<%$ ConnectionStrings:DBVETERINARIAConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Mascota]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="Bconsultam" runat="server" Text="Consultar" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Beliminarm" runat="server" Text="Eliminar" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
