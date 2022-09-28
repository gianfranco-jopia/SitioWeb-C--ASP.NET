﻿<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="BuscarC.aspx.cs" Inherits="Minimarket.BuscarC" MaintainScrollPositionOnPostback="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Buscar Producto</title>
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/buscarP.css" rel="stylesheet" />
        <script>
            function campos() {
                swal('Advertencia', 'Este producto ya se encuentra en el carrito', 'warning')
            }
            function advertencia() {
                swal('Advertencia', 'No queda stock del producto', 'warning')
            }
        </script>
    </head>
    <body>
    <section id="banner">
			<div class="slider">
				<ul>					
					<li>   
					   	<center>
				         	<img src="img/carro02.png" /><br />
                       	</center>
                    </li>
					<li>   
					   	<center>
				         	<img src="img/carro01.png" /><br />
                       	</center>                        
                    </li>
                    <li>   
					   	<center>
				         	<img src="img/carro03.png" /><br />
                       	</center>                        
                    </li>
                    <li>   
					   	<center>
				         	<img src="img/carro04.png" /><br />	
                       	</center>                        
                    </li>
				</ul>				
			</div>			
		  	<section id="titulolbt">
				<br /><h1 class="icon-globe">MINIMARKET ONLINE DEL PUEBLO</h1><br />
				<h3>EN NUESTRO MINIMARKET, LES OFRECEMOS
				LOS MEJORES PRODUCTOS Y AL MEJOR PRECIO,<br /> TODO A SU SERVICIO, SIN NECESIDAD DE SALIR DE SU HOGAR.</h3><br />			
		  	</section>
		</section>
        <main class="fondo">
        <br /><br />
		<div class="form">
    		<h1>Buscar Categoria</h1>
    		<br>
     		<div>
                <asp:DropDownList ID="CbxBuscarC" runat="server" Width="410px" Height="35px" DataSourceID="minimarket" DataTextField="Descripcion" DataValueField="Descripcion"></asp:DropDownList>
                <asp:SqlDataSource ID="minimarket" runat="server" ConnectionString="<%$ ConnectionStrings:ConectionBD %>" SelectCommand="SELECT [Descripcion] FROM [TipoP]"></asp:SqlDataSource>
                <br /><br />
        		<asp:Button ID="BtnBuscar" runat="server" Text="Buscar" BackColor="#FF6600" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Width="410px" OnClick="BtnBuscar_Click"/>
     		</div>
    	</div>
        <br /><br />
            <center>
            <asp:GridView ID="GvListar" runat="server" AutoGenerateColumns="False" Width="40%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" DataKeyNames="Codigo" OnSelectedIndexChanged="GvListar_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
            <Columns>
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                    <asp:BoundField DataField="TipoProducto" HeaderText="Tipo de Producto" SortExpression="TipoProducto" />
                    <asp:CommandField ShowSelectButton="True" SelectText="Agregar" />
             </Columns>
            </asp:GridView>
            </center>
        <br /><br />
        </main>
    </body>
    </html>
</asp:Content>
