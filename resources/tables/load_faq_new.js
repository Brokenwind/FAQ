/**将从ajax获取的数据直接传递到Table中进行显示*/
function load_faq_new_data() {
    $("#table_faq_new").bootstrapTable({
        url: '../resources/data/data_faq_usual.json',
        method: 'GET',                      //请求方式（*）
        pagination: true,                   //是否显示分页（*）
        pageList: [5, 10, 25, 50, 100],     //可供选择的每页的行数（*）
        search: true,                       //是否显示表格搜索
        clickToSelect: true,                //是否启用点击选中行
        cardView: false,                    //是否显示详细视图
        striped: true,                      //是否显示行间隔色
        sortable: true,                     //是否启用排序
        sortOrder: "asc",                   //排序方式
        columns: [
            {
                checkbox: true,
                visible: true               //是否显示复选框
            }, {
                field: 'id',
                title: '编号',
                sortable: true
            },
            {
                field: 'question',
                title: '问题',
                sortable: true
            },
            {
                field: 'answer',
                title: '答案',
                sortable: true
            },
            {
                field: 'operator',
                title: '操作',
                width: 120,
                align: 'center',
                valign: 'middle',
                // 格式化函数
                formatter: actionFormatter
            },
        ],
        queryParams: function (params) {
            //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            var temp = {
                rows: params.limit,                         //页面大小
                page: (params.offset / params.limit) + 1,   //页码
                sort: params.sort,      //排序列名
                sortOrder: params.order //排位命令（desc，asc）
            };
            return temp;
        },
        //数据加载成功
        onLoadSuccess: function () {
        },
        // 数据加载失败
        onLoadError: function () {
            alert("数据加载失败！");
        },
        // 双击
        onDblClickRow: function (row, $element) {
            var opt = row.operator;
            //EditViewById(id, 'view');
        },
    });
}


//操作栏的格式化
function actionFormatter(value, row, index) {
    //alert(JSON.stringify(value))
    var id = value;
    var result = "";
    result += "<a href='javascript:;' class='btn btn-xs green' onclick=\"EditViewById('" + id + "', view='view')\" title='查看'><span class='glyphicon glyphicon-search'></span></a>";
    result += "<a href='javascript:;' class='btn btn-xs blue' onclick=\"EditViewById('" + id + "')\" title='编辑'><span class='glyphicon glyphicon-pencil'></span></a>";
    result += "<a href='javascript:;' class='btn btn-xs red' onclick=\"DeleteByIds('" + id + "')\" title='删除'><span class='glyphicon glyphicon-remove'></span></a>";

    return result;
}
