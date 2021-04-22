 function set(key, value) {
     if (typeof value !== "string") {
         value = JSON.stringify(value);
     }
     localStorage.setItem(key, value)
 }

 function get(key) {
     const ans = JSON.parse(localStorage.getItem(key));
     console.log(ans);
     return ans;
 }
 //  const form = {
 //      site: "baidu.com",
 //      name: "百度",
 //  }
 //  set("form", form);
 //  get("form")