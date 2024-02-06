google.charts.load('current', {'packages':['corechart']});

// Atrasos dos ônibus :: Gráfico de Pizza
google.charts.setOnLoadCallback(desenharGraficoAtrasos);

function desenharGraficoAtrasos() {
    fetch('/atrasoservlet')
        .then(response => response.json())
        .then(data => {
            var dataTable = new google.visualization.DataTable();
            dataTable.addColumn('string', 'Categoria');
            dataTable.addColumn('number', 'Porcentagem');
            dataTable.addRow(['Atrasados', data.porcentagem_atrasados]);
            dataTable.addRow(['No Horário', data.porcentagem_no_horario]);

            var options = {
                //title: 'Distribuição de Atrasos dos Ônibus',
                pieHole: 0.25,
            };

            var chart = new google.visualization.PieChart(document.getElementById('grafico-atrasos'));
            chart.draw(dataTable, options);
        });
}

// Lotação média por linha de ônibus :: Gráfico de Barras
google.charts.setOnLoadCallback(desenharGraficoLinhaporLinha);

function desenharGraficoLinhaporLinha() {
    fetch('url-do-seu-servlet-de-lotacao-media')
        .then(response => response.json())
        .then(data => {
            var dataTable = new google.visualization.DataTable();
            dataTable.addColumn('string', 'Linha de Ônibus');
            dataTable.addColumn('number', 'Lotação Média');
            data.forEach(item => {
                dataTable.addRow([item.nome_linha, item.lotacao_media]);
            });

            var options = {
                //title: 'Lotação Média por Linha de Ônibus',
                chartArea: {width: '60%'},
                hAxis: {
                    title: 'Lotação Média',
                    minValue: 0,
                    maxValue: 50
                },
                vAxis: {
                    title: 'Linha de Ônibus'
                }
            };

            var chart = new google.visualization.BarChart(document.getElementById('grafico-linhaporlinha'));
            chart.draw(dataTable, options);
        });
}