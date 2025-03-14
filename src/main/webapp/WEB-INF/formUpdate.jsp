<%@ page contentType="text/html;charset=UTF-8" language="java"  %>


<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Nova Tarefa</title>
    </head>
    <body>
        <h1>Editar Tarefa</h1>
        <form action="/tarefas/update" method="post">
            <input type="hidden" name="id" value="${tarefa.id}" />
            <label>Descrição</label>
            <input type="text" name = "descricao" value="${tarefa.descricao}"/>
            <button type="submit">Salvar</button>
        </form>
    </body>
</html>