var line_month_chart_id = "line-month-chart";
function queryMonthAccess(year) {
    $.ajax({
        url: "/MovielogServer/history/getmonth",
        data: {"year":year},
        datatype: "json",//请求页面返回的数据类型
        type: "GET",
        contentType: "application/json",//注意请求页面的contentType 要于此处保持一致
        success: processMonthData, //传递给process函数的data，是由请求页面返回的数据 ,已经被ajax处理成了对象
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert("error");
        }
    });
}
/**将从ajax获取到数据进行处理，绘出图形*/
function processMonthData(data) {
    var labledata = new Array();
    var datas1 = new Array();
    for (var i = 0; i < data.length; i++) {
        labledata[i] = data[i].month + "月";
        datas1[i] = data[i].count;
    }

    var lineChartData = {
        labels: labledata,
        datasets: [
            {
                label: "My Second dataset",
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

    if (line_month_chart_id == "line-month-chart") {
        line_month_chart_id = "line-month-chart1";
        $("#line-month-chart").remove();
        $("#line-month-chart-wrapper").append('<canvas class="main-chart" id="line-month-chart1" height="200" width="600"></canvas>');
        var chart1 = document.getElementById("line-month-chart1").getContext("2d");
        window.myLine = new Chart(chart1).Line(lineChartData, {
            responsive: true
        });
    }

    if (line_month_chart_id == "line-month-chart1") {
        line_month_chart_id = "line-month-chart";
        $("#line-month-chart1").remove();
        $("#line-month-chart-wrapper").append('<canvas class="main-chart" id="line-month-chart" height="200" width="600"></canvas>');
        var chart1 = document.getElementById("line-month-chart").getContext("2d");
        window.myLine = new Chart(chart1).Line(lineChartData, {
            responsive: true
        });
    }
}