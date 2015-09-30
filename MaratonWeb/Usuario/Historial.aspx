<%@ Page Title="" Language="C#" MasterPageFile="~/Master/usuarioM.Master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="MaratonWeb.Usuario.Historial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="modal" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="table-responsive">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Historial de maratones realizados</h3>
            </div>
            <table class="table">
                <thead>
                    <tr class="active">
                        <th>#</th>
                        <th>Usuario</th>
                        <th>Maraton</th>
                        <th>Posicion</th>
                        <th>Tiempo en finalizar</th>
                        <th>Obtuvo Premio</th>
                        <th>Cantidad de dinero</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Juan</td>
                        <td>Mar del plata corre</td>
                        <td>20º</td>
                        <td>30"11'</td>
                        <td>No</td>
                        <td>0</td>
                         
                    </tr>
                     <tr>
                        <td>2</td>
                        <td>juan</td>
                        <td>Unlam corre</td>
                        <td>10º</td>
                        <td>17"11'</td>
                        <td>Si</td>
                        <td>2000$</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
