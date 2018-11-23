/**
 * Created with jing.zhao2013
 * Date: 13-6-4
 * Time: 下午3:10
 */
(function($){$.extend({"dialog":function(options){
    var ops = $.extend({
        title:'',   //title
        content:'',//body
        footer:'',  //footer
        closeIcon:'',
        isModal:false, //是否模态窗口
        width:700,     ///弹出框宽度
        isDrags:false,      //是否可拖动
        onlyBody:false,       //是否只有中间部分
        marginTop:null,        //margintop
        oprDom:null      //需要操作的DOm，Jquery对象
    }, options)
    var dialog = {
        $dom:null,
        $shadow:null,
        render:function(){
            var self = this,
                $win = $(window),
                $body=$("body"),
                winHeight=$win.innerHeight(),
                winWidth=$win.innerWidth(),
                sHeight=Math.max(winHeight,$body.innerHeight()),
                sWidth=Math.max(winWidth,$body.innerWidth()),
                $shadow=$("<div class='ps-shadow'></div>"),//模态窗口遮罩
                $dom =$("<div class='ps-dialog'></div>");  //弹出窗口dom
            //开始弹出窗render
            $dom.css({width:ops.width,left:(winWidth-ops.width)/2});
            $dom.html([
                '<div class="ps-dialog-title" onselectstart="return false">',
                    '<span></span>',
                    '<div class="ps-dialog-close-button">╳</div>',
                '</div>',
                '<div class="ps-dialog-body"></div>',
                '<div class="ps-dialog-footer"></div>'].join(''));
            self.$dom=$dom;
            var $children=$dom.children(),
                $title=$($children[0]),
                $close=$($children[0]).find("div"),
                $content=$($children[1]),
                $footer=$($children[2]);
            $close.bind({
                'click':function(e){if(ops.isModal){ $shadow.hide(); }$dom.hide();e.stopPropagation();},
                'mouseover':function(){$(this).addClass('ps-dialog-close-button-hover');},
                'mouseout':function(){ $(this).removeClass('ps-dialog-close-button-hover');}
            });
            $(self).bind({
                'close':function(){$dom.hide();if(ops.isModal){$shadow.hide();}},
                'show':function(){if(ops.isModal){$shadow.show();}$dom.show();},
                'dispose':function(){if(ops.isModal){$shadow.remove()};$dom.remove();$shadow=null;$dom = null;},
                'setTitle':function(e,title){
                    if(!title) return;
                    if (typeof title == 'string'){$title.find("span").empty().html(title);}else{$title.find("span").empty().append(title);}
                },
                'setContent':function(e,content){
                    if (!content) return;
                    if (typeof content == 'string'){ $content.empty().html(content);}else{$content.empty().append(content);}
                },
                'setFooter':function(e,footer){
                    if (!footer) return;
                    if (typeof footer == 'string'){ $footer.empty().html(footer);}else{$footer.empty().append(footer);}
                },
                'setCloseIcon':function(e,icon){
                    if (!icon) return;
                    if (typeof icon == 'string'){ $close.empty().html(icon);}else{$content.empty().append(icon);}
                }
            });
            if(ops.isDrags){self.dragndrop($dom, $title);}
            $(self).trigger("setTitle",[ops.title]);
            $(self).trigger("setContent",[ops.content]);
            $(self).trigger("setFooter",[ops.footer]);
            $(self).trigger("setCloseIcon",[ops.closeIcon]);
            if(ops.marginTop){
                $dom.css("top",ops.marginTop);
            }else{
                $dom.css("top",(winHeight-$dom.height())/2);
            }
            if(ops.isModal){
                $shadow.css({height:sHeight,width:sWidth});
                self.$shadow=$shadow;
                $body.append($shadow);
            }
            $body.append($dom);
        },
        dragndrop:function(d,tl){
            var win=$(window),
                startX,startY,startLeft,startTop,
                maxLeft = win.width()-ops.width- 2,
                maxTop =  win.height()-d.height()- 2,
                dragging = false;
            var dragAndDrop={
                'down':function(e){
                    dragging = true;tl.css('cursor','move');
                    startX = e.pageX;startY = e.pageY;startLeft=d.offset().left;startTop=d.offset().top;
                    e.preventDefault();tl.focus();
                },
                'drop':function(){if (!dragging) return;
                    dragging = false;tl.css('cursor','default');
                },
                'darg':function(e){if (!dragging) return;
                    var l = Math.min(startLeft + e.pageX - startX,maxLeft);
                    var t = Math.min(startTop + e.pageY - startY,maxTop);
                    d.css({left:Math.max(0,l),top:Math.max(0,t)});
                }
            }
            tl.bind('mousedown',dragAndDrop.down).bind('mousemove',dragAndDrop.darg).bind('mouseup',dragAndDrop.drop);
            $(document).bind('mousemove', dragAndDrop.drag).bind('mouseup', dragAndDrop.drop);
        }
    }
    var handler=function(){
        var $dialog=$(dialog);
        return {
            show:function(){$dialog.trigger("show");},
            close:function(){$dialog.trigger("close");},
            dispose:function(){$dialog.trigger("dispose");},
            setTitle:function(title){$dialog.trigger("setTitle",[title]);},
            setContent:function(content){$dialog.trigger("setContent",[content]);},
            setFooter:function(footer){$dialog.trigger("setFooter",[footer]);},
            setCloseIcon:function(icon){$dialog.trigger("setCloseIcon",[icon]);}
        }
    }
    dialog.render();
    return handler();
}})})(jQuery)