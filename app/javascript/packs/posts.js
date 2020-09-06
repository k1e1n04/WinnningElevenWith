var video;
$(window).ready(function() {
  video = $("#v")[0];
});

window.onscroll = function(){
  if($(window).scrollTop() > 150){
    //150ピクセル分スクロールしたら動画を一時停止
    if(!video.paused){
      video.pause();
    }
  }else{
    //上部に戻ってきたら動画を再開
    if(video.paused){
      video.play();
    }
  }
}
