$(document).ready(function () {
    //codigo que se ejecuta al cargarse por primera vez la pagina (en realidad antes, cuando se carga el DOM)
    
    $.ajax({
        type: "POST",
        url: "/servicios/servicio.asmx/ObtenerMaratonesRealizados",
        cache: false,
        contentType: "application/json; charset=utf-8",
        data: "{}",
        dataType: "json",
        success: function (data) {
            cargarTabla('tblResultado', data.d)
        },
           error: function (xhr, status, error) {
            alert(xmlRequest.status + ' \n\r ' +
                   xmlRequest.statusText + '\n\r' +
                   xmlRequest.responseText);
        }
    });
});
function vaciarTabla(id) {
    $('#' + id + " tbody tr").remove();
}

function cargarTabla(id, items) {
    vaciarTabla(id);
    $.each(items, function (index, obj) {
        $('#' + id).append('<tr><td>' + obj.Id + '</td><td>' + obj.Posicion + '</td><td>' + obj.Tiempo + '</td><td>' + obj.Premio + '</td></tr>');
    });
}