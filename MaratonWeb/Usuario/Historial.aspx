<%@ Page Title="" Language="C#" MasterPageFile="~/Master/usuarioM.Master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="MaratonWeb.Usuario.Historial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="modal" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../js/ScriptServicio.js" type="text/javascript"></script>
    <div class="table-responsive">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Historial de maratones realizados</h3>
            </div>
            <table class="table" id="tblResultado">
                <thead>
                    <tr class="active">
                        <th>#</th>
                        <th>Usuario</th>
                        <th>Maraton</th>
                        <th>Premio</th>
                        </tr>
                </thead>
              </table>
        </div>
    </div>

</asp:Content>
