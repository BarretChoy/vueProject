<template>
	<div>
		<p>
			<i class="iconfont icon-fanhui1" @click="backhead"></i>
			购物车
			<span class="compile">编辑</span>
			<i class="iconfont icon-liebiao"></i>
		</p>
	</div>
</template>
<script>
	export default({
		
		methods:{
			backhead(){
    			history.back();
    		}
		}
		
	})
</script>
<style scoped>
	p{
		width: 100%;
		height: 50px;
		line-height: 50px;
		background-color: #fff;
		text-align: center;
		font-size: 16px;
		/*font-weight: bolder;*/
		position: relative;
		border-bottom: 1px solid #ddd;
	}
	.icon-fanhui1{
		font-size: 20px;
		position: absolute;
		top: 2px;
		left: 10px;
	}
	.compile{
		position: absolute;
		top: 0px;
		right: 50px;
		/*left: 0;*/
	}
	.icon-liebiao{
		font-size: 20px;
		position: absolute;
		top: 0px;
		right: 10px;
	}

</style>