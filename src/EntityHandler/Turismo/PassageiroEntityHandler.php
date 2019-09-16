<?php

namespace App\EntityHandler\Turismo;

use App\Entity\Turismo\Passageiro;
use CrosierSource\CrosierLibBaseBundle\EntityHandler\EntityHandler;

/**
 * @author Carlos Eduardo Pauluk
 */
class PassageiroEntityHandler extends EntityHandler
{


    public function getEntityClass()
    {
        return Passageiro::class;
    }
}