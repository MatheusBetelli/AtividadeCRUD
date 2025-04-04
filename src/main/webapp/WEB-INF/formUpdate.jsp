<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Editar Gênero</title>
    </head>
    <body>
        <h1>Editar Gênero</h1>
        <form action="/genero/update" method="post">
            <input type="hidden" name="id" value="${genero.id}" />
            <label>Nome</label>
            <input type="text" name="nome" value="${genero.nome}" required/>
            <button type="submit">Salvar</button>
        </form>
    </body>
</html>