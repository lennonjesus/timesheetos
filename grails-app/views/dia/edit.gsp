<%@ page import="timesheetos.Dia" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'dia.label', default: 'Dia')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
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
    <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${diaInstance}">
        <div class="errors">
            <g:renderErrors bean="${diaInstance}" as="list"/>
        </div>
    </g:hasErrors>
    <g:form method="post">
        <g:hiddenField name="id" value="${diaInstance?.id}"/>
        <g:hiddenField name="version" value="${diaInstance?.version}"/>
        <div class="dialog">
            <table>
                <tbody>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="data"><g:message code="dia.data.label" default="Data"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: diaInstance, field: 'data', 'errors')}">

                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="entrada"><g:message code="dia.entrada.label" default="Entrada"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: diaInstance, field: 'entrada', 'errors')}">

                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="fimAlmoco"><g:message code="dia.fimAlmoco.label" default="Fim Almoco"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: diaInstance, field: 'fimAlmoco', 'errors')}">

                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="inicioAlmoco"><g:message code="dia.inicioAlmoco.label"
                                                             default="Inicio Almoco"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: diaInstance, field: 'inicioAlmoco', 'errors')}">

                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="observacoes"><g:message code="dia.observacoes.label" default="Observacoes"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: diaInstance, field: 'observacoes', 'errors')}">
                        <g:textField name="observacoes" value="${diaInstance?.observacoes}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="saida"><g:message code="dia.saida.label" default="Saida"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: diaInstance, field: 'saida', 'errors')}">

                    </td>
                </tr>

                </tbody>
            </table>
        </div>

        <div class="buttons">
            <span class="button"><g:actionSubmit class="save" action="update"
                                                 value="${message(code: 'default.button.update.label', default: 'Update')}"/></span>
            <span class="button"><g:actionSubmit class="delete" action="delete"
                                                 value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                                 onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/></span>
        </div>
    </g:form>
</div>
</body>
</html>
