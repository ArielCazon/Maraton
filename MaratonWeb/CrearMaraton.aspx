<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Administracion.Master" AutoEventWireup="true" CodeBehind="CrearMaraton.aspx.cs" Inherits="MaratonWeb.CrearMaraton" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="col-lg-12">
        <div >

        </div>
    </div>


    <form class="form-horizontal" id="NewMaraton" runat="server">
        <fieldset>
            <legend>Crear Maraton</legend>
            <div class="form-group">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblMaximoParticipantes" runat="server" Text="Cantidad Maxima de Participantes" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtMaximoParticipantes" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblLugarSalida" runat="server" Text="Lugar de Salida" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtLugarSalida" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblListaEspera" runat="server" Text="Personas en lista de espera" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtListaEspera" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPremio1" runat="server" Text="Premio Primera Posicion" CssClass="control-label"></asp:Label>
                <asp:DropDownList ID="ddlPremio1" runat="server">
                    <asp:ListItem Text="500" Value="500"></asp:ListItem>
                    <asp:ListItem Text="1000" Value="1000"></asp:ListItem>
                    <asp:ListItem Text="1500" Value="1500"></asp:ListItem>
                    <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                    <asp:ListItem Text="3000" Value="3000"></asp:ListItem>
                    <asp:ListItem Text="4000" Value="4000"></asp:ListItem>
                    <asp:ListItem Text="5000" Value="5000"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPremio2" runat="server" Text="Premio Segunda Posicion" CssClass="control-label"></asp:Label>
                <asp:DropDownList ID="ddlPremio2" runat="server">
                    <asp:ListItem Text="500" Value="500"></asp:ListItem>
                    <asp:ListItem Text="1000" Value="1000"></asp:ListItem>
                    <asp:ListItem Text="1500" Value="1500"></asp:ListItem>
                    <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                    <asp:ListItem Text="3000" Value="3000"></asp:ListItem>
                    <asp:ListItem Text="4000" Value="4000"></asp:ListItem>
                    <asp:ListItem Text="5000" Value="5000"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPremio3" runat="server" Text="Premio Tercera Posicion" CssClass="control-label"></asp:Label>
                <asp:DropDownList ID="ddlPremio3" runat="server">
                    <asp:ListItem Text="500" Value="500"></asp:ListItem>
                    <asp:ListItem Text="1000" Value="1000"></asp:ListItem>
                    <asp:ListItem Text="1500" Value="1500"></asp:ListItem>
                    <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                    <asp:ListItem Text="3000" Value="3000"></asp:ListItem>
                    <asp:ListItem Text="4000" Value="4000"></asp:ListItem>
                    <asp:ListItem Text="5000" Value="5000"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <button type="submit" class="btn btn-primary">Crear</button>
                </div>
            </div>
        </fieldset>
    </form>
</asp:Content>
