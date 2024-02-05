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
        pieHole: 0.25,
    };

    var chart = new google.visualization.PieChart(document.getElementById('grafico-pizza'));
    chart.draw(data, options);
}

// Lotação dos ônibus :: Gráfico de Linhas
google.charts.setOnLoadCallback(desenharGraficoBarras);

function desenharGraficoBarras() {
    var data = google.visualization.arrayToDataTable([
        ['Horário', 'Lotação Média'],
        ['7:00', 60],
        ['9:00', 32],
        ['11:00', 50],
        ['14:00', 25],
        ['16:00', 18],
        ['18:00', 60],
        ['20:00', 46],
        ['22:00', 15]
    ]);

    var options = {
        //title: 'Lotação Média dos Ônibus por Horário',
        chartArea: {width: '60%'},
        hAxis: {
            title: 'Lotação Média',
            minValue: 0,
            maxValue: 60
        },
        vAxis: {
            title: 'Horário'
        }
    };

    var chart = new google.visualization.BarChart(document.getElementById('grafico-barras'));
    chart.draw(data, options);
}