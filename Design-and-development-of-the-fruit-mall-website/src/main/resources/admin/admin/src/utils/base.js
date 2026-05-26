const base = {
    get() {
        return {
            url : "http://localhost:8080/bencunzhuangguoyuanyushouxitong/",
            name: "bencunzhuangguoyuanyushouxitong",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/bencunzhuangguoyuanyushouxitong/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "果园管理系统"
        } 
    }
}
export default base
