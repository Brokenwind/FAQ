var os_bar_chart_id = "os-count-bar";
function queryOss() {
    $.ajax({
        url: "/MovielogServer/history/get_oss",
        datatype: "json",//请求页面返回的数据类型
        type: "GET",
        contentType: "application/json",//注意请求页面的contentType 要于此处保持一致
        success: processOSs, //传递给process函数的data，是由请求页面返回的数据 ,已经被ajax处理成了对象
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert("error");
        }
    });
}

/**将从ajax获取到数据进行处理，绘出图形*/
function processOSs(data) {
    var labledata = new Array();
    var datas1 = new Array();
    for (var i = 0; i < data.length; i++) {
        labledata[i] = data[i].os;
        datas1[i] = data[i].count;
    }
    var barCharData = {
        labels: labledata,
        datasets: [
            {
                fillColor : "rgba(48, 164, 255, 0.2)",
                strokeColor : "rgba(48, 164, 255, 0.8)",
                highlightFill : "rgba(48, 164, 255, 0.75)",
                highlightStroke : "rgba(48, 164, 255, 1)",
                data: datas1
            }
        ]

    }

    if (os_bar_chart_id == "os-count-bar") {
        os_bar_chart_id = "os-count-bar1";
        $("#os-count-bar").remove();
        $("#os-count-bar-wrapper").append('<canvas class="main-chart" id="os-count-bar1" height="200" width="600"></canvas>');
        var chart1 = document.getElementById("os-count-bar1").getContext("2d");
        window.myLine = new Chart(chart1).Line(barCharData, {
            responsive: true
        });
    }
    if (os_bar_chart_id == "os-count-bar1") {
        os_bar_chart_id = "os-count-bar";
        $("#os-count-bar1").remove();
        $("#os-count-bar-wrapper").append('<canvas class="main-chart" id="os-count-bar" height="200" width="600"></canvas>');
        var chart1 = document.getElementById("os-count-bar").getContext("2d");
        window.myLine = new Chart(chart1).Bar(barCharData, {
            responsive: true
        });
    }
}
