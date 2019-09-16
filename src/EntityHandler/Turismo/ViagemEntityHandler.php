<?php

namespace App\EntityHandler\Turismo;

use App\Entity\Turismo\Viagem;
use CrosierSource\CrosierLibBaseBundle\EntityHandler\EntityHandler;

/**
 * @author Carlos Eduardo Pauluk
 */
class ViagemEntityHandler extends EntityHandler
{


    public function getEntityClass()
    {
        return Viagem::class;
    }
}