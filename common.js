function ArticleDetail__Body__init() {

    var body = document.querySelector('.article_body');
    var initialValue = body.innerHTML.trim();
    var viewer = new toastui.Editor.factory({
        
        el : document.querySelector('#viewer'),
        initialValue : initialValue,
        viewer : true
    });
  }
  ArticleDetail__Body__init();