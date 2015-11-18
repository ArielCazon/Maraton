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
                <a href="Usuario/LoginUsuario.aspx" class="btn btn-primary btn-xs">Login Usuario </a>
            </div>
            <div class="col-xs-3 ">
                <a href="Usuario/RegistrarUsuario.aspx" class="btn btn-primary btn-xs">Registrarse </a>
            </div>
        </div>
        <!-- find row -->

        <br class="clearfix" />
         <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">Ultimo maraton registrado</div>
            </div>
            <form runat="server" id="formGrilla">
                
            <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-hover table-striped" GridLines="None" 
                AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                    <asp:BoundField DataField="LugarResidencia" HeaderText="Lugar residencia" />
                    <asp:BoundField DataField="PosicionFinal" HeaderText="Posicion final" />
                    <asp:BoundField DataField="TiempoLlegada" HeaderText="Tiempo llegada" />
                    <asp:BoundField DataField="Finalizo" HeaderText="Finalizo" />


                </Columns>
                <RowStyle CssClass="cursor-pointer" />
            </asp:GridView>
            </form>
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
    </div>


</body>
</html>



