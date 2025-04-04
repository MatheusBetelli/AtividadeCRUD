<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Lista de Gêneros</title>
    </head>
    <body>
        <h1>Lista de Gêneros</h1>
        
        <a href="/genero/insert">Novo Gênero</a>
        
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="genero" items="${generos}">
                    <tr>
                        <td>${genero.id}</td>
                        <td>${genero.nome}</td>
                        <td>
                            <a href="/genero/update?id=${genero.id}">Editar</a> |
                            <a href="/genero/delete?id=${genero.id}">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>