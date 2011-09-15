<%@ page import="timesheetos.Dia" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'dia.label', default: 'Dia')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
    <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label"
                                                                               args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <div class="list">
        <table>
            <thead>
            <tr>

                <g:sortableColumn property="id" title="${message(code: 'dia.id.label', default: 'Id')}"/>

                <g:sortableColumn property="data" title="${message(code: 'dia.data.label', default: 'Data')}"/>

                <g:sortableColumn property="entrada" title="${message(code: 'dia.entrada.label', default: 'Entrada')}"/>

                <g:sortableColumn property="inicioAlmoco"
                                  title="${message(code: 'dia.inicioAlmoco.label', default: 'Inicio Almoco')}"/>

                <g:sortableColumn property="fimAlmoco"
                                  title="${message(code: 'dia.fimAlmoco.label', default: 'Fim Almoco')}"/>

                <g:sortableColumn property="saida" title="${message(code: 'dia.saida.label', default: 'Saida')}"/>

                <th>Horas trabalhadas</th>

                <th>Observações</th>

            </tr>
            </thead>
            <tbody>
            <g:each in="${diaInstanceList}" status="i" var="diaInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                    <td><g:link action="show"
                                id="${diaInstance.id}">${fieldValue(bean: diaInstance, field: "id")}</g:link></td>

                    <td>${fieldValue(bean: diaInstance, field: "data")}</td>

                    <td>${fieldValue(bean: diaInstance, field: "entrada")}</td>

                    <td>${fieldValue(bean: diaInstance, field: "inicioAlmoco")}</td>

                    <td>${fieldValue(bean: diaInstance, field: "fimAlmoco")}</td>

                    <td>${fieldValue(bean: diaInstance, field: "saida")}</td>

                    <td>${diaInstance.horasTrabalhadas()}</td>

                    <td>${diaInstance.observacoes}</td>

                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

    <hr />
    Horas previstas: ${horasPrevistas}
    <br />
    Horas horasRealizadas: ${horasRealizadas}
    <br />
    Saldo de horas: ${saldoHoras}
    <hr />

</div>
</body>
</html>
