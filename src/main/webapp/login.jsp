<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=q, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <div>
      <h2>${name}</h2>
    </div>
    <form  action="/demo/login" method="post">
      <div>
        <label for="user-name">username</label>
        <input  if="user-name" type="text" name="user-name">
      </div>
      <div>
        <label for="password">password</label>
        <input if="password" type="password" name="password">
      </div>
      <div>
        <input type="submit">
      </div>
    </form>
  </body>
</html>