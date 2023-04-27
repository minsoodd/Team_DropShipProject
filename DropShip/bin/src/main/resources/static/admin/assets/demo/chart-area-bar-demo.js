// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';
//회원 가입자
 
// Area Chart Example
	$(document).ready(function() {
    	chartBtn();
	});
    function chartBtn(){
        //데이터 불러와줌 
        $.ajax({
            url:"/adminchartData3",
            type:"get",
            dataType:"json",
            data:{"period":$("#period").val(),"period2":$("#period2").val()},
            success:function(combinedData){
				//console.log("combinedData : "+ combinedData);
				//console.log(combinedData.memberCountDayMap.dateList);
				//alert("성공")
                // update chart data
                updateChart(combinedData.memberCountDayMap);
                updateChart2(combinedData.orderTotalMap);
            },
            error:function(){
                alert("failed");
            }
        });
    }

    //그리기 함수
    function updateChart(combinedData){
        const ctx = document.getElementById('myAreaChart');
        new Chart(ctx, {
            type: 'line',
            data: {
//                labels: ["가로축","가로축2","가로축2","가로축2"], // 가로축 이름
                //labels: ['1','2','3'], // 가로축 이름
                labels: combinedData.dateList, // 가로축 이름
                datasets: [{
                    label: $("#period").val(), // 차트 이름
//                    label: data.memberTitle, // 차트 이름
//                    data: [33,44,53,12], // 데이터 값
					  lineTension: 0.3,
				      backgroundColor: "rgba(2,117,216,0.2)",
				      borderColor: "rgba(2,1171,216,1)",
				      pointRadius: 5,
				      pointBackgroundColor: "rgba(2,117,216,1)",
				      pointBorderColor: "rgba(255,255,255,0.8)",
				      pointHoverRadius: 5,
				      pointHoverBackgroundColor: "rgba(2,117,216,1)",
				      pointHitRadius: 50,
				      pointBorderWidth: 2,
                    data: [1,2,3], // 데이터 값
                    data: combinedData.memberCountList, // 데이터 값
                    borderWidth: 1
                   
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    }
    
    //그리기 함수
    function updateChart2(combinedData){
        const ctx = document.getElementById('myBarChart');
        new Chart(ctx, {
            type: 'bar',
            data: {
//                labels: ["가로축","가로축2","가로축2","가로축2"], // 가로축 이름
                labels: combinedData.orderDay, // 가로축 이름
                datasets: [{
                    label: $("#period2").val(), // 차트 이름
//                    label: data.memberTitle, // 차트 이름
//                    data: [33,44,53,12], // 데이터 값
				    backgroundColor: "rgb(219,112,147)",
      				borderColor: "red",
                    data: combinedData.totalPrice, // 데이터 값
                    borderWidth: 1
                   
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    }			
	;			
