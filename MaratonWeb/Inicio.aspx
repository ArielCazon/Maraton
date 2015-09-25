<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="MaratonWeb.Inicio" %>
<%@ Register Src="~/Master/ucFooter.ascx" TagPrefix="uc1" TagName="ucFooter" %>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Prueba</title>
		<link href="css/bootstrap.min.css" rel="stylesheet"/>
          
    </head>

    <body>
        <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <h2>Bienvenido a Maraton</h2>
                            </div>
                        </div>     <!-- find row -->

              <br class="clearfix" />

                 <div class="row">
                    <div class="col-xs-6">
                        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                    </div>
                    <div class="col-xs-3 text-right">
                      <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
                    </div>
                    <div class="col-xs-3 ">
                     <asp:HyperLink ID="HyperLink3" runat="server">HyperLink</asp:HyperLink>
                    </div>
                </div>     <!-- find row -->

              <br class="clearfix" />

                <div class="row">
                    <div class="jumbotron">
                          <div class="container">
                            <h1>Hello, world!</h1>
                            <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
                            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more »</a></p>
                          </div>
                        </div>
                </div>     <!-- find row -->
      

                <br class="clearfix" />

                <div class="row">
                    <div class="col-xs-12">
                        
                    </div>
                </div>     <!-- find row -->
                 
            <br class="clearfix" />   

                <div class="row">
                    <div class="col-xs-12 text-center">
                         <uc1:ucFooter id="UcFooter1" runat="server" />
                    </div>
                </div>    <!-- find row -->

        
        </div> <!-- find container -->

        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script type="text/javascript" src="{{ asset('js/jquery.js') }}"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
     
    </body>
</html>



   