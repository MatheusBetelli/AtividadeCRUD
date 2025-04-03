<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Gêneros</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Lista de Gêneros</h1>
    <a href="/generos/novo">Novo Gênero</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Ações</th>
        </tr>
        <c:forEach items="${generos}" var="genero">
            <tr>
                <td>${genero.id}</td>
                <td>${genero.nome}</td>
                <td>${genero.descricao}</td>
                <td>
                    <a href="/generos/editar/${genero.id}">Editar</a> | 
                    <a href="/generos/excluir/${genero.id}">Excluir</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>