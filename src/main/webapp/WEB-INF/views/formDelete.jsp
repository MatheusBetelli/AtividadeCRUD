<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Remover Gênero</title>
    </head>
    <body>
        <h1>Remover Gênero</h1>
        <p>Tem certeza que quer remover o gênero <strong>${genero.nome}</strong>?</p>

        <form action="/genero/delete" method="post">
            <input type="hidden" name="id" value="${genero.id}" />
            <button type="submit">Deletar</button>
        </form>
    </body>
</html>