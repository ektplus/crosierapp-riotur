<?php

namespace App\EntityHandler\Turismo;

use App\Entity\Turismo\Motorista;
use CrosierSource\CrosierLibBaseBundle\EntityHandler\EntityHandler;

/**
 * @author Carlos Eduardo Pauluk
 */
class MotoristaEntityHandler extends EntityHandler
{


    public function getEntityClass()
    {
        return Motorista::class;
    }
}