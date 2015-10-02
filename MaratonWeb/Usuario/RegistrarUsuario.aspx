<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="MaratonWeb.Usuario.RegistrarUsuario" %>

<%@ Register Src="~/Master/ucFooter.ascx" TagPrefix="uc1" TagName="ucFooter" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/Maraton.css" rel="stylesheet" />

    <script src="../js/jquery-1.9.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <title>Usuarios</title>
</head>
<body>
    <div class="container">
        <div class="jumbotron banner"></div>

        <br class="clearfix" />

        <div class="col-xs-2"></div>
        <div class="col-xs-8">
            <div class="jumbotron">
                <form class="form-horizontal" id="NewMaraton" runat="server">
                    <fieldset>
                        <legend>Registro de nuevo usuario</legend>
                        <div class="form-group">
                            <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidatorEmail"
                                ControlToValidate="txtEmail"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />
                            <asp:RegularExpressionValidator
                                ID="RegularExpressionEmail"
                                runat="server"
                                ControlToValidate="txtEmail"
                                Display="Dynamic"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ForeColor="Turquoise" Font-Bold="true"
                                ErrorMessage="Ingrese un formato de email valido">
                            </asp:RegularExpressionValidator>

                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblContrasenia" runat="server" Text="Contraseña" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtContrasenia" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidatorContrasenia"
                                ControlToValidate="txtContrasenia"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />

                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblNombre" runat="server" Text="Nombre" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidatorNombre"
                                ControlToValidate="txtNombre"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblApellido" runat="server" Text="Apellido" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldApellido"
                                ControlToValidate="txtApellido"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblFecha" runat="server" Text="Fecha nacimiento" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtFecha" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldFecha"
                                ControlToValidate="txtFecha"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblLugar" runat="server" Text="Lugar residencia" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtLugar" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidatorLugar"
                                ControlToValidate="txtLugar"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />
                        </div>


                        <div class="form-group">
                            <div class="col-xs-6">
                                <a href="../Inicio.aspx" class="btn btn-primary btn-lg btn-block">Volver </a>
                            </div>
                            <div class="col-xs-6">
                                <asp:Button ID="btnRegistrarUsuario" runat="server" Text="Registrarse"  class="btn btn-primary btn-lg btn-block" />

                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
            <!-- find jumbotron -->
        </div>
        <div class="col-xs-2"></div>

        <br class="clearfix" />
        <div class="row">
            <div class="col-xs-12 text-center">
                <uc1:ucFooter ID="UcFooter1" runat="server" />
            </div>
        </div>
        <!-- find row -->



    </div>
    <!-- find container -->



</body>
</html>

