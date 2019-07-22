$(document).ready(function() {
    var row1 = $(".row1");
    var row2 = $(".row2");


    for (var i = 0; i < 100; i++) {
        $("#id_form-"+i+"-idgloss").on("focusout", function(e) {
            e.preventDefault();
            let data = {}
            let parent = $(this).parent().parent();
            let id = parent.find(".field-id").find("a").html();
            data["csrfmiddlewaretoken"]=$("[name=csrfmiddlewaretoken]").val();
            data["id"] = id;
            data["idgloss"]=$(this).val();
            data["localizacao"] = "";
            $.post("/signs/ajax/updategloss", data);
        });
        $("#id_form-"+i+"-localizacao").on("change", function(e) {
            e.preventDefault();
            let data = {}
            let parent = $(this).parent().parent();
            let id = parent.find(".field-id").find("a").html();
            let loc = $(this).find("option:selected").val();
            console.log(loc);
            data["csrfmiddlewaretoken"]=$("[name=csrfmiddlewaretoken]").val();
            data["id"] = id;
            data["idgloss"] = "";
            data["localizacao"] = loc;
            $.post("/signs/ajax/updategloss", data);
        });
    }
});
