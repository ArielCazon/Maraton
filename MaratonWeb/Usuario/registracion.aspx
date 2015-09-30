<%@ Page Title="" Language="C#" MasterPageFile="~/Master/usuarioM.Master" AutoEventWireup="true" CodeBehind="registracion.aspx.cs" Inherits="MaratonWeb.Usuario.registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="modal" runat="server">
       <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
<div class="table-responsive">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Datos de maraton</h3>
            </div>
            <table class="table">
                <thead>
                    <tr class="active">
                        <th>Nombre</th>
                        <th>Horario</th>
                        <th>Lugar</th>
                        <th>Numero de inscripcion</th>
                        <th>Capacidad</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Unlam corre</td>
                        <td>08:00 am</td>
                        <td>San justo</td>
                        <td>501</td>
                        <td>si</td>
                         
                    </tr>
                   
                </tbody>
            </table>
        </div>
        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
            Registrarse
        </button>
    </div>
 </div>
           </div>
            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="table-responsive">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Listado de maratones</h3>
            </div>
            <table class="table">
                <thead>
                    <tr class="active">
                        <th>Maraton</th>
                        <th>Estado</th>
                        <th>Operacion</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Unlam corre</td>
                        <td>Activo</td>
                        <td>    
                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                       Datos de maraton
                       </button>

                        </td>
                     </tr>
                  
                </tbody>
                </table>     
    </div>
                     
    </div>


</asp:Content>
