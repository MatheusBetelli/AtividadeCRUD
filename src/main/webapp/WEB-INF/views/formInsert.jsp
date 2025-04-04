<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Formulário</title>
    </head>
    <body>
        <h1>Novo Gênero</h1>
        <form action="/genero/insert" method="post">
            <label>Nome</label>
            <input type="text" name="nome" required/>
            <button type="submit">Salvar</button>
        </form>
    </body>
</html>