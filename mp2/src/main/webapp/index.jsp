<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:opsz,wght@9..40,200;9..40,300;9..40,500&display=swap" rel="stylesheet">

    <link rel="shortcut icon" type="imagex/svg" href="./assets/bee-svgrepo-com-1.svg">
    <link rel="stylesheet" href="./styles/header.css">
    <link rel="stylesheet" href="./styles/footer.css">

    <title>Estatísticas dos ônibus</title>
</head>

<body>
    <header>
        <div id="logo">
            <div>
                <img src="./assets/bee-origami-paper-svgrepo-com.svg" alt="abelha de origami" height="42">
            </div>

            <div>
                <h1>Busbus</h1>
            </div>
        </div>
            
        <nav class="menu">
             <ul> <!-- Menu de navegação -->
                 <li><a href="#">Estatísticas dos ônibus</a></li>
                 <li><a href="./previsao.jsp">Previsão de ônibus</a></li>
             </ul>
        </nav>
    </header>

    <!-- Conteúdo: Gráficos -->
    <section>
        <h1>Estatísticas dos ônibus</h1>

        <div id="grafico">
            <h3>Atrasos dos ônibus</h3>

            <div id="grafico-pizza"></div>
            
        </div>

        <div id="grafico">
            <h3>Lotação dos ônibus por Horário</h3>
            <div id="grafico-barras"></div>
        </div>

        <style>
            #grafico {
                padding: 2rem 8rem;
            }
        </style>

    </section>
    <!-- Fim do Conteúdo -->

    <footer>
        <div id="logo-footer">
            <img src="./assets/bee-svgrepo-com-2.svg" alt="abelhinha" height="60">
            <h2>Busbus</h2>
        </div>
        <nav class="menu-footer">
            <h3>Links rápidos</h3>
            <ul>
                <li><a href="./index.jsp">Estatísticas dos ônibus</a></li>
                <li><a href="./previsao.jsp">Previsão de ônibus</a></li>
            </ul>
        </nav>
        <div class="info-footer">
            <h3>Universidade Federal de São Carlos <br> Campus Sorocaba</h3>

            <p>
                Desenvolvimento Web <br>
                Mini Projeto 2 <br>
                <br>
                Grupo: <br>
                Bruna Scarpelli, Felipe Ottoni, Gustavo Kis, Letícia Almeida e Ricardo Suzuki.
            </p>
        </div>
    </footer>
    
    <!-- Importaçãodos scripts e biblioteca Google Charts-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="./scripts/graficos.js"></script>

</body>
</html>

<!-- PARA USO DE TESTE DE SERVIDOR :: PRINTAR HELLO WORLD
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
	<h1>Hello World!</h1>
	<c:if test="${not empty param.name}">
		<p>Name: ${param.name}</p>
	</c:if>
</body>
</html>
-->