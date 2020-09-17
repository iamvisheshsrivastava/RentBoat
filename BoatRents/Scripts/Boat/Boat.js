
$(document).ready(function () {

});

function OnSuccessSubmitDetails(response) {
    //alert(response.d);
    if (response.d == "Error") {
        $("#errordiv").append('<div class="alert alert-danger" style="visibility:visible;"><span aria-hidden="true" class="icon icon-warning-sign"></span>' + "Error in adding a Boat to the Inventory");
    }
    else {
        $("#errordiv").append('<div class="alert alert-success" style="visibility:visible;"><span aria-hidden="true" class="icon icon-info-sign"></span> ' + response.d + '</div>');
    }
}

function SubmitDetails() {
    $.ajax({
        type: "POST",
        url: "AddNewBoatToInventory.aspx/AddNewBoatToInventoryUI",
        data: '{BoatName: "' + $("#txtBoatName").val().trim() + '", HourlyRate: "' + $("#txtHourlyRate").val().trim() + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            alert(data.d);
        },
        failure: function (data) {
            alert(data.d);
        }
    });
}

function OnSuccessSearchDetails(response) {
    //alert(response.d);
    if (response.d != "Success") {
        $("#errordiv").append('<div class="alert alert-danger" style="visibility:visible;"><span aria-hidden="true" class="icon icon-warning-sign"></span>' + "Error in adding a Boat to the Inventory");
    }
    else {
        $("#errordiv").append('<div class="alert alert-success" style="visibility:visible;"><span aria-hidden="true" class="icon icon-info-sign"></span> You successfully rented the Boat. </div>');
    }
}

//function SearchDetails() {
//    $.ajax({
//        type: "POST",
//        url: "RentOutBoat.aspx/RentOutBoatUI",
//        data: '{BoatNumber: "' + $("#txtBoatNumber").val().trim() + '", CustomerName: "' + $("#txtCustomerName").val().trim() + '"}',
//        contentType: "application/json; charset=utf-8",
//        dataType: "json",
//        success: OnSuccessSearchDetails,
//        failure: function (response) {
//            alert(response.d);
//        }
//    });
//}

function SearchDetails() {
    $.ajax({
        type: "POST",
        url: "RentOutBoat.aspx/RentOutBoatUI",
        data: '{BoatNumber: "' + $("#txtBoatNumber").val().trim() + '", CustomerName: "' + $("#txtCustomerName").val().trim() + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            alert(data.d);    
        },
        failure: function (data) {
            alert(data.d);
        }
    });
}



