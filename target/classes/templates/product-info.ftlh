<!DOCTYPE html>
<html>
<head>
    <title>MyShop</title>
</head>
<body>
<h1>MyShop</h1><hr>
<h3>Информация о товаре </h3>
<div style="display: flex; flex-wrap: wrap;">
    <#list images as img>
        <img src="/images/${img.id}" height="100px" style="margin-right: 10px; margin-bottom: 10px;"/>
    </#list>
</div>


<b>Название товара:</b>${product.title}<br><br>
<b>Описание товара:</b>${product.description}<br><br>
<b>Цена товара:</b>${product.price}<br><br>
<b>Город:</b>${product.city}<br><br>
<b>Автор:</b><a href="/user/${product.user.id}">${product.user.name}</a><br><br>
</body>
</html>
