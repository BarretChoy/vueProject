<template>
	<div class="info_contain">
			<div class="banner">
				<a href="javascript:void(0);">
					<swiper :options="swiperOption" ref="mySwiper">
					<swiper-slide v-for="(i,index) in imgs" :key="index"><img @click="showGrallery(goods_img)" :src="goods_img" />
					<!-- <img @click="showGrallery(goods_img)" :src="goods_img" /> -->

					</swiper-slide>
		<div class="swiper-pagination" slot="pagination"></div>
	</swiper>
				</a>
			</div>
			<div class="detInfo">
				<div class="infoTitle">
					<span>自营</span>
					<h3>{{goodsname}}<span style="margin-left:8px;">{{place}}</span></h3>
				</div>
			</div>
			<div class="infoCase">
				<h3>{{character}}<span style="margin-left:8px;">{{sell_by_date}}</span></h3>
			</div>
			<div class="orcase">
				<div class="x_price">
					<p><span>￥<i>{{goods_price_now}}</i></span><span class="save">限时特惠</span></p>
				</div>
				<div class="y_price">
					<p>参考价<span>￥{{goods_price_original}}</span></p>
				</div>
			</div>
			<div class="detail-model">
				<div class="detail-add">
					<span class="send">送至</span>
					<div class="s-address">
						<p>
							<span>上海 上海市 宝山区</span>
							<span><i>编辑</i></span>
						</p>
					</div>
					<div class="send_time">
						<p>
							24:00前完成下单，预计明天(7月18日)送达
						</p>
					</div>
					
				</div>
				<div class="detail-add">
					<span class="send">运费</span>
					<div class="s-address">
						<p>
							满95包邮 (10kg以内)
							<a href="#"> 运费说明</a>
						</p>
					</div>		
				</div>
			</div>
			<div class="hr"></div>
			<div class="detail-model detail-send">
				<div class="detail-add">
					<span class="send">促销</span>
					<span class="free">赠品</span>
					<div class="s-address">
						<p>
							购买本商品一件，赠送以下商品1件，送完为止
						</p>
					</div>
					<div class="send_time">
						<img :src="goods_img" alt="">
						<p class="zrt">
							{{goodsname}}
							<span></span>
						</p>
					</div>	
				</div>
			</div>
			<div class="jifen">
				<div class="JF">
					<span>积分</span>
					<div class="getjf">
						购买可得 {{goods_price_now}} 积分
					</div>
				</div>
			</div>
			<div class="hr"></div>
			<div class="comment">
				<div class="pl-contain">
					<div class="pl">商品评论(<span>{{page}}</span>)</div>
					<div class="goodp">好评<span class="bf">95%</span><i class="icon-xiayibu iconfont icon"></i></div>
				</div>
				<div class="pl-area">
					<ul>
						<li>
							<p>
								<span>吴倩</span>
								<span>1***8</span>
							</p>
							<div class="shihui">实惠</div>
						</li>
					</ul>
				</div>
				<div class="loadMore">
					<div class="loadMore_pl"><a href="#/detail/detailComment">查看更多评论</a></div>
				</div>
			</div>
	</div>
</template>
<script>
	import {
		swiper,
		swiperSlide
	} from 'vue-awesome-swiper';
	export default{
		data(){
			return{
				imgs: [{
					id: 1,
					src:"../images/detail01.jpg"
				}, {
					id: 2,
					src:"../images/detail02.jpg"
				}, {
					id: 3,
					src: "../images/detail03.jpg"
				}, {
					id: 4,
					src:"../images/detail04.jpg"
				}],
				swiperOption: {
					autoplay: 3000
				},
				goodsname:"",
				place:"",
				sell_by_date:"",
				character:"",
				goods_price_now:"",
				goods_price_original:"",
				goods_img:"",
				page:"",
			}
		},
		methods:{
				showGrallery(imgurl){
					this.$store.state.imgUrl = imgurl;
					this.$store.state.isShowGrallery = true;
				}	
			},
			mounted(){
				var self=this;
				this.$http.get("./json/goods_list.json").then((response) =>{
					var currentGood = {};
					for(var i = 0;i < response.body.RECORDS.length;i++){
						if(response.body.RECORDS[i].id == this.$route.query.id){
							currentGood = response.body.RECORDS[i];
						}
					}
					self.goodsname = currentGood.goods_name;
					self.place =JSON.parse(currentGood.goods_info).place;
					self.sell_by_date=JSON.parse(currentGood.goods_info).sell_by_date;
					self.character=JSON.parse(currentGood.goods_info).character;
					self.goods_price_original=currentGood.goods_price_original;
					self.goods_img=currentGood.goods_img;
					self.goods_price_now=currentGood.goods_price_now;
					self.page=currentGood.page;					
				}).catch((error)=>{

				});
			}
	}
