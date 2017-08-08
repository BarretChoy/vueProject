<template>
	<div class="content">
		<div class="tophighpraise">
			<!-- 评论统计 S -->
			<div class="highpraises" data-tpl="tpl_highpraise">
				<div class="percentage">
					<p class="">
						<b style="font-size:14px">好评</b>
						<b>95%</b>	
					</p>
				</div>
				<div class="commentlist">
					<p id="all" class="listcommentnew current">
						<span> 全部(151)</span>
					</p>
					<p id="good" class="listcommentnew clearfix">		
						<span> 好评(143)</span>	
					</p>
					<p id="normal" class="listcommentnew clearfix">		
						<span> 中评(4)</span>
					</p>
					<p id="bad" class="listcommentnew clearfix">		
						<span> 差评(4)</span>	
					</p>	
					<p id="add" class="listcommentnew clearfix">		
						<span> 追评(2)</span>
					</p>	
					<p id="pic" class="listcommentnew clearfix">		
						<span> 有图(0)</span>	
					</p>
				</div>
			</div>
			<div class="commentType">
				<div class="impressall" :class="{change:followed}">
					<div class="more_bq">更多标签：</div>
					<div class="pl">
						<ul>
							<li>价格实惠(98)</li>
							<li>价格实惠(98)</li>
							<li>价格实惠(98)</li>
							<li>价格实惠(98)</li>
							<li>价格实惠(98)</li>
							<li>价格实惠(98)</li>
							<li>价格实惠(98)</li>
						</ul>
					</div>
				</div>
				<div class="down" @click="changeHigh()">
					<i class="iconfont icon arrowup" :class="followed ? 'icon-arrowdown':'icon-arrowup'" style="font-size:20px;"></i>
				</div>
			</div>
		</div>
		<div class="commentArea" :class="{changeA:followed}">
			<ul>
				<li>
					<p>
						<span class="icon icon-niu iconfont"></span>
						<span class="name">1***6</span>
						<span class="star"></span>
					</p>
					<p class="comment_pl">
						好
					</p>
					<div class="like clearfix">
						<div class="timer">
							<span class="time">2017-07-10</span>
						</div>
						<div class="heart">
							<span class="icon iconfont icon-xinxing" :class="{hearts:light}" @click="changeLight()"></span>
							<span class="heart_num">0</span>
						</div>

					</div>
				</li>
				<li>
					<p>
						<span class="icon icon-niu iconfont"></span>
						<span class="name">1***6</span>
						<span class="star"></span>
					</p>
					<p class="comment_pl">
						好
					</p>
					<div class="like clearfix">
						<div class="timer">
							<span class="time">2017-07-10</span>
						</div>
						<div class="heart">
							<span class="icon iconfont icon-xinxing"></span>
							<span class="heart_num">0</span>
						</div>

					</div>
				</li>
				<li>
					<p>
						<span class="icon icon-niu iconfont"></span>
						<span class="name">1***6</span>
						<span class="star"></span>
					</p>
					<p class="comment_pl">
						好
					</p>
					<div class="like clearfix">
						<div class="timer">
							<span class="time">2017-07-10</span>
						</div>
						<div class="heart">
							<span class="icon iconfont icon-xinxing"></span>
							<span class="heart_num">0</span>
						</div>

					</div>
				</li>
				<li>
					<p>
						<span class="icon icon-niu iconfont"></span>
						<span class="name">1***6</span>
						<span class="star"></span>
					</p>
					<p class="comment_pl">
						好
					</p>
					<div class="like clearfix">
						<div class="timer">
							<span class="time">2017-07-10</span>
						</div>
						<div class="heart">
							<span class="icon iconfont icon-xinxing"></span>
							<span class="heart_num">0</span>
						</div>

					</div>
				</li> 
			</ul>
		</div>
	</div>
