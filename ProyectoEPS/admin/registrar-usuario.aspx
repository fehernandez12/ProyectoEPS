<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar-usuario.aspx.cs" Inherits="ProyectoEPS.admin.registrar_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registrar usuario</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="../css/estilos-usuario.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid">
        <div class="jumbotron" style="margin-left: 10em; margin-right: 10em; margin-top: 10em">
            <div class="row">
                <h1 class="display-4" style="margin: 0 auto">Registrar usuario</h1>
            </div>  
            <hr class="my-4" />
            <form class="needs-validation" id="RegistrarUsuario" runat="server">
                <div class="form-row">
                    <div class="col-md-3 mb-3">
                        <label>Número de cédula:</label>
                        <asp:TextBox type="text" CssClass="form-control" 
                            ID="CedulaUsuario" placeholder="Cédula" runat="server"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa un número de cédula.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label>Nombre:</label>
                        <asp:TextBox type="text" CssClass="form-control"
                            ID="NombreUsuario" placeholder="Nombre" runat="server"
                            required="true"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa un nombre.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label>Apellido:</label>
                        <asp:TextBox type="text" CssClass="form-control"
                            ID="ApellidoUsuario" placeholder="Apellido"
                            runat="server" required="true"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa un apellido.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label>E-mail:</label>
                        <asp:TextBox type="email" CssClass="form-control"
                            ID="EmailUsuario" placeholder="ejemplo@ejemplo.com"
                            runat="server" required="true"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa una dirección de e-mail válida.
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-5 mb-3">
                        <label>Dirección:</label>
                        <asp:TextBox type="text" CssClass="form-control"
                            ID="DireccionUsuario" placeholder="Carrera 1 # 1 - 01"
                            runat="server" required="true"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa una dirección válida.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label>Teléfono:</label>
                        <asp:TextBox type="text" CssClass="form-control"
                            ID="TelefonoUsuario" placeholder="3001234567"
                            runat="server" required="true"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa un número válido.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>EPS:</label>
                        <asp:DropDownList CssClass="form-control" ID="ListaEpsUsuario"
                            runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <hr class="my-4" />
                <asp:Button type="submit" CssClass="btn btn-dark" 
                    ID="BotonRegistrar" runat="server" Text="Registrar" 
                    OnClick="BotonRegistrar_Click" />
            </form>
        </div>
    </div>
</body>
</html>
