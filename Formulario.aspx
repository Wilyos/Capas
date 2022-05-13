<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Capas.Formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>Codigo cita:</td>
                    <td>
                        <asp:TextBox ID="txtcodcita" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>fecha:</td>
                    <td>
                        <asp:TextBox ID="txtfecha" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Hora:</td>
                    <td>
                        <asp:TextBox ID="txthora" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Id paciente:</td>
                    <td>
                        <asp:TextBox ID="txtidpaciente" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Id Médico:<br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtidmedico" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Valor.</td>
                    <td>
                        <asp:TextBox ID="txtvalor" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Diagnostico</td>
                    <td>
                        <asp:TextBox ID="txtdiagnostico" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Nombre de acompañante</td>
                    <td>
                        <asp:TextBox ID="txtnomacompanante" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnconsultar" runat="server" Text="consultar" OnClick="btnconsultar_Click" />
                        </td>
                    <td>
                        <asp:Button ID="btneliminar" runat="server" Text="Eliminar" OnClick="btneliminar_Click" />
                        </td>
                    <td>
                        <asp:Button ID="btnguardar" runat="server" Text="Guardar" OnClick="btnguardar_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