</template>
<script>
	export default{
		data(){
			return{
				followed:true,
				light:false
			}
		},
		methods:{
			changeHigh(){
				
					this.followed=!this.followed;
				
			},
			changeLight(){
				this.light=!this.light;
			}
		},
	}
</script>
<style scoped>
.commentType{
	width:100%;
}
.commentType .change{
	height:46px;
	overflow: hidden;
	transition:height 1s linear;
}
.commentType .impressall{
	font-size: 14px;
	padding:10px;
	display: flex;
	max-height: 350px;
	transition:height 1s linear; 
} 
.commentType .impressall .more_bq{
	width: 30%;
}
.commentType .impressall .pl{
	flex:1;
}
.commentType .impressall .pl ul li{
	float: left;
	padding:5px;
	margin-right: 7px;
	margin-bottom: 5px;
	background-color: #f5f5f5;
	border-radius: 8px;
}
.commentType .down{
	height:24px;
	line-height: 24px;
	position: relative;
}
.commentType .down i{
	position: absolute;
	top: 0;
	left: 50%; 
}
	.tophighpraise{
		margin-top: 40px;
		background-color: white;
		width: 100%;
		position: fixed;
		top:0;
		left:0;
		border-bottom: 1px solid #d5d5d5;
		z-index: 100; 
	}
	.highpraises{
		padding:10px 0;
		padding-right: 12px;
		font-size: 14px;
		display: flex;
		border-bottom: 1px solid #d5d5d5;
	}
	.highpraise{
		height:49px;
		overflow: hidden;
	}
	.percentage{
		width: 33%;
		padding:10px;
		height:auto;
		color:#666;
		vertical-align: middle;
		align-items: center;
		border-right: 1px solid #d5d5d5;
	}
	.percentage p{
		color:#d7063b;
		border-bottom: 2px;
	}
	.percentage p b:nth-child(2){
		margin-left: 4px;
		font-size: 24px;
	}
	#impressall{
		position: relative;
	}
	.commentlist{
		align-items: center;
		margin-top: 2px;
		width: 65%;
		font-size: 14px;
	}
	.commentlist .current{
		background-color:#d7063b;
		color:white;
	}
	.commentlist p{
		float:left;
		padding:0 6px;
		margin-left: 10px;
		margin-bottom: 6px;
		background-color:#f5f5f5;
		border-radius: 4px;
		height:29px;
		line-height: 29px;
	}
	.highpraise{
		padding:10px 12px;
		font-size: 14px;
		display: flex;
	}
	.title{
		width:20%;
		height:100%;
		line-height: 100%;
		text-align: center;
	}
	.commentlists{
		width: 78%;
		align-items: center;
		margin-top: 2px;
		font-size: 14px;
	}
	.commentlists p{
		float:left;
		padding:0 6px;
		margin-left: 10px;
		margin-bottom: 6px;
		background-color:#f5f5f5;
		border-radius: 4px;
		height:29px;
		line-height: 29px;
	}
	.commentArea{
		margin-top: 320px;
		z-index: 0;
		background-color: #fff;
		font-size: 14px;
		margin-bottom: 40px;
	}
	.changeA{
		margin-top: 204px;
	}
	.commentArea li{
		padding:10px;
		border-bottom: 1px solid #ccc;	
	}

	 .commentArea li .icon{
		font-size: 24px;
	} 
	.commentArea li .icon-niu{
		color:#d7063b;
	}
	.commentArea li .hearts{
		color:#d7063b;
	}
	.commentArea li span:nth-child(2){
		font-size: 16px;
	}
	.commentArea li p:nth-child(2){
		font-size: 14px;
		padding:4px 10px;
	}
	.commentArea li .like{
		padding: 10px 12px;
		position: relative;
	}
	.clearfix:after {
		clear: both;
		content: "";
		display: block;
		height: 0;
	} 
	.commentArea li .heart{
		position: absolute;
		top: 0;right:12px;
	}
	.commentArea li .heart_num{
		padding:0 10px;
	}
</style>