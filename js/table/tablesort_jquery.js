// JavaScript Documentvar ts = $.tablesorter,
    sorting = false,
    searching = false;

ts.getFilters = function (table) {
    var c = table.config;
    return c.$table.find('thead')
        .find('.tablesorter-filter').map(function (i, el) {
        return $(el).val();
    }).get();
};
ts.setFilters = function (table, filter) {
    var c = table.config;
    return c.$table.find('thead')
        .find('.tablesorter-filter').each(function (i, el) {
        $(el).val(filter[i] || '');
    });
};

$('table')
    .on('sortBegin filterEnd', function (e, filters) {
    if (!(sorting || searching)) {
        var table = this,
            c = table.config,
            $sibs = c.$table.siblings('.tablesorter');
        if (!sorting) {
            sorting = true;
            $sibs.trigger('sorton', [c.sortList, function () {
                sorting = false;
            }]);
        }
        if (!searching) {
            $sibs.each(function () {
                ts.setFilters(this, ts.getFilters(table));
            })
                .trigger('search');
            setTimeout(function () {
                searching = false;
            }, 500);
        }
    }
})
    .tablesorter({
    Theme:blue,    
    widthFixed: true,
    widgets: ['filter']
});



$( ".tablesorter-filter" ).slice( 0, 1 ).hide( );
