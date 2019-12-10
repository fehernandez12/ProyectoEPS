<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar-eps.aspx.cs" Inherits="ProyectoEPS.admin.registrar_eps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="../css/estilos-usuario.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid">
        <div class="jumbotron" style="margin-left: 10em; margin-right: 10em; margin-top: 10em">
            <div class="row">
                <h1 class="display-4" style="margin: 0 auto">Registrar EPS</h1>
            </div>  
            <hr class="my-4" />
            <form class="needs-validation" id="RegistrarUsuario" runat="server">
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label>Nombre de la EPS:</label>
                        <asp:TextBox type="text" CssClass="form-control" 
                            ID="NombreEps" placeholder="Nombre SAS" runat="server"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa un nombre.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>NIT:</label>
                        <asp:TextBox type="text" CssClass="form-control"
                            ID="NitEps" placeholder="NIT" runat="server"
                            required="true"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa un NIT.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Dirección:</label>
                        <asp:TextBox type="text" CssClass="form-control"
                            ID="DireccionEps" placeholder="Apellido"
                            runat="server" required="true"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa una dirección.
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label>Teléfono:</label>
                        <asp:TextBox type="text" CssClass="form-control"
                            ID="TelefonoEps" placeholder="3000000000"
                            runat="server" required="true"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa un número válido.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Password:</label>
                        <asp:TextBox type="password" CssClass="form-control"
                            ID="PasswordEps" placeholder="3001234567"
                            runat="server" required="true"></asp:TextBox>
                        <div class="valid-feedback">
                            ¡Se ve bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor ingresa una contraseña válida.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>EPS:</label>
                        <asp:DropDownList CssClass="form-control" ID="ListaEstadoEps"
                            runat="server" OnSelectedIndexChanged="ListaEstadoEps_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                </div>
                <hr class="my-4" />
                <asp:Button type="submit" CssClass="btn btn-dark" 
                    ID="BotonRegistrar" runat="server" Text="Registrar" OnClick="BotonRegistrar_Click" />
            </form>
        </div>
    </div>
</body>
</html>
