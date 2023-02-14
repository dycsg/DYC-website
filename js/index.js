// 原生js模块
// 音乐播放器
// const core = window._PlayerCore
// core.AppendSongOnTail({
//   name: 'Untitled World', 
//   id: 2, 
//   src: 'https://dl.stream.qqmusic.qq.com/RS02062xDwJZ0Wrq6p.mp3?guid=3141003210&vkey=94A9DBD231E1886760C19139DD4D68036FB2720C27D9CB678A231E1AE556E62D9C4248FDCB594633A4C3E79B13E60A12F2C3F2643BEE3404&uin=3501194074&fromtag=120052',  // Your audio.
//   img: 'https://y.qq.com/music/photo_new/T002R300x300M000001f6Eba38Mx0V_1.jpg?max_age=2592000'   // Your thumbnail.
// })






// jquery模块
$(function () {
    // fullpage配置代码
    $("#dowebok").fullpage({
        sectionsColor: ["transparent", "skyblue", "purple", "yellow"],
        loopBottom: true,
        verticalCentered: false,
        navigation: false,
        navigationColor: "#ef5c19",
        continuousVertical: true,
        controlArrowColor: "rgba(0, 0, 0, 0.1)",
        anchors: ["page1", "page2", "page3", "page4", "page5"],
        easingcss3: "cubic-bezier(0.175 , 0.3 , 0.320 , 1.5)",
        slidesNavigation: true,
        navigationColor: "#fff",
    });

    // nav部分
    $(".main_left div").mouseover(function () {
        $(this).addClass("current").siblings().removeClass("current");
        var index = $(this).index(); //得到当前li的索引号
        $(".main_right .content").eq(index).stop().slideDown(1200).siblings().stop().slideUp(1200);
    });

    // sec2 点击部分
    $(".sec2_main_head ul li").click(function () {
        $(this).addClass("current1").siblings().removeClass("current1");
        var index = $(this).index(); //得到当前li的索引号
        $(".sec2_main_body>.sec2_main_body_content")
            .eq(index)
            .stop()
            .fadeIn(1200)
            .siblings()
            .stop()
            .fadeOut(1200);
    });
});