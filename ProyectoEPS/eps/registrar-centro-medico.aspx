<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar-centro-medico.aspx.cs" Inherits="ProyectoEPS.eps.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrar centro medico</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="../css/estilos-usuario.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <asp:Label ID="Label1" runat="server" Text="Registrar centro medico"></asp:Label>
        <p>
            <asp:Label ID="LblNombre" runat="server" Text="Nombre del centro medico"></asp:Label>
        </p>
        <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="LblDireccion" runat="server" Text="Dirección del centro medico"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TxtDireccion" runat="server"></asp:TextBox>
        </p>
        <p>

            <asp:Label ID="LblTelefono" runat="server" Text="Telefono del centro medico"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LblFoto" runat="server" Text="Foto del centro medico"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </p>
        <p>
            <asp:FileUpload ID="FileFoto" runat="server" />
        </p>
        <p>
            <asp:Label ID="LblUbicacion" runat="server" Text="Ubicación del centro medico"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TxtUbicacion" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LblNivelDeAtencion" runat="server" Text="Nivel de atención"></asp:Label>
        </p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="idNivel_atencion">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CasoEstudioConnectionString %>" SelectCommand="SELECT * FROM [Nivel_atencin]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Label ID="LblHoraAtencion" runat="server" Text="Horario de atención"></asp:Label>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="LblHoraEntrada" runat="server" Text="Desde "></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="hora_apertura" DataValueField="hora_apertura">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CasoEstudioConnectionString %>" SelectCommand="SELECT [idHora_apertura], [hora_apertura] FROM [hora_apertura]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblHoraCierre" runat="server" Text="Hasta las:"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="hora_cierre" DataValueField="hora_cierre">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CasoEstudioConnectionString %>" SelectCommand="SELECT [idHora_cierre], [hora_cierre] FROM [hora_cierre]"></asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" Text="Eps vinculadas"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="nombre" DataValueField="nombre">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CasoEstudioConnectionString %>" SelectCommand="SELECT [nombre] FROM [eps]"></asp:SqlDataSource>
        </p>
        <asp:Button ID="BtnRegistrar" runat="server" Text="Confirmar" OnClick="BtnRegistrar_Click" />
            <asp:Label ID="LblConfirmar" runat="server" Text=" "></asp:Label>
        </div>
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </form>
     </body>
</html>
