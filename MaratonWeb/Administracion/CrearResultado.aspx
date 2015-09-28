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

                      <asp:Label ID="lblMaraton" runat="server" Text="maraton"  class="col-lg-1 control-label">Maraton</asp:Label>
                       <div class="col-lg-11">
                        <select class="form-control" ID="txtMaraton">
                        <option value="0">Seleccionar maraton</option>
                        <option>Maraton 1</option>
                        <option>Maraton 2</option>
                        <option>Maraton 3</option>
                        <option>Maraton 4</option>
                        <option>Maraton 5</option>
                        </select>
                       </div>

                </div>

                 <div class="form-group">
                       <asp:Label ID="lblPosicion" runat="server" Text="posicion"  class="col-lg-1 control-label">Posicion</asp:Label>
                       <div class="col-lg-11">
                       <asp:TextBox ID="txtPosicion" runat="server" class="form-control" ></asp:TextBox>
                           <asp:RequiredFieldValidator
                            ID="RequiredFieldValidatorPosicion"
                            ControlToValidate="txtPosicion"
                            Display="Static"
                            ErrorMessage="*"
                            Text="Este campo es obligatorio!"
                            runat="server"
                            ForeColor="Red" />
                       </div>

                </div>

                <div class="form-group">
                    <asp:Label ID="lblLlegada" runat="server" Text="llegada"  class="col-lg-1 control-label">Llegada</asp:Label>
                       <div class="col-lg-11">
                       <asp:TextBox ID="txtLlegada" runat="server" class="form-control" ></asp:TextBox>
                           <asp:RequiredFieldValidator
                            ID="RequiredFieldLlegada"
                            ControlToValidate="txtLlegada"
                            Display="Static"
                            ErrorMessage="*"
                            Text="Este campo es obligatorio!"
                            runat="server"
                            ForeColor="Red" />
                       </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblEstado" runat="server" Text="estado"  class="col-lg-1 control-label">Estado</asp:Label>
                    <div class="col-lg-11">
                      <select class="form-control" id="select1">
                        <option>Seleccionar estado</option>
                        <option>Finalizo</option>
                        <option>Abandono</option>
                      </select>
                    </div>
                 </div>

             <div class="form-group">
                    <label for="select" class="col-lg-1 control-label"></label>
                       <div class="col-lg-11">
                      <input class="btn btn-primary" type="submit" value="Guardar">
                       </div>
                </div> 


            </fieldset>
            </form>
		 </div><!-- find row -->
        </div><!-- find jumbotron -->

 	</div>

 <div class="col-xs-2">
 </div>

</asp:Content>
