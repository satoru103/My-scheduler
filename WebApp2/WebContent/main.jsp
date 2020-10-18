<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/main.css">
<title>My scheduler</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
      <header>
          <div class="header_top">
          　<h1><% String message = (String)request.getAttribute("message");%></h1>
            <div class="header_logo">
              <h1>My scheduler</h1>
            </div>
            <div class="header_search">
              <form action="" class="search_box">
               <input type="text">
               <button>検索</button>
              </form>
            </div>
            <div class="header_logout">
             	<form action="Log_in.jsp" method="post">
					<input type="submit" value="ログアウト">
				</form>
            </div>
            <div class="header_username">
              <p>username</p>
            </div>
          </div>
         <hr>
        <main>
        <form>
        	<a href="task_Insert.jsp" class="btn btn-insert">追加</a>
        	<div class="todolist">
        	 <table>
        	 	<c:forEach var="Task" items="${TaskList}">
        	 	<tr>
        	 		<td>

        	 		${Task.task_name}
        	 		<a href="TaskUpdate?task_no=${Task.task_no}" class="btn btn-update">変更</a>

				 	<input type="submit" value="削除"
				 	formaction="TaskDelete?task_no=${Task.task_no}"
				 	formmethod="post">
        	 		</td>
        	 	</tr>


               </c:forEach>
              </table>
             </div>
            </form>
        </main>
      </header>
</body>
</html>