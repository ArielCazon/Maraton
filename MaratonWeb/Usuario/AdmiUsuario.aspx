<%@ Page Title="" Language="C#" MasterPageFile="~/Master/usuarioM.Master" AutoEventWireup="true" CodeBehind="AdmiUsuario.aspx.cs" Inherits="MaratonWeb.Usuario.AdmiUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="table-responsive">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Administracion de datos de usuarios</h3>
            </div>
            <table class="table">
                <thead>
                    <tr class="active">
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>FechaNac</th>
                        <th>Lugar</th>
                        <th>Operaciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Juan</td>
                        <td>Sosa</td>
                        <td>05/10/1990</td>
                        <td>Capital Federal</td>
                         <td>
                            <button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button>
                        </td>
                    </tr>
                     <tr>
                        <td>2</td>
                        <td>Jose</td>
                        <td>Ramirez</td>
                        <td>05/12/1993</td>
                        <td>Ramos Mejia</td>
                         <td>
                            <button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
     
    </div>

</asp:Content>
