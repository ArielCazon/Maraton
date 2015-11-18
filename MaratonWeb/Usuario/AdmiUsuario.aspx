<%@ Page Title="" Language="C#" MasterPageFile="~/Master/usuarioM.Master" AutoEventWireup="true" CodeBehind="AdmiUsuario.aspx.cs" Inherits="MaratonWeb.Usuario.AdmiUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="col-xs-8">

        <div class="row">
            <div class="col-lg-12">
                <div class="well bs-component">
                    <form class="form-horizontal" id="Login" runat="server">
                        <fieldset>
                            <legend>Editar datos de usuario</legend>
                            

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
                            <asp:Label ID="lblFecha" runat="server"  Text="Fecha nacimiento" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtFecha" TextMode="DateTime" runat="server" CssClass="form-control"></asp:TextBox>
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
                    <asp:Label ID="lblExitoso" runat="server" Text="Cambios realizados con éxito" class="success text-success" Visible="false" EnableViewState="false"></asp:Label>
                </div>
                               <div class="form-group">
                            <div class="col-xs-6">
                                <a href="../Inicio.aspx" class="btn btn-primary btn-lg btn-block">Volver </a>
                            </div>
                            <div class="col-xs-6">
                                <asp:Button ID="btnModificarUsuario" runat="server" Text="Modificar datos"  class="btn btn-primary btn-lg btn-block"/>

                            </div>
                        </div>
                         </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <!-- find row -->
    </div>
</asp:Content>
