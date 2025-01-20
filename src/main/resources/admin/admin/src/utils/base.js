const base = {
    get() {
                return {
            url : "http://localhost:8080/springboot56c50/",
            name: "springboot56c50",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot56c50/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "校园闲置物品租售系统   "
        } 
    }
}
export default base
