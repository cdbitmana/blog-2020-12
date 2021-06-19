


/* 스크롤탑 버튼 시작 */
$(window).on('scroll',function(){
    if($(window).scrollTop() >= 25){
        $(".scrolltop-button").fadeIn(400);
    }else{
        $(".scrolltop-button").fadeOut(400);
    }
    });
    /* 스크롤탑 버튼 끝 */
    
   
  /* 페이지 탑바 색전환 시작 */

function changeTopbar(){
    var pageName = ""; 
    var tempPageName = window.location.href;
    var strPageName = tempPageName.split("/");
    pageName = strPageName[strPageName.length-1].split("?")[0];
    
    if(pageName == "profile.html"){
        $(".logo_box").css("color","black");
        $(".menu_bar").css("color","black");
    }
    if(pageName.indexOf("list.html") != -1){
        $(".logo_box").css("color","black");
        $(".menu_bar").css("color","black");
    }
    if(pageName.indexOf("statindex.html") != -1){
        $(".logo_box").css("color","black");
        $(".menu_bar").css("color","black");
    }
    return pageName;
}
changeTopbar();
/* 페이지 탑바 색전환 끝 */
    
    
    /* chart.js api 시작 */
    var articleHit1 = document.getElementById('articleHitChart1');var chart1 = new Chart(articleHit1, {type: 'bar',data: {labels: ['게시판 이용 수칙','공지사항입니다. ?'],datasets: [{label: '조회수',data: [3,1],backgroundColor:['#F8E88B','#F69069','#8482ff','#ff8293','#E4B660','#ff82ff','#66d4f5']}]},options: {aspectRatio:1,scales:{yAxes: [{display: true,ticks: {beginAtZero: true}}]}}});var articleHit2 = document.getElementById('articleHitChart2');var chart2 = new Chart(articleHit2, {type: 'bar',data: {labels: ['MySQL) 1부터 n까지 나타내는 쿼리','자바) Switch 구문','자바) 배열 정렬하는 식','MySQL) 문자열 합치기 CONCAT','자바) 폴더와 하위파일 삭제하는 메소드'],datasets: [{label: '조회수',data: [7,6,5,5,4],backgroundColor:['#F8E88B','#F69069','#8482ff','#ff8293','#E4B660','#ff82ff','#66d4f5']}]},options: {aspectRatio:1,scales:{yAxes: [{display: true,ticks: {beginAtZero: true}}]}}});
    /*
    var articleHit = document.getElementById('articleHitChart').getContext('2d');
    var chart = new Chart(articleHit, {
        // The type of chart we want to create
        type: 'doughnut',
    
        // The data for our dataset
        data: {
            labels: ['a','b','c','d','e','f','g'],
            datasets: [{            
                data: [1,2,3,4,5,6,7],
                backgroundColor:['red','orange','yellow']
            }]
        },
        // Configuration options go here
        options: {
            tooltips: {
                intersect: false
            }
        }
    });
    */
    /* chart.js api 끝 */
    
   