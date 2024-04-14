<!DOCTYPE html>
<html>
<head>
    <title>MyShop</title>
</head>
<body>
<h1>MyShop</h1><hr>

<h3>Подробная информация о пользователе <i>${user.name}</i></h3>
<b>Номер телефона: </b>${user.phoneNumber}

<h3>Товары пользователя</h3>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} rub. | <a href="/product/${product.id}">Подробнее</a> </p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list >

<#if errorMessage??>
    <h2>${errorMessage}</h2>
</#if>

</body>
</html>