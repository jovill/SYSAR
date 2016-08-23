<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SISTEMA_ARYA.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://js.arcgis.com/4.0/esri/css/main.css"/>
    <script src="https://js.arcgis.com/4.0/"></script>
    <link rel="stylesheet" href="css/esrimap.css"/>
    <script src="Scripts/esrimap.js"></script>
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Clientes', 'Total'],
          ['Finalizados',5],
          ['em andamento',     11],
          ['enviados',      6],
          ['recusados',  5],         
        ]);

        var options = {
          title: 'Clientes'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
    <style>
        .main{
                  padding: 0 !important;
                  margin:  0 !important;
              }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="caixa" style="width:100%; height:100%; border: solid #9fd5b5;">
        <div class="topo" style="width:100%; height:45%;">
            <div id="piechart" class="col-md-4" style="width: 27%; height: 100%; "></div>
            <div id="centrotop" class="col-md-4" style="width: 33%; height: 100%; margin-top:1%;" >
                <div  style="overflow:scroll; width: 100%; height: 100%;">  
                         <div class="alert alert-success">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Success!</strong> É um teste de messagem para verificar o desing do sistema arya em desenvolvimento, desculpe pelo transtorno.
                          </div>
                        <div class="alert alert-success">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Success!</strong> This alert box could indicate a successful or positive action.
                          </div>
                        <div class="alert alert-success">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Success!</strong> This alert box could indicate a successful or positive action.
                          </div>
                        <div class="alert alert-success">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Success!</strong> This alert box could indicate a successful or positive action.
                          </div>
                     <div class="alert alert-success">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Success!</strong> This alert box could indicate a successful or positive action.
                          </div>
                        <div class="alert alert-success">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Success!</strong> This alert box could indicate a successful or positive action.
                          </div>
                        <div class="alert alert-success">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Success!</strong> This alert box could indicate a successful or positive action.
                          </div>
                        <div class="alert alert-success">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Success!</strong> This alert box could indicate a successful or positive action.
                          </div>
                 </div>

            </div>
            <div id="feed" class="col-md-4"  style="width: 40%; height: 100%; float:right ">
                 <%= this.Scheduler.Render()%>
               <%-- <table border="0" cellpadding="0"  cellspacing="1" style="border:solid blue 1px; width:100%; margin-top:3%">
	              <tr>
	                <td bgcolor="blue" height="18" style="color:#FFFFFF"><center><b>NEWS</b></center></td>
	              </tr>
	              <tr>
	                <td>
	                  <marquee id="scroller" scrollamount="3" direction="up" onMouseOver="scroller.scrollAmount='1';scroller.style.cursor='default'" onMouseOut="scroller.scrollAmount='3'" style="width:100%; height:200px">
		            <center>
 
	                      <!-- Begin.noticia1 //-->
		            <table border="0" cellpadding="0"  cellspacing="1" width="100%">
		              <tr>
		                <td height="18" align="center" class="title">
			            <font color="black">Novidades</font><br>
			            <hr  size="1" color="#000" width="98%">
			            <font color="black">esta é uma pagina de testes</font>
		                </td>
		              </tr>
		              <tr>
		                <td class="content" valign="top"  align="center">
			            <font color="black">este é um campo de teste</font>
		                </td>
		              </tr>
		            </table>
	                      <!-- End.noticia1 //-->
 
		            <table border="0" cellpadding="0"  cellspacing="1" width="125">
		              <tr>
		                <td height="18" class="title">
			            <font color="black">19/06/07</font><br>
			            <hr size="1" color="#000" width="98%" align="left">
			            <font color="black">00.31</font>
		                </td>
		              </tr>
		              <tr>
		                <td class="content" valign="top">
			            <font color="black">este campo foi</font>
		                </td>
		              </tr>
		            </table>
		            <table border="0" cellpadding="0"  cellspacing="1" width="125">
		              <tr>
		                <td height="18" class="title"><font color="black">editado por</td>
		              </tr>
		              <tr>
		                <td class="content" valign="top">
			            <font color="black">T.X.A.R.</font><br>
		                </td>
		              </tr>
		            </table>
		            </center>
	                  </marquee>
	                </td>
 
	              </tr>
	            </table>--%>

            </div>



        </div>
       <div id="viewDiv" style="height:55%;"></div>
    </div>
    
</asp:Content>
