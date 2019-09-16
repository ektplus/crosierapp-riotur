'use strict';

import $ from "jquery";

import routes from '../../static/fos_js_routes.json';
import Routing from '../../../vendor/friendsofsymfony/jsrouting-bundle/Resources/public/js/router.min.js';


Routing.setRoutingData(routes);

/**
 * Este script é utilizado tanto para lançamentos de movimentações em carteiras comuns quanto em caixas.
 */
$(document).ready(function () {

    let $cpf = $('#passageiro_cpf');


    $cpf.on('blur', function () {
        if ($cpf.val()) {
            if ($cpf.val() != $cpf.data('oldval')) {
                $cpf.data('oldval', $cpf.val());
                $.getJSON(Routing.generate('passageiro_findPassageiroBy') + '?tipoDoc=cpf&v=' + encodeURIComponent($cpf.val()))
                    .done(
                        function (data) {
                            console.dir(data);
                        });
            }

        }

    });


})
;
