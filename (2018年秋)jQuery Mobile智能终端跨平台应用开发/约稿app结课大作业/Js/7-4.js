$(function() {
    var $p = $("p");
	//页面加载时，将window屏幕对象绑定orientationchange事件
    $(window).bind("orientationchange",function(event) {
		//通过传回的orientation属性值得到用户移动设备的手持方向
        var $oVal = event.orientation;
		//如果为portrait，则<p>元素的文字内容为纵向垂直方向样式
		//设置<p>元素的类别名为p-portrait纵向垂直方向样式
        if ($oVal == 'portrait') {
            $p.html("垂直方向");
            $p.attr("class", "p-portrait");
        } 
		//否则<p>元素的文字内容为横向水平方向样式
		//设置<p>元素的类别名为p-landscape横向水平方向样式
		else {
            $p.html("水平方向");
            $p.attr("class", "p-landscape");
        }
    })
})