function queryIpPlatform() {
    $.ajax({
        url: "/MovielogServer/history/get_ip_platform",
        data: {"num": 50},
        datatype: "json",//请求页面返回的数据类型
        type: "GET",
        contentType: "application/json",//注意请求页面的contentType 要于此处保持一致
        success: processIpPlatform, //传递给process函数的data，是由请求页面返回的数据 ,已经被ajax处理成了对象
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert("error");
        }
    });
}
/**将从ajax获取的数据直接传递到Table中进行显示*/
function processIpPlatform(json_data) {
    $("#history_ip_platform").bootstrapTable({
        data: json_data
    });
}