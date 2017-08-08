<template>
	<div class="listheader">
		<div class="backsign" @click="back()">
			<i class="iconfont icon-fanhui1"></i>
		</div>
		<div class="searchfram">
			<i class="iconfont icon-sousuo"></i>
			<input type="text" class="listsearch" v-model='keyword'>
		</div>
		<div class="searchbtn">
			<button @click='search(keyword)'>搜索</button>
		</div>
		
	</div>
</template>
<script>
	export default{
		data(){
			return {
				keyword:''
			}
		},
		methods:{	
			back(){
				location.hash = '#/classify/list/whotclassify';
				//暴力修改
				this.$store.state.classifyList = [];
			},
			search(keyword){
				var self = this;
				// console.log(1)
				// console.log(keyword)
				// this.$http.get("http://localhost:1111/list",{
				// 	params:{
				// 		keyword:keyword
				// 	}
				// }).then((data)=>{
				// 	self.$store.state.classifyList=data.body;
				// 	console.log(data.body)
				// 	console.log(1111)
				// }).catch((err)=>{
					
				// })
				
			}

		},
		computed:{

		},
		mounted(){
			
		}
	}
</script>
<style scoped>
	*{
		padding:0;margin:0;border:none;text-decoration:none;
	}
	.listheader{
		position: fixed;
		top: 0;
		left: 0;
		z-index: 1;
		font-size: 16px;
		width: 100%;
		height: 50px;
		overflow: hidden;
		/*text-align: center;*/
		line-height: 50px;
		background-color: #fff;

	}
	
	.backsign,.searchbtn,.searchfram{
		float: left;

	}
	.searchfram{
		margin-left: 15px;
	}
	.backsign{
		/*font-size: 26px;*/
		/*padding: 0 20px;*/
		height: 100%;
	}
	.icon-fanhui1{
		display: block;
		height: 100%;
		margin: auto 0;
		width: 30px;
		font-size: 24px;
		text-align: center;
	}
	
	.icon-sousuo{
		height: 30px;
		width: 24px;
		display: inline-block;
		line-height: 30px;
		border-radius: 4px 0 0 4px;
		background-color: #eee;
		padding-left: 2px;
		padding-right: 2px;
		font-size: 16px;
		text-align: center;
		background-color: #e5e5e5;
	}
	.listsearch{
		height: 30px;
		border:none;
		width: 230px;
		border-radius: 0 4px 4px 0;
		margin-bottom: 10px;
		background-color: #eee;
		margin-right: 14px;
		margin-left:-8px;
		outline: none;
		background-color: #e5e5e5;
	}

	.searchbtn button{
		height: 30px;
		width: 50px;
		color: #fff;
		background-color: #d7063b;
		line-height: 30px;
		border:none;
		border-radius: 4px;
		font-size: 14px;
		text-align: center;
	}
</style>