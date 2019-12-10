﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bienvenido-admin.aspx.cs" Inherits="ProyectoEPS.admin.bienvenido_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="../css/estilos-usuario.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row" style="text-align: center">
                <div class="jumbotron" style="margin: auto; margin-top: 10em">
                    <h1 class="display-4">¡Bienvenido, <%:Session["nombreLogin"]%>!</h1>
                    <p class="lead">Selecciona la opción que desees de la barra superior.</p>
                    <hr class="my-4" />
                    <p>Pulsa el botón para registrar un nuevo usuario.</p>
                    <asp:Button CssClass="btn btn-secondary btn-lg" ID="BotonRegistrarUsuario" runat="server" Text="Registrar usuario" OnClick="BotonRegistrarUsuario_Click" />
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
