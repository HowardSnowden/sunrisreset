
var reloadYoutube = function () {
   /* if YT already initialized return */
   if (window.YT) { return; };
    var tag = document.createElement('script');
    tag.src = "https://www.youtube.com/iframe_api";
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
};
  reloadYoutube();
 $(document).on('page:load', function() {
    onYouTubeIframeAPIReady && onYouTubeIframeAPIReady();
});
      var player;
      function onYouTubeIframeAPIReady() {
        player = new YT.Player('ytplayer', {
          events: {
            'onReady': onPlayerReady
          }
        });
      }

function onPlayerReady(event) {
    $('.img-thumbnail').click(function(){
      
            player.loadVideoById({'videoId':$(this).next('p.vid_id').html()});
            $("html, body").animate({ scrollTop: 0 }, "slow");
            event.target.playVideo();
       });
    }

    
