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

    <title>Previsão de ônibus</title>
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
                 <li><a href="./index.jsp">Estatísticas dos ônibus</a></li>
                 <li><a href="#">Previsão de ônibus</a></li>
             </ul>
        </nav>
    </header>

    <!-- Conteúdo: Horarios do onibus no ponto -->
    <section>
        <h1>Previsão de ônibus</h1>

        <div id = busca>
            <select name="opcoes" id="opcoes">
                <option value="" selected>- - -</option>
                <option value="opcao1">Ponto 1</option>
                <option value="opcao2">Ponto 2</option>
                <option value="opcao3">Ponto 3</option>
            </select>
       </div>

       <div id="resultado"></div>

       <style>
            #opcoes {
                margin-top: 32px;
                width: 300px;
                height: 32px;
                color: #333;
                border-radius: 5px;
                background-color: #f2f2f2;
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

</body>
</html>