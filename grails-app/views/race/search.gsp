<%--
  Created by IntelliJ IDEA.
  User: nwj
  Date: 13-10-28
  Time: 下午10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="racetrack.Race" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'race.label', default: 'Race')}" />
    <title>Search for races</title>
</head>
<body>
    <div class="body">
        <h1>Search for Races</h1>
        <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
        </g:if>
        <g:form action="search" method="post">
            <div class="dialog">
                <table>
                    <tr class='prop'>
                        <td valign='top' class='name'>
                            <lable for='city'>City:</lable>
                        </td>
                        <td valign='top' class="value">
                            <input type="text" maxlength="30" name='city' />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="buttons">
                <input type="submit" value="Search" class="formbutton" />
            </div>
        </g:form>
    </div>
</body>
</html>
