<#import "blocks/template.ftlh" as t>
<@t.template user>
<!DOCTYPE html>
<html>
<head>
    <title>MyShop</title>
</head>
<body>
<h1>MyShop</h1>
<hr>


<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти">
    </form>
    <#if user.isAdmin()>
        <a href="/admin"> Панель администратора</a>
    </#if>
<#else>
      <h1><a href="/login">Войти</a></h1>
</#if>

<h4>Товары нашего магазина </h4>

<form action="/" method="get">
    Поиск по названию: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<br>

<form action="/" method="get">
    <input type="submit" value="Все товары"/>
</form>

<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} rub. | <a href="/product/${product.id}">Подробнее</a> </p>
    </div>
    <#else> <h3>Товаров нет</h3>
</#list>

<#if user.email??>

<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название объявления: <input type="text" name="title"/><br><br>
    Описание объявления: <input type="text" name="description"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Город: <input type="text" name="city"/><br><br>
    1-я фотография: <input type="file" name="file1"/><br><br>
    2-я фотография: <input type="file" name="file2"/><br><br>
    3-я фотография: <input type="file" name="file3"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Добавить товар"/>

</form>
</#if>

</body>
</html>
</@t.template>