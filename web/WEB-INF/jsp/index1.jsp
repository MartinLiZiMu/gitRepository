<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="../js/baidukey.js"></script>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../js/markerclusterer_min.js"></script>
<script type="text/javascript" src="../js/texticonoverlay_min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>地图展示轨迹</title>
<style type="text/css">
		body, html {width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
		#allmap{width:900px;height:540px;}
		p{margin-left:5px; font-size:14px;}
</style>

</head>
<body>
	<form method="post">单号:
		<!--
		 当我输入这个订单单号时，同时异步加载百度鹰眼的数据，并将读到的数据存入Redis中
		 -->
		<input type="text" name="order_sn" value='${"读出的订单编号"}'>

		<!--
		当我点击提交的时候，需要向数据库提交我查询订单的。表名：search_record
		-->
		<input type="submit">
	</form>
<br >
	&nbsp;&nbsp;&nbsp;
	<label>
		<input type="checkbox" name="disp_app" id="disp_app" checked onclick='show_hide_guiji();'>显示APP红色轨迹(紫色为拉直线,共<span id='n_app_zhixian'></span>处)
	</label>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<label>
		<input type="checkbox" name="disp_pn" id="disp_pn" checked onclick='show_hide_guiji();'>显示车机蓝色轨迹(灰色为拉直线,共<span id='n_pn_zhixian'></span>处)
	</label>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<label>
	<input type="checkbox" name="jiejue" id="jiejue" onclick='show_hide_guiji();'>处理拉直线
	</label>
	<table border="0">
		<tr>
			<td>
				<div id="allmap"></div>  //地图展示位置
				<img src='picture/play.png'><br> ↑↑↑轨迹回放控件为原型图，未写代码，暂无法操作
			</td>
			<td>
				<table border="0">
					<tr>
						<td>订单基础信息:</td>
						<td>订单编号、工程师、司机、地址、时间、高停等略</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>此单开始时间：</td>
						<td>2018-03-10 08:46:20</td>
					</tr>
					<tr>
						<td>此单结束时间：</td>
						<td>2018-03-10 19:17:44</td>
					</tr>
					<tr>
						<td>此单鹰眼id：</td>
						<td>8401520602049761533</td>
					</tr>

					<tr>
						<td>此单车机PN：</td>
						<td>668304050241271</td>
					</tr>


					<tr>
						<td>此单存储里程：</td>
						<td>223.35公里 和 223.35公里</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>APP轨迹里程：</td>
						<td>221.66公里</td>
					</tr>
					<tr>
						<td>APP收费路段：</td>
						<td>0.0公里</td>
					</tr>

					<tr>
						<td>车机轨迹里程：</td>
						<td>223.3公里</td>
					</tr>
					<tr>
						<td>车机收费路段：</td>
						<td>0.0公里</td>
					</tr>

					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>驾驶行为分析：</td>
						<td>以下信息根据车机轨迹获取</td>
					</tr>
					<tr>
						<td>平均时速：</td>
						<td>21.42公里/小时</td>
					</tr>
					<tr>
						<td>最高时速：</td>
						<td>79公里/小时</td>
					</tr>
					<tr>
						<td>超速次数：</td>
						<td>22次(未在地图中标注)</td>
					</tr>
					<tr>
						<td>急加速次数：</td>
						<td>0次</td>
					</tr>
					<tr>
						<td>急刹车次数：</td>
						<td>0次</td>
					</tr>
					<tr>
						<td>急转弯次数：</td>
						<td>0次</td>
					</tr>
					<tr>
						<td>停留次数：</td>
						<td>8次</td>
					</tr>
					<tr>
						<td>累计停留时长：</td>
						<td>4.74小时</td>
					</tr>

					<tr>
						<td>停留怠速累计时长：</td>
						<td>2.52小时(算法待验证)</td>
					</tr>

				</table>
			</td>
		</tr>
	</table>

</body>



</html>