</script>
<style scoped>
	.banner{
		padding-top:40px;
		width: 100%;
	}
	.banner img{
		width:100%
	}
	.detInfo{
		padding:14px 0 9px 0;
	}
	.detInfo .infoTitle{
		padding:0 12px 0 21px;
		font-size:14px;
	}
	.detInfo .infoTitle span{
		font-size: 12px;
		color:#d7063b;
		display:inline;
		border:1px solid #d7063b;
		border-radius: 2px;
		margin-right: 4px;
	}
	.detInfo .infoTitle h3{
		font-size: 14px;
		display:inline;
	}
	.infoCase{
		padding:5px 12px 4px 20px;
	}
	.infoCase h3{
		font-size: 12px;
		color:#d7063b;
	}
	.orcase{
		color:#d7063b;
		padding:0 0 12px 18px;
		font-size: 14px;
	}
	.orcase i{
		font-size: 20px;
		margin-right: 10px;
	}
	.orcase .save{
		font-size: 12px;
		color:#d7063b;
		display:inline;
		border:1px solid #e60012;
		border-radius: 2px;
		margin-right: 4px;

	}
	.orcase .y_price{
		color:#999;
		font-size: 12px;
	}
	.orcase .y_price span{
		text-decoration: line-through;
		margin-left: 5px;
	}
	.detail-model{
		font-size: 12px;
		width:100%;	
	}
	.detail-add{
		margin-left:12px;
		padding:5px 12px 0 0;
	}
	.detail-add .send{
		display: inline-block;
		color:#999;
		width:42px;
		height:23px;
	}
	.detail-add .free{
		font-size: 12px;
		color:#d7063b;
		display:inline;
		border:1px solid #e60012;
		border-radius: 2px;
		margin-right: 4px;
	}
	.detail-add .s-address{
		display: inline-block;
	}
	.detail-add .send_time{
		overflow: hidden;
		padding-left: 44px;
		color:#999;
	}
	.detail-add .send_time img{
		float: left;
		display:block;
		width: 65px;
		height:65px;
	}
	.detail-add .send_time p{
		float: left;	
	}
	.detail-add .send_time .zrt{
		height:65px;
		line-height: 65px;
	}
	.hr{
		width:100%;
		height:10px;
		background-color: #e5e5e5;
	}
	.detail-send{
		padding-bottom: 15px;
		border-bottom:1px solid #ccc;
	}
	.jifen{
		width: 100%;
		font-size: 12px;
	}
	.jifen .JF{
		padding: 12px 15px;
	}
	.jifen span{
		display: inline-block;
		color:#999;
		width:42px;
		height:23px;
	}
	.jifen .getjf{
		display: inline-block;
	}
	.comment{
		width: 100%;
		font-size: 14px;
		color:#666666;
	}
	.pl-contain{
		overflow: hidden;
		padding:14px 10px;
		border-bottom: 1px solid #ccc;
	}
	.comment .pl{ 
		float: left;
	}
	.comment .goodp .bf{
		color:#d7063b;
		margin-left: 4px;
		margin-right:5px;
	}
	.comment .goodp{
		float:right;
	}
	.pl-area{
		width: 100%;
		font-size: 14px;
		color:#333;
	}
	.pl-area ul li{
		padding:10px 14px 15px 14px;
	}
	.pl-area ul li p{
		overflow: hidden;
	}
	.pl-area ul li span:nth-child(1){
		float:left;
	}
	.pl-area ul li span:nth-child(2){
		float:right;
	}
	.pl-area .shihui{
		padding-top: 10px;
	}
	.loadMore{
		width:100%;
		margin-bottom: 50px;
	}
	.loadMore .loadMore_pl{
		padding-bottom: 15px;
		width: 100%;
		text-align: center;
	}
	.loadMore .loadMore_pl a{
		display:inline-block;
		padding: 0 10px;
		height: 36px;
		line-height: 36px;
		border:1px solid #ccc;
		
		font-size: 14px;
		margin:0 auto;
	}
</style>