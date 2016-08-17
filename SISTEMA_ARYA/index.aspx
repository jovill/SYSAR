<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SISTEMA_ARYA.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://js.arcgis.com/4.0/esri/css/main.css"/>
    <script src="https://js.arcgis.com/4.0/"></script>
    <link rel="stylesheet" href="css/esrimap.css"/>
    <script src="scripts/esrimap.js"></script>
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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="caixa" style="width:100%; height:100%;">
        <div class="topo" style="width:100%; height:45%;">
            <div id="piechart" style="width: 40%; height: 100%; "></div>

        </div>
       <div id="viewDiv" style="height:55%;"></div>
    </div>
    
</asp:Content>
