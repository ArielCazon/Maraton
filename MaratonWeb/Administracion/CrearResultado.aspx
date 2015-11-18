<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Administracion.Master" AutoEventWireup="true" CodeBehind="CrearResultado.aspx.cs" Inherits="MaratonWeb.Administracion.CrearResultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xs-2">
    </div>

    <div class="col-xs-8">
        <div class="jumbotron">
            <div class="row">
                <form class="form-horizontal" id="NewMaraton" runat="server">
                    <fieldset>
                        <legend>Creando nuevo resultado</legend>

                        <div class="form-group">
                            <asp:Label ID="lblMaraton" runat="server" Text="maraton">Maraton</asp:Label>
                            <asp:DropDownList ID="ddlMaraton" runat="server" class="form-control"  OnSelectedIndexChanged="ddlMaraton_SelectedIndexChanged" AutoPostBack="true">
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator1"
                                ControlToValidate="ddlMaraton"
                                InitialValue="0"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true"
                                SetFocusOnError="true"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!">
                            </asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblUsuario" runat="server" Text="maraton">Usuario</asp:Label>
                            <asp:DropDownList ID="ddlUsuario" runat="server" class="form-control">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator3"
                                ControlToValidate="ddlUsuario"
                                InitialValue="0"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true"
                                SetFocusOnError="true"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!">
                            </asp:RequiredFieldValidator>

                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblPosicion" runat="server" Text="posicion">Posicion</asp:Label>

                            <asp:TextBox ID="txtPosicion" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidatorPosicion"
                                ControlToValidate="txtPosicion"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />
                            <asp:CompareValidator ID="cv"
                                runat="server"
                                ControlToValidate="txtPosicion"
                                Type="Integer"
                                Operator="DataTypeCheck"
                                ForeColor="Turquoise" Font-Bold="true"
                                ErrorMessage="Solo numeros!" />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblLlegada" runat="server" Text="llegada">Hora de Llegada</asp:Label>

                            <asp:TextBox ID="txtLlegada" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldLlegada"
                                ControlToValidate="txtLlegada"
                                Display="Static"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true" />
                        </div>

                        <div class="form-group">

                            <asp:Label ID="lblEstado" runat="server" Text="llegada">Estado</asp:Label>
                            <asp:DropDownList ID="ddlEstado" runat="server" class="form-control">
                                <asp:ListItem Text="Seleccione estado" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Finalizo" Value="True"></asp:ListItem>
                                <asp:ListItem Text="Abandono" Value="False"></asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator2"
                                ControlToValidate="ddlEstado"
                                InitialValue="0"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true"
                                SetFocusOnError="true"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:Button ID="btnCrearResultado" runat="server" Text="Crear Resultado" class="btn btn-primary btn-lg btn-block" OnClick="btnCrearResultado_Click" />
                        </div>

                        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" Font-Bold="true" CssClass="center-block"></asp:Label>
                    </fieldset>
                </form>
            </div>
            <!-- find row -->
        </div>
        <!-- find jumbotron -->

    </div>

    <div class="col-xs-2">
    </div>

</asp:Content>
