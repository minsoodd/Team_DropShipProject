jQuery(function($){
    $(".2017_renewal_itemform select.it_supply").on("shop_sel_supply_process", function(e, param){
        
        var add_exec = param.add_exec;
        var $el = $(this);
        var val = $el.val();
		
        //블랙캣77님이 해당 코드에 도움을 주셨습니다.
        var eq = $("select.it_supply").index($(this));
        var item = $el.closest(".sit_option").find("label").eq(eq).text();
        
        if(!val) {
            alert(item+"을(를) 선택해 주십시오.");
            return false;
        }

        var info = val.split(",");

        // 재고체크
        if(parseInt(info[2]) < 1) {
            alert(info[0]+"은(는) 재고가 부족하여 구매할 수 없습니다.");
            return false;
        }

        var id = item+chr(30)+info[0];
        var option = item+":"+info[0];
        var price = info[1];
        var stock = info[2];

        // 금액 음수 체크
        if(parseInt(price) < 0) {
            alert("구매금액이 음수인 상품은 구매할 수 없습니다.");
            return false;
        }

        if(add_exec) {
            if(same_option_check(option))
                return false;

            add_sel_option(1, id, option, price, stock);
        }

        return false;
    });

    if (typeof add_sel_option === "function") {

        add_sel_option = (function() {
            var cached_function = add_sel_option;

            return function() {
                
                if( $(".2017_renewal_itemform").length ){
                    var a = arguments;
                    var type=a[0],
                        id=a[1],
                        option=a[2],
                        price=a[3],
                        stock=a[4];

                    var item_code = $("input[name='it_id[]']").val();
                    var opt = "";
                    var li_class = "sit_opt_list";
                    if(type)
                        li_class = "sit_spl_list";

                    var opt_prc;
                    if(parseInt(price) >= 0)
                        opt_prc = "<strong>"+number_format(String(price))+"</strong> 원";
                    else
                        opt_prc = "<strong>"+number_format(String(price))+"</strong> 원";

                    opt += "<li class=\""+li_class+"\">";
                    opt += "<input type=\"hidden\" name=\"io_type["+item_code+"][]\" value=\""+type+"\">";
                    opt += "<input type=\"hidden\" name=\"io_id["+item_code+"][]\" value=\""+id+"\">";
                    opt += "<input type=\"hidden\" name=\"io_value["+item_code+"][]\" value=\""+option+"\">";
                    opt += "<input type=\"hidden\" class=\"io_price\" value=\""+price+"\">";
                    opt += "<input type=\"hidden\" class=\"io_stock\" value=\""+stock+"\">";
                    opt += "<div class=\"opt_name\">";
                    opt += "<span class=\"sit_opt_subj\">"+option+"</span>";
                    opt += "</div>";
                    opt += "<div class=\"opt_count\">";
                    opt += "<button type=\"button\" class=\"sit_qty_minus\"><span class=\"sound_only\">감소</span></button>";
                    opt += "<input type=\"text\" name=\"ct_qty["+item_code+"][]\" value=\"1\" class=\"num_input\" size=\"5\">";
                    opt += "<button type=\"button\" class=\"sit_qty_plus\"><span class=\"sound_only\">증가</span></button>";
                    opt += "<span class=\"sit_opt_prc\">"+opt_prc+"</span>";
                    opt += "<button type=\"button\" class=\"sit_opt_del\"><span class=\"sound_only\">삭제</span></button></div>";
                    opt += "</li>";

                    if($("#sit_sel_option > ul").length < 1) {
                        $("#sit_sel_option").html("<ul id=\"sit_opt_added\"></ul>");
                        $("#sit_sel_option > ul").html(opt);
                    } else{
                        if(type) {
                            if($("#sit_sel_option .sit_spl_list").length > 0) {
                                $("#sit_sel_option .sit_spl_list:last").after(opt);
                            } else {
                                if($("#sit_sel_option .sit_opt_list").length > 0) {
                                    $("#sit_sel_option .sit_opt_list:last").after(opt);
                                } else {
                                    $("#sit_sel_option > ul").html(opt);
                                }
                            }
                        } else {
                            if($("#sit_sel_option .sit_opt_list").length > 0) {
                                $("#sit_sel_option .sit_opt_list:last").after(opt);
                            } else {
                                if($("#sit_sel_option .sit_spl_list").length > 0) {
                                    $("#sit_sel_option .sit_spl_list:first").before(opt);
                                } else {
                                    $("#sit_sel_option > ul").html(opt);
                                }
                            }
                        }
                    }

                    price_calculate();

                    $("#sit_sel_option").trigger("add_sit_sel_option", [opt]);

                } else {

                    cached_function.apply(this, arguments); // use .apply() to call it

                }   //end if

            };
        }());
    }   //end if check function

    if (typeof price_calculate === "function") {
        price_calculate = (function() {
            var cached_function = price_calculate;

            return function() {
                
                if( $(".2017_renewal_itemform").length ){

				var arr_opt2_1_price = {1:0, 2:0, 3:4200, 4:16900, 5:25400, 6:0, 7:29600, 8:27500, 9:27500, 10:27500}
				var arr_opt2_2_price = {1:4200, 2:16900, 3:0, 4:29600, 5:25400, 6:25400, 7:25400}

				var arr_opt3_1_1_price = {1:0}
				var arr_opt3_1_2_price = {1:0}
				var arr_opt3_1_3_price = {1:0}
				var arr_opt3_1_4_price = {1:0}
				var arr_opt3_1_5_price = {1:0}
				var arr_opt3_1_6_price = {1:0, 2:8400, 3:16900, 4:31000, 5:42400}
				var arr_opt3_1_7_price = {1:0, 2:14400, 3:28800, 4:52800, 5:72000}
				var arr_opt3_1_8_price = {1:0}
				var arr_opt3_1_9_price = {1:0}
				var arr_opt3_1_10_price = {1:0}

				var arr_opt3_2_1_price = {1:0}
				var arr_opt3_2_2_price = {1:0}
				var arr_opt3_2_3_price = {1:0, 2:8400, 3:16900, 4:31000, 5:42400}
				var arr_opt3_2_4_price = {1:0, 2:14400, 3:28800, 4:52800, 5:72000}
				var arr_opt3_2_5_price = {1:0}
				var arr_opt3_2_6_price = {1:0}
				var arr_opt3_2_7_price = {1:0}

				var arr_opt4_price = {1:1000, 2:2000, 3:3000, 4:4000, 5:5000, 6:6000, 7:7000, 8:8000}

				var it_price = parseInt($("input#it_price").val());
				var val_opt1 = $("input[name=opt1]:checked").val();
				var val_opt2 = $("input[name=opt2]:checked").val();
				var val_opt3 = $("input[name=opt3]:checked").val();
				var val_opt4 = $("select[name=opt4]").val();

				if(val_opt4 == "")
				{
					var add_opt2 = parseInt(0);
					var add_opt3 = parseInt(0);
					var add_opt4 = parseInt(0);
				}
				else
				{
					if(val_opt1 == 1)
					{
						var add_opt2 = parseInt(arr_opt2_1_price[val_opt2]);
						if(val_opt2 == 1)
						{
							var add_opt3 = parseInt(arr_opt3_1_1_price[val_opt3]);
						}
						else if(val_opt2 == 2)
						{
							var add_opt3 = parseInt(arr_opt3_1_2_price[val_opt3]);
						}
						else if(val_opt2 == 3)
						{
							var add_opt3 = parseInt(arr_opt3_1_3_price[val_opt3]);
						}
						else if(val_opt2 == 4)
						{
							var add_opt3 = parseInt(arr_opt3_1_4_price[val_opt3]);
						}
						else if(val_opt2 == 5)
						{
							var add_opt3 = parseInt(arr_opt3_1_5_price[val_opt3]);
						}
						else if(val_opt2 == 6)
						{
							var add_opt3 = parseInt(arr_opt3_1_6_price[val_opt3]);
						}
						else if(val_opt2 == 7)
						{
							var add_opt3 = parseInt(arr_opt3_1_7_price[val_opt3]);
						}
						else if(val_opt2 == 8)
						{
							var add_opt3 = parseInt(arr_opt3_1_8_price[val_opt3]);
						}
						else if(val_opt2 == 9)
						{
							var add_opt3 = parseInt(arr_opt3_1_9_price[val_opt3]);
						}
						else if(val_opt2 == 10)
						{
							var add_opt3 = parseInt(arr_opt3_1_10_price[val_opt3]);
						}
					}
					else
					{
						var add_opt2 = parseInt(arr_opt2_2_price[val_opt2]);
						if(val_opt2 == 1)
						{
							var add_opt3 = parseInt(arr_opt3_2_1_price[val_opt3]);
						}
						else if(val_opt2 == 2)
						{
							var add_opt3 = parseInt(arr_opt3_2_2_price[val_opt3]);
						}
						else if(val_opt2 == 3)
						{
							var add_opt3 = parseInt(arr_opt3_2_3_price[val_opt3]);
						}
						else if(val_opt2 == 4)
						{
							var add_opt3 = parseInt(arr_opt3_2_4_price[val_opt3]);
						}
						else if(val_opt2 == 5)
						{
							var add_opt3 = parseInt(arr_opt3_2_5_price[val_opt3]);
						}
						else if(val_opt2 == 5)
						{
							var add_opt3 = parseInt(arr_opt3_2_6_price[val_opt3]);
						}
						else if(val_opt2 == 7)
						{
							var add_opt3 = parseInt(arr_opt3_2_7_price[val_opt3]);
						}
					}
					var add_opt4 = parseInt(arr_opt4_price[val_opt4]);
				}

                    if(isNaN(it_price))
                        return;

                    var $el_prc = $("input.io_price");
                    var $el_qty = $("input[name^=ct_qty]");
                    var $el_type = $("input[name^=io_type]");
                    var price, type, qty, total = 0;

                    $el_prc.each(function(index) {
                        price = parseInt($(this).val());
                        qty = parseInt($el_qty.eq(index).val());
                        type = $el_type.eq(index).val();

                        if(type == "0") { // 선택옵션
                            //total += (it_price + price) * qty;
                            tmp_price  = (it_price + price + add_opt2 + add_opt3 + add_opt4) * qty;
                            total += tmp_price;
                
                        } else { // 추가옵션
                            //total += price * qty;
                            tmp_price  = (price + add_opt2 + add_opt3 + add_opt4) * qty;
                            total += tmp_price;
                        }
                
                        $("#sit_opt_added li").eq(index).find("span.sit_opt_prc").empty().html("<strong>"+number_format(String(tmp_price))+"</strong> 원");
                
                        // 2020.09.11 중간 오른쪽 화면도 계산을 해야해서 추가함
                        $("#sit_buy .sit_opt_added li").eq(index).find("span.sit_opt_prc").empty().html("<strong>"+number_format(String(tmp_price))+"</strong> 원");
                    });

                    $("#sit_tot_price").empty().html("<span>총 금액 </span><strong>"+number_format(String(total))+"</strong> 원");
                    
                    $("#sit_tot_price").trigger("price_calculate", [total]);
                } else {
                    cached_function.apply(this, arguments); // use .apply() to call it
                }
                
            };
        }());
    }   //end if check function

});