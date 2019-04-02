function queryUriAccess() {
    $.ajax({
        url: "/MovielogServer/history/get_uri_count",
        data: {"level": 12},
        datatype: "json",//请求页面返回的数据类型
        type: "GET",
        contentType: "application/json",//注意请求页面的contentType 要于此处保持一致
        success: processUriAccess, //传递给process函数的data，是由请求页面返回的数据 ,已经被ajax处理成了对象
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert("error");
        }
    });
}
/**将从ajax获取到数据进行处理，绘出图形*/
function processUriAccess(data) {
    var labledata = new Array();
    var datas1 = new Array();
    for (var i = 0; i < data.length; i++) {
        labledata[i] = data[i].uri;
        datas1[i] = data[i].count;
    }

    var lineChartData = {
        labels: labledata,
        datasets: [
            {
                fillColor: "rgba(48, 164, 255, 0.2)",
                strokeColor: "rgba(48, 164, 255, 1)",
                pointColor: "rgba(48, 164, 255, 1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(48, 164, 255, 1)",
                data: datas1
            }
        ]
    }
        var chart1 = document.getElementById("uri-access-count-bar").getContext("2d");
        window.myLine = new Chart(chart1).Bar(lineChartData, {
            responsive: true
        });
}