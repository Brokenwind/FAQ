var colors = new Array("#FF0000","#0000FF","#8B008B","#FFA500","#228B22","#9400D3","#87CEFF","#4F4F4F","#00008B");
function queryPlatforms() {
    $.ajax({
        url: "/MovielogServer/history/get_platforms",
        datatype: "json",//请求页面返回的数据类型
        type: "GET",
        contentType: "application/json",//注意请求页面的contentType 要于此处保持一致
        success: processPlatforms, //传递给process函数的data，是由请求页面返回的数据 ,已经被ajax处理成了对象
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert("error");
        }
    });
}

/**将从ajax获取到数据进行处理，绘出图形*/
function processPlatforms(data) {
    var engine_data = new Array();
    for (var i = 0; i < data.length; i++) {
        var temp = {
            value: data[i].count,
            color:colors[i],
            highlight: "#62b9fb",
            label: data[i].platform
        }
        engine_data[i] = temp;
    }
    var chart1 = document.getElementById("platform-count-pie").getContext("2d");
    window.myLine = new Chart(chart1).Pie(engine_data, {
        responsive: true
    });
}
