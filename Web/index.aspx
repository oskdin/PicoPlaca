<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Web.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">        
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="first-slide" src="img/AGENTE-681x341.jpg" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Find out</h1>
                        <p>Just with your license plate, date and time, you can know if your car can circulate in Quito.</p>
                        <p><a class="btn btn-lg btn-primary" href="tips.aspx" role="button">Try now</a></p>
                    </div>
                </div>
            </div>            
        </div>       
    </div>
    <div class="container marketing">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="img/plate.jpg" alt="tips" width="140" height="140">
                <h2>Plate</h2>
                <p>Plate number </p>
                <%--<td><asp:TextBox ID="txtPlacaVeiculo" runat="server" BackColor="#FFFFCC" Width="228px" ClientIDMode="Static"></asp:TextBox></td>--%>
                <input type="text" placeholder="ABC-9999" required="required"  runat="server" id="NumPlate" title="ABC-9999" pattern="[A-Z]{3}-[0-9]{4}"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"    ErrorMessage="Requariet plate"    ControlToValidate="NumPlate" ValidationExpression="^[A-Za-z]*$">
                </asp:RequiredFieldValidator>

               
                <%--<p><a class="btn btn-default" href="tips.aspx" role="button">Ver detalles &raquo;</a></p>--%>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img class="img-circle" src="img/fecha-importante.jpg" alt="Generic placeholder image" width="140" height="140">
                <h2>Date</h2>
                <p>Date on which you want to transport by car.</p>
                <input type="date" runat="server" id="fecha" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"    ErrorMessage="Fecha obligatoria"    ControlToValidate="fecha">
                </asp:RequiredFieldValidator>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img class="img-circle" src="img/hora.jpg" alt="Generic placeholder image" width="140" height="140">
                <h2>Hour</h2>
                <p>Time you want to leave.</p>
                <input type="Time" runat="server" id="hora" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"    ErrorMessage="Hora obligatoria"    ControlToValidate="hora">
                </asp:RequiredFieldValidator>
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
    </div>
</asp:Content>
