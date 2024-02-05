google.charts.load('current', {'packages':['corechart']});

// Atrasos dos ônibus :: Gráfico de Pizza
google.charts.setOnLoadCallback(desenharGraficoPizza);

function desenharGraficoPizza() {
    fetch('url-do-seu-servlet-de-atrasos')
        .then(response => response.json())
        .then(data => {
            var dataTable = new google.visualization.DataTable();
            dataTable.addColumn('string', 'Categoria');
            dataTable.addColumn('number', 'Porcentagem');
            data.forEach(item => {
                dataTable.addRow([item.categoria, item.porcentagem]);
            });

            var options = {
                //title: 'Distribuição de Atrasos dos Ônibus',
                pieHole: 0.25,
            };

            var chart = new google.visualization.PieChart(document.getElementById('grafico-pizza'));
            chart.draw(dataTable, options);
        });
}

// Lotação dos ônibus :: Gráfico de Linhas
google.charts.setOnLoadCallback(desenharGraficoBarras);

function desenharGraficoBarras() {
    fetch('url-do-seu-servlet-de-lotacao')
        .then(response => response.json())
        .then(data => {
            var dataTable = new google.visualization.DataTable();
            dataTable.addColumn('string', 'Horário');
            dataTable.addColumn('number', 'Lotação Média');
            data.forEach(item => {
                dataTable.addRow([item.horario, item.lotacaoMedia]);
            });

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
            chart.draw(dataTable, options);
        });
}
