window.addEventListener("load", function() {
    // 搜索
    var logo = document.querySelector(".logo");
    var logoImg = document.querySelector(".logoImg");
    var logoSrc = logoImg.getAttribute("src");
    var flag = false;
    const google = "photos/google.png";
    const baidu = "photos/baidu.png";
    logo.onclick = function() {
        flag = !flag;
        if (flag) {
            logoSrc = logoImg.setAttribute("src", baidu);
            logo.innerHTML = "B";
        } else {
            logoSrc = logoImg.setAttribute("src", google);
            logo.innerHTML = "G";
        }
    };

    //鼠标点击小键盘
    var lis = document.querySelectorAll("li");
    var key = document.addEventListener("keydown", (e) => {
        return e.key.toUpperCase();
    });

    var form = document.querySelector(".form");
    for (var i = 0; i < lis.length; i++) {
        lis[i].onmouseover = function() {
            this.children[0].style.display = "inline";

        };
        lis[i].onmouseout = function() {
            this.children[0].style.display = "none";
            //this.classList.remove("bounce");
        };
        if (lis[i].innerText === key) {
            console.log(lis[i].innerText);
        }
    }
    // 修改快捷方式
    // var confirm = document.querySelector(".confirm");
    // var cancel = document.querySelector(".cancel");
    // var remark = document.querySelector(".remark");
    // var address = document.querySelector(".address");
    // confirm.onclick = function() {
    //     console.log(remark.value);
    //     console.log(address.value);
    //     form.style.display = "none";
    // };

    // cancel.onclick = function() {
    //     form.style.display = "none";
    // };
    //搜索框事件
    var input = document.querySelector(".head input");
    var search = document.querySelector(".search");
    document.addEventListener("keydown", (e) => {
        if (
            e.key == "Enter" &&
            input == document.activeElement &&
            input.value != ""
        ) {
            if (flag) {
                window.open(
                    "https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=baidu&wd=" +
                    input.value
                );
            } else {
                window.open("https://www.google.com.hk/search?q=" + input.value);
            }
        }
    });

    search.onclick = function() {
        if (input.value != "") {
            if (flag) {
                window.open(
                    "https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=baidu&wd=" +
                    input.value
                );
            } else {
                window.open("https://www.google.com.hk/search?q=" + input.value);
            }
        }
    };
    //键盘事件
    const map = {};
    for (const li of lis) {
        map[li.textContent] = li;
    }
    document.addEventListener("keydown", (e) => {
        const downKey = e.key.toUpperCase();
        if (
            input != document.activeElement &&
            remark != document.activeElement &&
            address != document.activeElement
        )
            map[downKey].classList.add("bounce");
    });
    document.addEventListener("keyup", (e) => {
        const upKey = e.key.toUpperCase();
        setTimeout(() => {
            if (
                input != document.activeElement &&
                remark != document.activeElement &&
                address != document.activeElement
            )
                map[upKey].classList.remove("bounce");
        }, 1000);
    });
});