$(function(){var i=$(window).width(),n=640;i<=n||($(".l-contaiber").css("display","none"),$(".l-loading").css("display","block"));var a=!1;$(window).resize(function(){a!==!1&&clearTimeout(a),a=setTimeout(function(){$(window).width()},200)})}),$(window).load(function(){var i=$(window).width(),n=640;i<=n||($(".l-loading").addClass("is-amimate"),$(".l-container--top").addClass("is-amimate"))});