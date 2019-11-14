<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaster.Master" AutoEventWireup="true" CodeBehind="registros.aspx.cs" Inherits="IglesiaAdventistaSD.registros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- Vamos a crear la tabla Conferencia general --%>

    <div class="container">
        <div class="row">
            <div class="form-group PanelContenido col">
                <div class="text-center">
                    <h5>Conferencia general</h5>
                </div>

                <div class="col-lg-4 col-md-4">
                    <asp:Label Text="ID:" runat="server" />
                </div>

                <div class="col-lg-8 col-md-4">
                    <asp:TextBox runat="server" ID="txtID" CssClass="form-control" />
                </div>

                <div class="col-lg-4 col-md-4">
                    <asp:Label Text="Nombre:" runat="server" />
                </div>

                <div class="col-lg-8 col-md-4">
                    <asp:TextBox runat="server" ID="txtNombreCG" CssClass="form-control" />
                </div>

                <div class="col-lg-4 col-md-4">
                    <asp:Label Text="Presidente(a):" runat="server" />
                </div>


                <div class="col-lg-8 col-md-4">
                    <asp:TextBox runat="server" ID="txtPresidenteCG" CssClass="form-control" />
                </div>

                <div class="col-lg-4 col-md-4">
                    <asp:Label Text="Secretario(a):" runat="server" />
                </div>

                <div class="col-lg-8 col-md-4">
                    <asp:TextBox runat="server" ID="txtSecretarioCG" CssClass="form-control" />
                </div>

                <div class="col-lg-4 col-md-4">
                    <asp:Label Text="Tesorero(a):" runat="server" />
                </div>

                <div class="col-lg-8 col-md-4">
                    <asp:TextBox runat="server" ID="txtTesoreroCG" CssClass="form-control" />
                </div>


                <div class="col-12 col-md-12 text-center">
                    <asp:Button Text="Registrar" runat="server" ID="btnRegistarCG" CssClass=" btn-success" />
                </div>

                <div class="col-12 col-md-12 tex-center">
                    <asp:Button Text="Nuevo" runat="server" CssClass=" btn-success" />
                </div>

            </div>
        





        <%-- Tabla divisiones --%>

        <div class="form-group PanelContenido col" style="margin-left:50px">
            <div class="text-center">
                <h5>Divisiones</h5>
            </div>

            <div class="col-lg-4 col-md-4">
                <asp:Label Text="ID:" runat="server" />
            </div>

            <div class="col-lg-8 col-md-4">
                <asp:TextBox runat="server" ID="txtIDdivisiones" CssClass="form-control" />
            </div>

            <div class="col-lg-4 col-md-4">
                <asp:Label Text="Nombre:" runat="server" />
            </div>

            <div class="col-lg-8 col-md-4">
                <asp:TextBox runat="server" ID="txtNombreDivi" CssClass="form-control" />
            </div>

            <div class="col-lg-4 col-md-4">
                <asp:Label Text="Presidente(a):" runat="server" />
            </div>


            <div class="col-lg-8 col-md-4">
                <asp:TextBox runat="server" ID="txtPresidenteDivi" CssClass="form-control" />
            </div>

            <div class="col-lg-4 col-md-4">
                <asp:Label Text="Secretario(a):" runat="server" />
            </div>

            <div class="col-lg-8 col-md-4">
                <asp:TextBox runat="server" ID="txtSecretarioDivi" CssClass="form-control" />
            </div>

            <div class="col-lg-4 col-md-4">
                <asp:Label Text="Tesorero(a):" runat="server" />
            </div>

            <div class="col-lg-8 col-md-4">
                <asp:TextBox runat="server" ID="txtTesoreroDivi" CssClass="form-control" />
            </div>


            <div class="col-12 col-md-12 text-center">
                <asp:Button Text="Registrar" runat="server" ID="Button1" CssClass=" btn-success" />
            </div>

            <div class="col-12 col-md-12 tex-center">
                <asp:Button Text="Nuevo" runat="server" CssClass=" btn-success" />
            </div>




            
        </div>
    </div>



</asp:Content>
