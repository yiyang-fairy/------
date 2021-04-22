<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>导航页</title>
    <link rel="stylesheet" href="animate.css" />
    <script src="vue.js" type="text/javascript" charset="UTF-8"></script>
    <script src="index.js"></script>
    <style>
        .w {
            margin: 0 auto;
            width: 800px;
        }
        
        a {
            text-decoration: none;
        }
        
        li {
            list-style: none;
        }
        
        body {
            background: url('https://scpic.chinaz.net/Files/pic/logo6/d/logo2719.jpg') no-repeat;
            background-size: 100%;
        }
        
        .head {
            margin: 150px auto 100px;
            display: flex;
        }
        
        .head img {
            width: 200px;
        }
        
        .head div {
            background-color: rgba(241, 154, 240, .5);
            padding-left: 10px;
            padding-top: 10px;
            margin-left: 15px;
            border-radius: 40px;
            height: 50px;
            flex: 4;
            box-shadow: 8px 8px 8px rgba(0, 0, 0, .2);
        }
        
        .head div a {
            font-size: 30px;
            font-weight: 800;
            color: #C041BF;
        }
        
        .head div input {
            color: #000;
            font-size: 20px;
            line-height: 40px;
            width: 500px;
            border: none;
            outline: none;
            background-color: transparent;
        }
        
        .button {
            margin: 0 auto;
        }
        
        .button ul:nth-child(1) {
            display: grid;
            grid-template-columns: auto;
            grid-template-columns: repeat(10, 60px);
            grid-column-gap: 15px;
            grid-row-gap: 15px;
            grid-auto-rows: 60px;
            /* grid-auto-flow: row dense; */
        }
        
        .button ul:nth-child(2) {
            display: grid;
            grid-template-columns: auto;
            grid-template-columns: repeat(9, 60px);
            grid-column-gap: 15px;
            grid-row-gap: 15px;
            grid-auto-rows: 60px;
            padding-left: 80px;
        }
        
        .button ul:nth-child(3) {
            display: grid;
            grid-template-columns: auto;
            grid-template-columns: repeat(8, 60px);
            grid-column-gap: 15px;
            grid-row-gap: 15px;
            grid-auto-rows: 60px;
            padding-left: 150px;
        }
        
        .button ul li {
            background-color: #F5EA56;
            border-radius: 10px;
            box-shadow: 8px 8px 4px rgb(0, 0, 0, .2);
            text-align: center;
            line-height: 60px;
            font-size: 25px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }
    </style>
</head>

<body>
    <div class="w head">
        <img class="logoImg" src="photos/google.png" alt="goole">
        <div>
            <a href="javascript:;" class="logo">G</a>
            <input type="search" placeholder="输入你想搜索的内容">
        </div>
    </div>
    <div class="button w">
        <ul>
            <li v-for="item,index in list1" :key="index" class="animated">{{item.name}}</li>
        </ul>
        <ul>
            <li v-for="item,index in list2" :key="index" class="animated">{{item.name}}</li>
        </ul>
        <ul>
            <li v-for="item,index in list3" :key="index" class="animated">{{item.name}}</li>
        </ul>
    </div>
    <script type="text/javascript" charset="UTF-8">
        var vm = new Vue({
            el: ".button",
            data: {
                list1: [{
                    name: 'Q'
                }, {
                    name: 'W'
                }, {
                    name: 'E'
                }, {
                    name: 'R'
                }, {
                    name: 'T'
                }, {
                    name: 'Y'
                }, {
                    name: 'U'
                }, {
                    name: 'I'
                }, {
                    name: 'O'
                }, {
                    name: 'P'
                }, ],
                list2: [{
                    name: 'A'
                }, {
                    name: 'S'
                }, {
                    name: 'D'
                }, {
                    name: 'F'
                }, {
                    name: 'G'
                }, {
                    name: 'H'
                }, {
                    name: 'J'
                }, {
                    name: 'K'
                }, {
                    name: 'L'
                }, ],
                list3: [{
                    name: 'Z'
                }, {
                    name: 'X'
                }, {
                    name: 'C'
                }, {
                    name: 'V'
                }, {
                    name: 'B'
                }, {
                    name: 'N'
                }, {
                    name: 'M'
                }, ]
            }
        })
    </script>
</body>

</html>