<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chat CMS</title>
</head>
<body>
    <div class="container">
        <h2 class="bg-dark text-white p-2 text-center">
            Welcome <span id="user-name">User</span>!
        </h2>
        <h4 class="bg-success text-white text-center p-1">Chat Bot.</h4>
        <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-sm-10 border border-primary shadow-lg" id="msg-window"
                style="height:400px; overflow:scroll;">
                <!-- msg will popup here by js -->
            </div>
            <div class="col-lg-7 col-sm-12 px-4 m-3">
                <form class="row">
                    <div class="form-group col-8">
                        <input class="form-control" id="msg-text" placeholder="Your Message">
                    </div>
                    <div class="col-4">
                        <input type="submit" class="btn btn-primary col" id="msg-send" value="send">
                    </div>
                </form>
            </div>
            <!-- Default form login -->
        </div>
    </div>
</body>
<!--bootstrap cdn-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!--sockjs-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<!--custom-js-->
<script src="/js/chat-app.js"></script>
</html>