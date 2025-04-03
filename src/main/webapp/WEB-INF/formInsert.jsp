<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Adicionar Gênero</title>
</head>
<body>
    <h1>Novo Gênero</h1>
    <form action="/insert" method="post">
        Nome: <input type="text" name="nome" required><br>
        Descrição: <input type="text" name="descricao"><br>
        <button type="submit">Salvar</button>
    </form>
    <a href="/list">Cancelar</a>
</body>
</html>