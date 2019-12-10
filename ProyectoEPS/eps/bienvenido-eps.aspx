﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bienvenido-eps.aspx.cs" Inherits="ProyectoEPS.eps.bienvenido_eps" %>

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
                    <h1 class="display-4">Dashboard de <%:Session["nombreLogin"]%> EPS</h1>
                    <p class="lead">Selecciona la opción que desees de la barra superior.</p>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
