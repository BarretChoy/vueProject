<template>
<div class="hotSearch">
	<div class="hotTitle">
		<i class="icon iconfont icon-huo"></i>
		<span>热门搜索</span>
	</div>
	<div>
		<ul class="hotlist clearfix">
			<li v-for="n in hotGoods"><a :href='"#/list?classify="+n'><span>{{n}}</span></a></li>
		</ul>
	</div>
</div>	
</template>
<script>
	export default{
		computed:{
			hotGoods(){
				return this.$store.state.hotGoods;			
			}
		}
	}
</script>
<style scoped>
	.clearfix:after {
		    clear: both;
		    content: "";
		    display: block;
		    height: 0;
		}
	.hotSearch{
		padding:12px 7px 3px;
		margin-top: 40px;
		font-size:14px;
	}
	.hotTitle{
		height:35px;
		line-height: 35px;
		padding-left: 10px;
	}
	.hotTitle .icon{
		margin-right: 4px;
		color:#FF5053;
	}
	.hotlist{
		padding-left: 10px;
	}
	.hotlist li{
		padding:3px 14px;
		float:left;
		margin-right: 10px;
		margin-bottom: 10px;
		border:1px solid #ccc;
		border-radius: 3px;
	}
</style>
