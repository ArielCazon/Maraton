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
                <asp:HyperLink ID="HyperLink1" runat="server">Administradores</asp:HyperLink>
            </div>
            <div class="col-xs-3 text-right">
                <asp:HyperLink ID="HyperLink2" runat="server">Login Usuarios</asp:HyperLink>
            </div>
            <div class="col-xs-3 ">
                <asp:HyperLink ID="HyperLink3" runat="server">Registrarse</asp:HyperLink>
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
        <br class="clearfix" />
        <div class="row">
            <div class="col-xs-12">
            </div>
        </div>
        <br class="clearfix" />
        <div class="row">
            <div class="col-xs-12 text-center">
                <uc1:ucFooter ID="UcFooter1" runat="server" />
            </div>
        </div>
    </div>
</body>
</html>



