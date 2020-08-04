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
                        <p>
                            <%--<a class="btn btn-lg btn-primary" runat="server" onclick="btnConsulta_Click" role="button">Try now</a>--%>

                            <div class="col-6 text-lg-right">                                            
                                <td>
                                    <asp:Button ID="btnMensaje6" runat="server" Text="Try now"  CssClass="btn btn-success btn-sm"
                                        onclick="btnConsulta_Click" />
                                </td>
                            </div>
                        </p>
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
                <asp:TextBox ID="txtPlacaVeiculo" placeholder="ABC-9999" required="required" runat="server" type="text" BackColor="#FFFFCC" Width="150px" ClientIDMode="Static" title="ABC-9999" pattern="[A-Z]{3}-[0-9]{4}"></asp:TextBox>
                 <%-- validation for textBox, dont allow other format like 3 words and 4 numbers, show a message if exist one error --%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"    ErrorMessage="Requariet plate"    ControlToValidate="txtPlacaVeiculo" ValidationExpression="^[A-Za-z]*$">
                </asp:RequiredFieldValidator>                                                          
               
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img class="img-circle" src="img/fecha-importante.jpg" alt="Generic placeholder image" width="140" height="140">
                <h2>Date</h2>
                <p>Date on which you want to transport by car.</p>                
                <asp:TextBox ID="txtFecha" required="required" runat="server" type="date" BackColor="#FFFFCC" Width="150px" ClientIDMode="Static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"    ErrorMessage="Fecha obligatoria"    ControlToValidate="txtFecha">
                </asp:RequiredFieldValidator>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img class="img-circle" src="img/hora.jpg" alt="Generic placeholder image" width="140" height="140">
                <h2>Hour</h2>
                <p>Time you want to leave.</p>
                <asp:TextBox ID="txtHora" required="required" runat="server" type="Time" BackColor="#FFFFCC" Width="150px" ClientIDMode="Static"></asp:TextBox>               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"    ErrorMessage="Hora obligatoria"    ControlToValidate="txtHora">
                </asp:RequiredFieldValidator>
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
    </div>
</asp:Content>
