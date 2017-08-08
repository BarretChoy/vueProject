<template>
<div class="thirdpart">
	<p class="maylike">
		<i class="iconfont icon-xinxing"></i>
		<span class="recommend">为您推荐</span>
	</p>
	<div class="guesslike">
		<ul>
			<li>
				<div>
					<img src="http://cn02.alicdn.sasa.com/public/images/f0/52/75/7b5b191b252f5f2cf8fd76988b763cb5e3eca196.jpg?1489391032#h" alt="">
				</div>
				<div>
					<p class="guesslikegoods">
						清风原木金装软包抽纸3层*150抽*20包</p>
					<p class="guesslikeprice">
						<span class="oprice">
							<em>￥</em>
							49.9
						</span>
						<s class="delete">99</s>
					</p>
					<p class="guessbuy">
						<i class="iconfont icon-gouwuche"></i>
					</p>
				</div>
			</li>

			<li>
				<div>
					<img src="http://cn02.alicdn.sasa.com/public/images/f0/52/75/7b5b191b252f5f2cf8fd76988b763cb5e3eca196.jpg?1489391032#h" alt="">
				</div>
				<div>
					<p class="guesslikegoods">
						清风原木金装软包抽纸3层*150抽*20包</p>
					<p class="guesslikeprice">
						<span class="oprice">
							<em>￥</em>
							49.9
						</span>
						<s class="delete">99</s>
					</p>
					<p class="guessbuy">
						<i class="iconfont icon-gouwuche"></i>
					</p>
				</div>	
			</li>
		</ul>
	</div>
	<div class="nomore">
		<div class="nomoreimg">
			<img src="//st02.fn-mart.com/mstatics/assets/img/v2/niuniu.png">
		</div>
		<p class="nomorelast">
			亲，没有更多了哦！！！
		</p>
	</div>
</div>

</template>
<script>
	
</script>
<style scoped>
	.thirdpart{
		position: relative;
	}
	.maylike{
		height: 48px;
		line-height: 48px;
		text-align: center;
		background-color: #eee;
		font-size: 14px;
	}
	i{
		color: #d7063b;
		font-size: 24px;
	}
	/*.recommend{
		margin: 0 20px
	}*/
	/*.maylike :before{
		width: 16%;
    	height: 1px;
   		background: #d7063b;
    	content: '';
    	display: inline-block;
	}
	.maylike :after{
		width: 16%;
    	height: 1px;
   		background: #d7063b;
    	content: '';
    	display: inline-block;
	}*/
	.guesslike{
		width: 100%;
		height: 100%;
		font-size: 16px;
	}
	.guesslike ul{
		overflow: hidden;
	}
	.guesslike li{
		width: 50%;
		height: 100%;
		box-sizing:border-box;
		float: left;
		border: 1px solid #ddd;
		position: relative;
		background-color: #fff;
	}
	.guesslike li img{
		width: 100%;
		height: 100%;
	}
	.guesslikegoods{
		padding: 0 10px;
		font-size: 12px;
	}
	.guesslikeprice{
		padding: 10px 10px 20px 10px;
		/*padding-bottom: 20px;*/
	}
	.guesslikeprice .oprice{
		color: red;
		font-size: 14px;
	}
	.delete{
		font-size: 12px;
		color: #ddd;
	}
	.guessbuy{
		width: 32px;
		height: 32px;
		border: 1px solid #d7063b;
		border-radius: 50%;
		position: absolute;
		bottom: 8px;
		right: 8px;
		background-color: #fde9f0;
	}
	.nomore{
		width: 100%;
		background-color: #eee;
		/*height: 120px;*/
		padding-top: 20px;
		padding-bottom: 20px;
		margin-bottom: 50px;
	}
	.nomoreimg{
		width: 80px;
		height: 80px;
		margin: 0 auto;
		position: relative;
	}
	.nomoreimg:before{
		content: "";
    	width: 80%;
    	height: 1px;
    	background: #999;
    	position: absolute;
    	left: -89%;
    	top: 40%;
	}
	.nomoreimg:after{
		content: "";
    	width: 80%;
    	height: 1px;
    	background: #999;
    	position: absolute;
    	right: -68%;
    	top: 40%;
	}
	.nomore img{
		width: 60px;
		height: 60px;
	}
	.nomorelast{
		height: 20px;
		line-height: 20px;
		text-align: center;
		font-size: 12px;
	}
</style>