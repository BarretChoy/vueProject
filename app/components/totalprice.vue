<template>
	<div class="buycarfooter">
		<div class="total">
			<p style="font-size:14px">总计：
				<span style="color:#d7063b">￥</span><span style="color:#d7063b;font-size:16px">{{totalPrice}}</span>
			</p>

			<p class="nomail" v-show="ispostage">免邮</p>
			<p class="nomail" v-show="!ispostage">含运费：5元</p>
		</div>
		<div class="calculate">
			结算
		</div>
	</div>
</template>
<script>
	export default({
		
		computed:{
			totalPrice(){
				// 利用vuex传递数据
				return this.$store.state.totalPrice
			},
			ispostage(){
				return this.$store.state.ispostage
			}
		}
	})
</script>
<style scoped>
	.buycarfooter{
		height: 50px;
		width: 100%;
		border-top: 1px solid #ddd;
		font-size: 16px;
		overflow: hidden;
		position: fixed;
		bottom: 0;
		left: 0;
		z-index: 1;
		background-color: #fff;
		box-sizing:border-box;
	}
	.total{
		box-sizing:border-box;
		width: 70%;
		float: left;
		height: 100%;
		padding-left: 50px;
	}
	.calculate{
		box-sizing:border-box;
		width: 30%;
		background-color:#d7063b;
		height: 100%;
		float: left;
		line-height: 50px;
		text-align: center;
		color: white;
	}
	.nomail{
		font-size: 14px;
		color: #dadada;
	}
</style>