<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="MaratonWeb.Inicio" %>

<%@ Register Src="~/Master/ucFooter.ascx" TagPrefix="uc1" TagName="ucFooter" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>Maraton</title>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h2>Bienvenido a Maraton</h2>
            </div>
        </div>
        <!-- find row -->

        <br class="clearfix" />
        <div class="row">
            <div class="col-xs-6">
                <a href="Administracion/Login.aspx" class="btn btn-primary btn-xs">Administracion</a>
            </div>
            <div class="col-xs-3 text-right">
                <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                    Login Usuario
                </button>
            </div>
            <div class="col-xs-3 ">
                <a href="Usuario/RegistrarUsuario.aspx" class="btn btn-primary btn-xs">Registrarse </a>
            </div>
        </div>
        <!-- find row -->

        <br class="clearfix" />
        <div class="row">
            <div class="jumbotron">
                <div class="container">
                    <p>Ultimo Maraton registrado</p>
                    <div class="table">
                        <div class="row active">
                            <div class="col-xs-6 col-md-4 active">Participante</div>
                            <div class="col-xs-6 col-md-4 active">Nombre</div>
                            <div class="col-xs-6 col-md-4 active">Apellido</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">1</div>
                            <div class="col-xs-6 col-md-4">Pablo</div>
                            <div class="col-xs-6 col-md-4">Perez</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">2</div>
                            <div class="col-xs-6 col-md-4">Rodrigo</div>
                            <div class="col-xs-6 col-md-4">Yucra Mita</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">2</div>
                            <div class="col-xs-6 col-md-4">Leandro</div>
                            <div class="col-xs-6 col-md-4">Rocha</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">3</div>
                            <div class="col-xs-6 col-md-4">Ezequiel</div>
                            <div class="col-xs-6 col-md-4">Canosa</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">4</div>
                            <div class="col-xs-6 col-md-4">Ariel</div>
                            <div class="col-xs-6 col-md-4">Cazon</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">5</div>
                            <div class="col-xs-6 col-md-4">Nombre</div>
                            <div class="col-xs-6 col-md-4">Apellido</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">6</div>
                            <div class="col-xs-6 col-md-4">Nombre</div>
                            <div class="col-xs-6 col-md-4">Apellido</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">7</div>
                            <div class="col-xs-6 col-md-4">Nombre</div>
                            <div class="col-xs-6 col-md-4">Apellido</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">8</div>
                            <div class="col-xs-6 col-md-4">Nombre</div>
                            <div class="col-xs-6 col-md-4">Apellido</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">9</div>
                            <div class="col-xs-6 col-md-4">Nombre</div>
                            <div class="col-xs-6 col-md-4">Apellido</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-4">10</div>
                            <div class="col-xs-6 col-md-4">Nombre</div>
                            <div class="col-xs-6 col-md-4">Apellido</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- find row -->

        <br class="clearfix" />
        <div class="row">
            <div class="col-xs-12">
            </div>
        </div>
        <!-- find row -->

        <br class="clearfix" />
        <div class="row">
            <div class="col-xs-12 text-center">
                <uc1:ucFooter ID="UcFooter1" runat="server" />
            </div>
        </div>
        <!-- find row -->

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="well bs-component">
                                <form class="form-horizontal" id="Login" runat="server" action="/Usuario/Historial.aspx">
                                    <fieldset>
                                        <legend>Login usuario</legend>
                                        <div class="form-group">

                                            <label id="lblEmail" runat="server" class="col-lg-2 control-label">Email</label>
                                            <div class="col-lg-10">
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
                                                    ID="RegularExpressionValidator1"
                                                    runat="server"
                                                    ControlToValidate="txtEmail"
                                                    Display="Dynamic"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    ForeColor="Turquoise" Font-Bold="true"
                                                    ErrorMessage="Ingrese un formato de email valido">
                                                </asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label id="lblPassword" runat="server" class="col-lg-2 control-label">Password</label>
                                            <div class="col-lg-10">
                                                <asp:TextBox ID="txtPassword" TextMode="password" runat="server" CssClass="form-control" />
                                                <asp:RequiredFieldValidator
                                                    ID="RequiredFieldValidatorPassword"
                                                    ControlToValidate="txtPassword"
                                                    Display="Static"
                                                    ErrorMessage="*"
                                                    Text="Este campo es obligatorio!"
                                                    runat="server"
                                                    ForeColor="Turquoise" Font-Bold="true" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-10 col-lg-offset-2">
                                                <asp:Button ID="btnIngresarUsuario" runat="server" Text="Ingresar" class="btn btn-primary" />
                                            </div>
                                        </div>

                                    </fieldset>
                                </form>
                                <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>



