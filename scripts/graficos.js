google.charts.load('current', {'packages':['corechart']});

// Atrasos dos ônibus :: Gráfico de Pizza
google.charts.setOnLoadCallback(desenharGraficoPizza);

function desenharGraficoPizza() {
    var data = google.visualization.arrayToDataTable([
    ['Categoria', 'Porcentagem'],
    ['Atrasados', 30],
    ['Pouco Atrasados', 20],
    ['No Horário', 50]
    ]);

    var options = {
    //title: 'Distribuição de Atrasos dos Ônibus',
    pieHole: 0.4,
    };

    var chart = new google.visualization.PieChart(document.getElementById('grafico-pizza'));
    chart.draw(data, options);
}

// Lotação dos ônibus :: Gráfico de Linhas
google.charts.setOnLoadCallback(desenharGraficoBarras);

function desenharGraficoBarras() {
    var data = google.visualization.arrayToDataTable([
    ['Horário', 'Lotação Média'],
    ['8:00', 70],
    ['12:00', 80],
    ['18:00', 90]
    ]);

    var options = {
    //title: 'Lotação Média dos Ônibus por Horário',
    chartArea: {width: '50%'},
    hAxis: {
        title: 'Lotação Média',
        minValue: 0
    },
    vAxis: {
        title: 'Horário'
    }
    };

    var chart = new google.visualization.BarChart(document.getElementById('grafico-barras'));
    chart.draw(data, options);
}