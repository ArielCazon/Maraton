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
                            <asp:DropDownList ID="txtMaraton" runat="server" class="form-control">
                                <asp:ListItem Text="Seleccione maraton" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Maraton 1" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Maraton 2" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Maraton 3" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Maraton 4" Value="4"></asp:ListItem>
                                <asp:ListItem Text="Maraton 5" Value="5"></asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator1"
                                ControlToValidate="txtMaraton"
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

                            <asp:TextBox ID="txtLlegada" runat="server" class="form-control"></asp:TextBox>
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
                            <asp:DropDownList ID="txtEstado" runat="server" class="form-control">
                                <asp:ListItem Text="Seleccione estado" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Finalizo" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Abandono" Value="2"></asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator2"
                                ControlToValidate="txtEstado"
                                InitialValue="0"
                                runat="server"
                                ForeColor="Turquoise" Font-Bold="true"
                                SetFocusOnError="true"
                                ErrorMessage="*"
                                Text="Este campo es obligatorio!">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:Button ID="btnCrearResultado" runat="server" Text="Crear Resultado" class="btn btn-primary btn-lg btn-block" />
                        </div>


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
