<template>
	<div class="top_box">
            <span class="top_back J_topback iconfont icon-fanhui1" @click="back()"></span>
            <span class="search" @click="goSearchHotlist()">
                <i class="iconfont icon-sousuo"></i>
                <input type="text" placeholder="抽纸" class="J_adWord" v-model="keywords" @keydown="goSearchlist()" v-change_placeholder='hotWord' @keyup="search()">
            </span>
            <div class="bar">搜索</div>
        </div>
</template>
<script>
	export default{
		data: function() {
			return {
				hotWord: [{ title: '米' }, { title: '油' }, { title: '抽纸' }, { title: '休闲食品' }, { title: '凉席' }, { title: '进口牛奶' }, { title: '腕表' }, { title: '卫生巾' }, { title: '洗发水' }, { title: '手机' }],
				keywords:"",
			}
		},
		methods:{	
			//点击返回按钮，回到前一个路由	
			back(){
				this.$router.go(-this.$store.state.classifyHistoryNum);
			},
			goSearchHotlist:function(){
				window.location.href = "#/search/hotsearch";
			},
			goSearchlist(){
				window.location.href = "#/search/searchlist";
			},
			//模糊搜索
			// search(keywords){
			// 	var self = this;
			// 	this.$http.get("http://localhost:1111/list",{
			// 			params:{
			// 				keyword:this.keywords,
			// 			}
			// 		}).then((response) =>{
			// 			this.$store.state.goods_search=response.body;
			// 		}).catch((error)=>{
	
			// 		});
			// }

		},
		computed:{
		},
		mounted(){
			this.$store.state.classifyHistoryNum = 1;
		},
		directives: {
			//实现input的placeholder的实时切换商品关键字
			change_placeholder: {				
				bind(el, binding) {
					var i = 0;
					var timers = setInterval(function() {
						i++;
						if(i >= binding.value.length) {
							i = 0;
						}
						el.placeholder = binding.value[i].title;
					}, 2000)

				}
			}
		}
	}
</script>
<style scoped>
	*{
		padding:0;margin:0;border:none;text-decoration:none;
	}
	.top_box{
		display: flex;
		position:fixed;
		top: 0;
		font-size: 14px;
		width:100%;
		height:50px;
		padding:10px;
		border-bottom: 1px solid #d5d5d5;
		background-color: #fff;
		z-index: 2000;
	}
	.top_box .top_back {
	text-align: center;
    position: absolute;
    left: 0;
    top: 10px;
    display: block;
    width: 30px;
    height: 30px;
    font-size: 24px;
    line-height: 30px;
	}
	.top_box .search {
    display: flex;
    margin-left: 35px;
    margin-right: 14px;
    /*padding: 0 10px;*/
    padding-left: 4px;
    border-radius: 4px;
    height: 30px;
    background: #e5e5e5;
    align-items: center;
    line-height: 30px;
    /*flex: 1;*/
}
.top_box input{
   	outline: 0;
    /*flex: 1;*/
    padding: 0 7px;
    border: none;
    display: block;
    background: #e5e5e5;
    border-radius: 4px;
    width: 222px;
}
 .top_box .search .icon-sousuo{
 	margin-right: 8px;
 }
 .top_box .bar{
 	font-size: 14px;
 	/* margin-left: 7px; */
 	width:50px;
 	height:30px;
 	line-height: 30px;
 	background-color: #d7063b;
 	color:white;
 	border-radius:4px;
 	text-align: center;
 }
</style>