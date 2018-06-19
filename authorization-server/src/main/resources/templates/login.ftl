<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <title>login</title>
    <style>
        .error {
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 4px;
            color: #a94442;
            background-color: #f2dede;
            border: 1px solid #ebccd1;
        }
        .msg {
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 4px;
            color: #31708f;
            background-color: #d9edf7;
            border: 1px solid #bce8f1;
        }
        #login-box {
            width: 300px;
            padding: 20px;
            margin: 100px auto;
            background: #fff;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            border: 1px solid #000;
        }
        .hide {
            display: none;
        }
        .show {
            display: block;
        }
    </style>
    
<script src="static/jquery.min.js"></script>
</head>
<body>
    <div id="login-box">
        <h1>Spring Security 自定义登录页面</h1>
        <form name='loginForm' action="/login" method='POST'>
            <table>
                <tr>
                    <td>用户名:</td>
                    <td><input type='text' name='username' /></td>
                </tr>
                <tr>
                    <td>密码:</td>
                    <td> <input type="password" name="password" />
                    	<input name="${(_csrf.parameterName)!}" value="${(_csrf.token)!}" type="hidden">
                    </td>
                </tr>
                <tr>
                    <td colspan='2'>
                        <input type="submit" value="提交" />
                    </td>
                </tr>
            </table>
            
        </form>
    </div>
</body>
</html>