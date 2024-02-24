
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servlet onClick Example</title>
        <style type="text/css">
            .paddingBtm {
                padding-bottom: 12px;
            }
        </style>
        <script type="text/javascript">
            function callServlet() {
                document.forms[0].action = "/";
                document.forms[0].submit();
                document.getElementById("btn").onclick = ()=> {
                	
                }
            }
        </script>
    </head>
    <body>
        <center>
            <h2>Servlet onClick Example</h2>
            <form id="loginFormId" name="loginForm">
              <div id="loginBtn">
                    <input id="btn" type="submit" value="Login" onclick="callServlet();" />
                </div>
            </form>
        </center>
    </body>
</html>