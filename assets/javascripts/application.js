//= require jquery
//= require bootstrap
//= require jquery.dataTables
//= require paging

$(document).ready(function() {
  $.extend($.fn.dataTable.defaults, {
    "sDom": "<'row'<'col-md-6'l><'col-md-6'f>r>t<'row'<'col-md-6'i><'col-md-6'p>>",
    "sPaginationType": "bootstrap",
    "iDisplayLength": 50
  });
  $.extend($.fn.dataTableExt.oStdClasses, {
    "sSortAsc": "header headerSortDown",
    "sSortDesc": "header headerSortUp",
    "sSortable": "header"
  });
});
