$(document).ready(function() {

    $(".glossid").on("focusout", function(e) {
        e.preventDefault();
        let data = {};
        let csrftoken = $("[name=csrfmiddlewaretoken]").val();
        let row = $(this).parent().parent();
        let id = row.attr("id");
        data["csrfmiddlewaretoken"] = csrftoken;
        data["id"] = id;
        data["idgloss"] = $(this).val();
        data["domhndsh"] = "";
        $.post("/signs/ajax/updategloss", data)
    });
});
