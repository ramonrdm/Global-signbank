$(document).ready(function() {

    // $(".glossid").on("focusout", function(e) {
    //     e.preventDefault();
    //     let data = {};
    //     let csrftoken = $("[name=csrfmiddlewaretoken]").val();
    //     let row = $(this).parent().parent();
    //     let id = row.attr("id");
    //     data["csrfmiddlewaretoken"] = csrftoken;
    //     data["id"] = id;
    //     data["idgloss"] = $(this).val();
    //     data["domhndsh"] = "";
    //     $.post("/signs/ajax/updategloss", data)
    // });

    $(".handshape_select").on("click", function(e) {
        var modal_body = $(".modal-body");
    });
    $(".translation").on("focusout", function(e) {
        e.preventDefault();
        submitData($(this));
    });

    function submitData(thing) {
        let data = {};
        let csrftoken = $("[name=csrfmiddlewaretoken]").val();
        let row = thing.parent();
        //Informações a serem passadas para o post
        let id = row.attr("id");
        let glossid = row.find("#glossid").html();
        //let domhndsh = row.find("#domhndsh").val();
        //let subhndsh = row.find("")
        let localizacao = row.find("#localizacao select").val();
        let trad_ptbr = row.find("[name='traduc_ptbr']").val();
        let trad_ing = row.find("[name='traduc_ing']").val();

        data["csrfmiddlewaretoken"] = csrftoken;
        data["id"] = id;
        data["glossid"] = glossid;
        data["localizacao"] = localizacao;
        data["traducao_portugues"] = trad_ptbr;
        data["traducao_ingles"] = trad_ing;

        $.post("/signs/ajax/updategloss", data);
    }
});
