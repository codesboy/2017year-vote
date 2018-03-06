<template>
  <div id="app">
      <h3>请为以下团队投票,每个人只能投一次，每次只能投一个,点击图片即可为您喜欢的团队投出宝贵的一票~</h3>
        <div class="reload" @click='reload'>刷新</div>
    <div class="list">
        <div class="list-item" v-for="(item, index) in results" @click="vote(index,item.id)">
            <img class="tmimg" :src="baseUrl+item.team_img"></img>
            <p class="vote">票数：{{item.vote}}</p>
        </div>
    </div>
    
    <!-- <div v-for="item in results">{{item}}</div> -->
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "App",
  data() {
    return {
      results: null,
      baseUrl: "https://me.rehack.cn/uploads/"
    };
  },
  mounted: function() {
    axios
      .post("https://me.rehack.cn/api/v1/gettm")
      .then(response => {
        this.results = response.data;

        console.log(response.data);
      })
      .then(function() {});
  },
  methods: {
    vote: function(index, id) {
      //   alert(index)
      if (window.localStorage.getItem("isvote") == "1") {
        alert("您已经投过票了!");
        return false;
      }
      console.log(id);
      axios
        .post("https://me.rehack.cn/api/v1/vote", {
          tm_id: id
        })
        .then(response => {
          if (response.data.msg == "投票成功") {
            console.log(this);
            window.localStorage.setItem("isvote", "1");
            this.results[index].vote += 1;
            alert("投票成功");
          }
        });
    },
    reload:function(){
        window.location.reload();
    }
  }
};
</script>

<style>
* {
  margin: 0;
  padding: 0;
}
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 10px;
}
h3 {
  color: red;
  margin-bottom: 20px;
  text-align: left;
  font-size: 16px;
  display: block;
  margin: 0 auto;
  padding: 10px;
}
.list {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}
.list-item {
  width: 45%;
  margin-bottom: 20px;
}
.tmimg {
  width: 100%;
  /* height: 100%; */
  border-radius: 5px;
}
.vote {
  color: red;
}
.reload{
    width: 100px;
    height: 30px;
    line-height: 30px;
    color: #f56c6c;
    background: #fef0f0;
    border-color: #fbc4c4;
    text-align: center;
    margin-left: 10px;
    margin-bottom: 10px;
    border-radius: 5px;
}
</style>
