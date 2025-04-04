<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Excluir Gênero</title>
</head>
<body>
    <h1>Excluir Gênero</h1>
    <p>Tem certeza que deseja excluir "${genero.nome}"?</p>
    <form action="/delete" method="post">
        <input type="hidden" name="id" value="${genero.id}">
        <button type="submit">Confirmar</button>
    </form>
    <a href="/list">Cancelar</a>
</body>
</html>