$(function (){
    $(".message"). mouseover(function (){
        $(this).css({"background-color":"#a0a0a0","color":"white"});
    }).mouseout(function (){
        $(this).css({"background-color":"","color":"black"});
    });

    $("#checkboxId").change(function(){
        var isType = $(this).is(":checked");
        var prod  =$("input[name='checkbox']");
        var bool = false;
        if (isType){
            bool=true;
        }
        $(prod).each(function (){
            $(this).prop("checked",bool);
        });
    });

    $("input[name='checkbox']").change(function (){
      var number=$("input[name='checkbox']:checked").length;
      var num = $("input[name='checkbox']").length;
      if (number!=num){
          $("#checkboxId").prop("checked",false);
      }else if (number==num){
          $("#checkboxId").prop("checked",true);
      }
    });
});