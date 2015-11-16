<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Administracion.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MaratonWeb.Administracion.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xs-2"></div>

    <div class="col-xs-8">

        <div class="row">
            <div class="col-lg-12">
                <div class="well bs-component">
                    <form class="form-horizontal" id="Login" runat="server">
                        <fieldset>
                            <legend>Ingresar al administracion</legend>
                            <div class="form-group">

                                <label for="inputEmail" id="lblEmail" runat="server" class="col-lg-2 control-label">Email</label>
                                <div class="col-lg-10">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator
                                        ID="RequiredFieldValidatorEmail"
                                        ControlToValidate="txtEmail"
                                        Display="Static"
                                        ErrorMessage="*"
                                        Text="Este campo es obligatorio!"
                                        runat="server"
                                        ForeColor="Turquoise" Font-Bold="true" />

                                    <asp:RegularExpressionValidator
                                        ID="RegularExpressionValidator1"
                                        runat="server"
                                        ControlToValidate="txtEmail"
                                        Display="Dynamic"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        ForeColor="Turquoise" Font-Bold="true"
                                        ErrorMessage="Ingrese un formato de email valido">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword" id="lblPassword" runat="server" class="col-lg-2 control-label">Password</label>
                                <div class="col-lg-10">
                                    <asp:TextBox ID="txtPassword" TextMode="password" runat="server" CssClass="form-control" />
                                    <asp:RequiredFieldValidator
                                        ID="RequiredFieldValidatorPassword"
                                        ControlToValidate="txtPassword"
                                        Display="Static"
                                        ErrorMessage="*"
                                        Text="Este campo es obligatorio!"
                                        runat="server"
                                        ForeColor="Turquoise" Font-Bold="true" />
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" class="btn btn-primary btn-lg btn-block" />
                                </div>
                                <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" Font-Bold="true" CssClass="center-block"></asp:Label>
                            </div>

                        </fieldset>
                    </form>
                    <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div>
                </div>
            </div>
        </div>
        <!-- find row -->
    </div>

    <div class="col-xs-2"></div>

</asp:Content>
