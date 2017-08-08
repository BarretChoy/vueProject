<template>
	<div class="searchlist">
		<ul class="list">
			<li v-for="i in goods_search"><a :href='"#/detail/detailInfo?id="+i.id'>
				{{i.goods_name}}
			<div class="classify">
					<span>{{i.goods_brand}}</span>
					<span>{{i.goods_classify}}</span>
				</div>
			</a></li>
		</ul>
	</div>
</template>
<script>
	export default{
		computed:{
			//商品模糊查询结果渲染页面
			goods_search(){
				return this.$store.state.goods_search;
			}
			
		}
	}
</script>
<style scoped>
	.searchlist{
		padding:10px 0;
		margin-top: 40px;
		font-size:14px;
	}
	.searchlist .list{
		margin:0 10px;
	}
	.searchlist .list li{
		position: relative;
		padding-left: 8px;
		height:40px;
		line-height: 40px;
		border-bottom:1px solid #e5e5e5;
	}
	.classify{
		position: absolute;
		right:10px;
		top:8px;
	}
	.classify span{
		display: block;
		float:left;
		padding:0 7px;
		margin-right: 6px;
		background-color: #e5e5e5;
		font-size:14px;
		height:25px;
		line-height: 25px;
		border-radius: 4px;
		text-align: center;
		color:#666;
	}
</style>