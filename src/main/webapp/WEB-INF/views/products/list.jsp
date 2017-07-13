<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Produtos</title>
    </head>
    <body>
        <div>
            <p>${sucesso}</p>
        </div>
        <table>
            <tr>
                <td>Título</td>
                <td>Valores</td>
            </tr>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><a href="${spring:mvcUrl('PC#show').arg(0,product.id).build()}">${product.title}</a></td>
                    <td>
                        <c:forEach items="${product.prices}" var="price">
                            [${price.value} - ${price.bookType}]
                        </c:forEach>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
