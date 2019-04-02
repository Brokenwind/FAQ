var line_day_chart_id = "line-day-chart";
function queryDayAccess(year,month) {
    $.ajax({
        url: "/MovielogServer/history/getday",
        data: {"year": year, "month": month},
        datatype: "json",//请求页面返回的数据类型
        type: "GET",
        contentType: "application/json",//注意请求页面的contentType 要于此处保持一致
        success: processDayAccess, //传递给process函数的data，是由请求页面返回的数据 ,已经被ajax处理成了对象
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert("error");
        }
    });
}
/**将从ajax获取到数据进行处理，绘出图形*/
function processDayAccess(data) {
    var labledata = new Array();
    var datas1 = new Array();
    for (var i = 0; i < data.length; i++) {
        labledata[i] = data[i].day + "天";
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

    if (line_day_chart_id == "line-day-chart") {
        line_day_chart_id = "line-day-chart1";
        $("#line-day-chart").remove();
        $("#line-day-chart-wrapper").append('<canvas class="main-chart" id="line-day-chart1" height="200" width="600"></canvas>');
        var chart1 = document.getElementById("line-day-chart1").getContext("2d");
        window.myLine = new Chart(chart1).Line(lineChartData, {
            responsive: true
        });
    }

    if (line_day_chart_id == "line-day-chart1") {
        line_day_chart_id = "line-day-chart";
        $("#line-day-chart1").remove();
        $("#line-day-chart-wrapper").append('<canvas class="main-chart" id="line-day-chart" height="200" width="600"></canvas>');
        var chart1 = document.getElementById("line-day-chart").getContext("2d");
        window.myLine = new Chart(chart1).Line(lineChartData, {
            responsive: true
        });
    }
}