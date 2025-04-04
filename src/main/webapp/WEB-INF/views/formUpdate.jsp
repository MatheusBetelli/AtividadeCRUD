<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Gênero</title>
</head>
<body>
    <h1>Editar Gênero</h1>
    <form action="/update" method="post">
        <input type="hidden" name="id" value="${genero.id}">
        Nome: <input type="text" name="nome" value="${genero.nome}" required><br>
        Descrição: <input type="text" name="descricao" value="${genero.descricao}"><br>
        <button type="submit">Atualizar</button>
    </form>
    <a href="/list">Cancelar</a>
</body>
</html>