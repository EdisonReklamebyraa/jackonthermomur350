$(document).ready(function () {

    $(".discount").keyup(function () {
        //      alert('Handler for .keyup() called.');
        var unitprice = $(this).attr("data-unitprice").replace(",", ".");
        var antall = $(this).attr("data-antall").replace(",", ".");

        var discountpercentage = this.value.replace(",", ".");

        var netUnitPrice = (100 - discountpercentage) / 100 * unitprice;
        var totalPrice = netUnitPrice * antall;

        $(this).closest("tr").find(".Col_art_unitprice").html(netUnitPrice.toFixed(2) + " kr");
        $(this).closest("tr").find(".Col_art_totalprice").html(totalPrice.toFixed(2) + " kr");
        $(this).closest("tr").find(".Col_art_totalprice").attr("data-totalprice", totalPrice);
        UpdateTotalPrice();
    });

    UpdateTotalPrice();
});


function UpdateTotalPrice() {
    var sum = 0;
    $(".Col_art_totalprice").each(function () {
        if (isNumber($(this).attr("data-totalprice")))
            sum += Number($(this).attr("data-totalprice"));
        else if (isNumber($(this).attr("data-totalprice").replace(",", ".")))
            sum += Number($(this).attr("data-totalprice").replace(",", "."));
    });

    $(".totalpris").html(sum.toFixed(2) + " kr");
}
function isNumber(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
}
