<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_product.aspx.cs" Inherits="WebApplication9.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        input {
            color: gray;
        }

        form {
            border: green;
            background: gray;
            color: #C0C0C0;
            font-weight: bold;
            font-size: 30px;
            text-shadow: 1px 1px yellow;
            letter-spacing: normal;
        }

            form :first-child {
            }
    </style>
    <script>

        /*let count = localStorage.getItem("counter") || 0;
       target.innerHTML = count;*/

        function passvalues() {
            var pr = document.getElementById("txtnum1").value;
            var num1 = parseInt(window.txtnum1.value);
            if ((num1 <= 10000) && (num1 > 0)) {
                localStorage.setItem("textvalue1", " السعر:" + pr);
            }
            else
                localStorage.setItem("textvalue1", " السعر:");

            return false;
        }
        function passvalue() {
            var ye = document.getElementById("y").value;
            var num1 = parseInt(window.txtnum1.value);
            localStorage.setItem("textvalue", " سنة الصنع:" + ye);
        }
        function typed() {
            var ty = document.getElementById("t").value;
            localStorage.setItem("textvalue2", " النوع:" + ty);
        }
        function number1() {
            var nu = document.getElementById("nu").value;
            localStorage.setItem("textvalue3", " الرقم:" + nu);
        }

        function number2() {
            var num = document.getElementById("ch").value;
            localStorage.setItem("textvalue4", " " + num);
        }

        function list2() {
            var l = document.getElementById("sy").value;
            localStorage.setItem("textvalue5", "بلد الصنع سوريا: " + l);
        }
        /*   select.onchange = function ()
           {
               lastSelected = select.options[select.selectedIndex].value;
               console.log(lastSelected);
               localStorage.setItem("textvalue5", lastSelected);
           }*/
        function nam() {
            var n = document.getElementById("na").value;
            localStorage.setItem("textvalue6", "اسم المنتج: " + n);
        }
        function printIn(text) {
            window.msg.innerHTML += text + "<br>";
        }

        function run() {
            var num1 = parseInt(window.txtnum1.value);
            if ((num1 <= 10000) && (num1 > 0)) {
                printIn("السعر" + num1);
            }
        }


        function printIn(text) {
            window.msg.innerHTML += text + "<br>";
        }

        function run() {
            var num1 = parseInt(window.txtnum1.value);
            if ((num1 <= 10000) && (num1 > 0)) {
                printIn("السعر" + num1);
            }
        }
        function type1(input) {
            var regex = /[^a-z^0-9^ا-ي]/gi;
            input.value = input.value.replace(regex, "");
        }




        function year(input) {
            var regex = /[^0-9]/gi;
            input.value = input.value.replace(regex, "");
        }
        function num(input) {
            var regex = /[^0-9]/gi;
            input.value = input.value.replace(regex, "");
        }
        function lettersOnly(input) {
            var regex = /[^a-z^أ-ي]/gi;
            input.value = input.value.replace(regex, "");
        }
    </script>
</head>
<body id="i"  dir="rtl">
     <form action="result.html">
    <form id="form1" runat="server">
         <table align="center">
            <tr>
                <td>
                    <h2>login form</h2>
                </td>
            </tr>
            <tr>
                <td>
                    اسم المنتج:
                    <input id="na" type="text" placeholder="enter name prudect" />
                    <a onclick="nam();" />
                    <br>
                    <br />
                    رقم المنتج:
                    <input id="nu" maxlength="7" placeholder="7 ارقام " type="text" onkeyup="num(this)"
                           onkeypress="isInputNumber(event)" />
                    <a onclick="number1();" />
                    <input id="ch" maxlength="3" type="text" placeholder="3 حروف عربية u" onkeyup="lettersOnly(this)"
                           onkeypress="isInputNumber(event)" />
                    <a onclick="number2();" />
                    <span id="count">charcter 10 </span>
                    <br>
                    <br />
                    <label  for="text">بلد الصنع</label>
                    <select id="la" name="country">
                        <option id="sy" onclick="list2();" >سوريا </option>

                        <option id="gr">  المانيا</option>
                        <option>   ايطاليا</option>
                    </select>
                    <br>
                    <br />
                    النوع:
                    <input id="t" placeholder="enter type prudect" type="text" onkeyup="type1(this)"
                           onkeypress="isInputNumber(event)" />
                    <a onclick="typed();"/>
                    <br>
                    <br />
                    سنة الصنع :
                    <input id="y" maxlength="4" placeholder="enter year" type="text" onkeyup="year(this)"
                           onkeypress="isInputNumber(event)"  />
                    <a onclick="passvalue();"/>
                        <br>
                        <br />
                        السعر:
                        <label>number1:</label>
                        <input id="txtnum1">

                        <button onclick="window.msg.innerHTML=''; run();">commit!</button>
                        <hr>

                        <p id="msg">print here</p>
                        <br />
                        <input type="submit" value="save" onclick="passvalues();" />
</table>
        
    </form>
    <br />
    <br />
    <hr />
        </form>
</body>
</html>


