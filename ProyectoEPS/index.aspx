<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectoEPS.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="css/estilos.css" rel="stylesheet" />
</head>
<body>

    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg">
            <a class="navbar-brand" style="color: white" href="#">Proyecto EPS</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" style="color: white" href="#">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <button class="btn my-2 my-sm-0 btn-outline-light" style="margin-right: 1em" type="submit" data-toggle="modal" data-target="#modalLogin">Iniciar sesión</button>
            </div>
        </nav>
    </div>
    
    <!-- Modal Login -->
    <div class="modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="border-bottom: none">
                    <h5 class="modal-title" id="exampleModalLabel">Iniciar sesión</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="Form1" runat="server">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#loginUsuario" role="tab" aria-controls="home" aria-selected="true">Usuario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#loginEps" role="tab" aria-controls="profile" aria-selected="false">EPS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#loginAdmin" role="tab" aria-controls="contact" aria-selected="false">Admin</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="loginUsuario" role="tabpanel" aria-labelledby="home-tab">
                            <div class="modal-body">
                                <label>Ingresa tu número de documento</label>
                                <asp:TextBox CssClass="form-control" placeholder="Número de documento" 
                                    ID="UsuarioCedula" runat="server"></asp:TextBox>
                            </div>
                            <div class="modal-footer">
                                <asp:Button CssClass="btn btn-dark" ID="BotonLoginUsuario"
                                    runat="server" Text="Iniciar sesión" OnClick="BotonLoginUsuario_Click" />
                            </div>
                        </div>
                        <div class="tab-pane fade" id="loginEps" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="modal-body">
                                <label>Ingresa el NIT:</label>
                                <asp:TextBox CssClass="form-control" placeholder="NIT" 
                                    ID="EpsNit" runat="server"></asp:TextBox>
                                <label>Ingresa la contraseña:</label>
                                <asp:TextBox CssClass="form-control" type="password" placeholder="Password" 
                                    ID="EpsPassword" runat="server"></asp:TextBox>
                            </div>
                            <div class="modal-footer">
                                <asp:Button CssClass="btn btn-dark" ID="BotonLoginEps"
                                    runat="server" Text="Iniciar sesión" OnClick="BotonLoginEps_Click" />
                            </div>
                        </div>
                        <div class="tab-pane fade" id="loginAdmin" role="tabpanel" aria-labelledby="contact-tab">
                            <div class="modal-body">
                                <label>Ingresa tu número de documento:</label>
                                <asp:TextBox CssClass="form-control" placeholder="Número de documento" 
                                    ID="AdminCedula" runat="server"></asp:TextBox>
                                <label>Ingresa tu contraseña:</label>
                                <asp:TextBox CssClass="form-control" type="password" placeholder="Password"
                                    ID="AdminPassword" runat="server"></asp:TextBox>
                            </div>
                            <div class="modal-footer">
                                <asp:Button CssClass="btn btn-dark" ID="BotonLoginAdmin"
                                    runat="server" Text="Iniciar sesión" OnClick="BotonLoginAdmin_Click" />
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
