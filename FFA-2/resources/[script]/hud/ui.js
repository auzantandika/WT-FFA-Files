$(document).ready(function() {
    window.addEventListener('message', function(event) {
        var data = event.data;
        
        $("#playerid").html("#" + data.id);

        var food = event.data.food;
        $("#boxHunger").css("width", food + "%");
        var water = event.data.water;
        $("#boxThirst").css("width", water + "%");

        if (data.stamina >= 100) {
            $("#stamina").show();
		} else if (data.stamina > 10) {
			$("#stamina").show();
			$("#boxStamina").css("width", data.stamina + "%");
		} else if (data.stamina <= 10) {
			$("#stamina").show();
			$("#boxStamina").css("width", data.stamina + "%");
        }
        
        if (data.dive >= 100) {
			$("#dive").show();
		} else if (data.dive > 32) {
			$("#dive").show();
			$("#boxDive").css("width", data.dive + "%");
		} else if (data.dive <= 32) {
			$("#dive").show();
			$("#boxDive").css("width", data.dive + "%");
        }
        
        if (data.armor == 0) {
            $("#armor").hide();
		} else if (data.armor > 10) {
            $("#armor").show();
			$("#boxArmor").css("width", data.armor + "%");
		} else if (data.armor <= 10) {
			$("#armor").show();
			$("#boxArmor").css("width", data.armor + "%");
		}

        if (data.health != -100){
			$('#healtlevel').html(Math.round(data.health) +'/100')
		}else if(data.health == 0){
			$('#healtlevel').html("0")
		}

    })
})


