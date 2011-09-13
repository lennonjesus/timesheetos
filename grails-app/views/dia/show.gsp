<%@ page import="timesheetos.Dia" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'dia.label', default: 'Dia')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
    <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label"
                                                                           args="[entityName]"/></g:link></span>
    <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label"
                                                                               args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <div class="dialog">
        <table>
            <tbody>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="dia.id.label" default="Id"/></td>

                <td valign="top" class="value">${fieldValue(bean: diaInstance, field: "id")}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="dia.data.label" default="Data"/></td>

                <td valign="top" class="value">${fieldValue(bean: diaInstance, field: "data")}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="dia.entrada.label" default="Entrada"/></td>

                <td valign="top" class="value">${fieldValue(bean: diaInstance, field: "entrada")}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="dia.fimAlmoco.label" default="Fim Almoco"/></td>

                <td valign="top" class="value">${fieldValue(bean: diaInstance, field: "fimAlmoco")}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="dia.inicioAlmoco.label" default="Inicio Almoco"/></td>

                <td valign="top" class="value">${fieldValue(bean: diaInstance, field: "inicioAlmoco")}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="dia.observacoes.label" default="Observacoes"/></td>

                <td valign="top" class="value">${fieldValue(bean: diaInstance, field: "observacoes")}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="dia.saida.label" default="Saida"/></td>

                <td valign="top" class="value">${fieldValue(bean: diaInstance, field: "saida")}</td>

            </tr>

            </tbody>
        </table>
    </div>

    <div class="buttons">
        <g:form>
            <g:hiddenField name="id" value="${diaInstance?.id}"/>
            <span class="button"><g:actionSubmit class="edit" action="edit"
                                                 value="${message(code: 'default.button.edit.label', default: 'Edit')}"/></span>
            <span class="button"><g:actionSubmit class="delete" action="delete"
                                                 value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                                 onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/></span>
        </g:form>
    </div>
</div>
</body>
</html>
