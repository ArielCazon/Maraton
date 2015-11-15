<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Administracion.Master" AutoEventWireup="true" CodeBehind="CrearMaraton.aspx.cs" Inherits="MaratonWeb.CrearMaraton" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../js/CrearMaraton.js" languaje="javascript" type="text/javascript"></script>
    <div class="center-block">
        <div class="col-xs-2"></div>
        <div class="col-xs-8">
            <div class="jumbotron">
                <form class="form-horizontal" id="NewMaraton" runat="server">
                    <fieldset>
                        <legend>Crear Maraton</legend>
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
                            <asp:Label ID="lblMaximoParticipantes" runat="server" Text="Cantidad Maxima de Participantes" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtMaximoParticipantes" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidatorCantMax"
                                ControlToValidate="txtMaximoParticipantes"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />
                            <asp:RangeValidator
                                ID="RangeValidatorCantMax"
                                runat="server"
                                Type="Integer"
                                MinimumValue="100"
                                MaximumValue="200"
                                ControlToValidate="txtMaximoParticipantes"
                                ErrorMessage="Debe ingresar un numero entre 100 y 200 participantes"
                                ForeColor="Turquoise" Font-Bold="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblLugarSalida" runat="server" Text="Lugar de Salida" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtLugarSalida" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidatorLugar"
                                ControlToValidate="txtLugarSalida"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblFecha" runat="server" Text="Fecha de Salida" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtFechaSalida" runat="server" CssClass="form-control" TextMode="DateTimeLocal"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidatorFecha"
                                ControlToValidate="txtFechaSalida"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />
                            
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblListaEspera" runat="server" Text="Personas en lista de espera" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtListaEspera" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"
                                ControlToValidate="txtListaEspera"
                                MaximumValue="1000"
                                MinimumValue="0"
                                Type="Integer"
                                Text="Debe ingresar valores entre 0 y 1000!"
                                ForeColor="Turquoise" Font-Bold="true"></asp:RangeValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblPremio1" runat="server" Text="Premio Primera Posicion " CssClass="control-label"></asp:Label>

                            <asp:DropDownList ID="ddlPremio1" runat="server" class="form-control" ForeColor="Black">
                                <asp:ListItem Text="Seleccione un Premio" Value="0"></asp:ListItem>
                                <asp:ListItem Text="500" Value="500"></asp:ListItem>
                                <asp:ListItem Text="1000" Value="1000"></asp:ListItem>
                                <asp:ListItem Text="1500" Value="1500"></asp:ListItem>
                                <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                                <asp:ListItem Text="3000" Value="3000"></asp:ListItem>
                                <asp:ListItem Text="4000" Value="4000"></asp:ListItem>
                                <asp:ListItem Text="5000" Value="5000"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator1"
                                ControlToValidate="ddlPremio1"
                                InitialValue="0"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true"
                                SetFocusOnError="true"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblPremio2" runat="server" Text="Premio Segunda Posicion" CssClass="control-label"></asp:Label>

                            <asp:DropDownList ID="ddlPremio2" runat="server" class="form-control" ForeColor="Black">
                                <asp:ListItem Text="Seleccione un Premio" Value="0"></asp:ListItem>
                                <asp:ListItem Text="500" Value="500"></asp:ListItem>
                                <asp:ListItem Text="1000" Value="1000"></asp:ListItem>
                                <asp:ListItem Text="1500" Value="1500"></asp:ListItem>
                                <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                                <asp:ListItem Text="3000" Value="3000"></asp:ListItem>
                                <asp:ListItem Text="4000" Value="4000"></asp:ListItem>
                                <asp:ListItem Text="5000" Value="5000"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator2"
                                ControlToValidate="ddlPremio2"
                                InitialValue="0"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true"
                                SetFocusOnError="true"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblPremio3" runat="server" Text="Premio Tercera Posicion " CssClass="control-label"></asp:Label>



                            <asp:DropDownList ID="ddlPremio3" runat="server" class="form-control" ForeColor="Black">
                                <asp:ListItem Text="Seleccione un Premio" Value="0"></asp:ListItem>
                                <asp:ListItem Text="500" Value="500"></asp:ListItem>
                                <asp:ListItem Text="1000" Value="1000"></asp:ListItem>
                                <asp:ListItem Text="1500" Value="1500"></asp:ListItem>
                                <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                                <asp:ListItem Text="3000" Value="3000"></asp:ListItem>
                                <asp:ListItem Text="4000" Value="4000"></asp:ListItem>
                                <asp:ListItem Text="5000" Value="5000"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator3"
                                ControlToValidate="ddlPremio3"
                                InitialValue="0"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true"
                                SetFocusOnError="true"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <div class="text-center">
                                <asp:Button ID="btnCrearMaraton" runat="server" Text="Crear Maraton" class="btn btn-primary btn-lg btn-block" OnClick="btnCrearMaraton_Click" />
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
            <!-- find jumbotron -->
        </div>
        <div class="col-xs-2"></div>
    </div>
</asp:Content>
