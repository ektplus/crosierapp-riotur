<?php

namespace App\Entity\Turismo;

use CrosierSource\CrosierLibBaseBundle\Entity\EntityId;
use CrosierSource\CrosierLibBaseBundle\Entity\EntityIdTrait;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * Entidade 'Carteira'.
 *
 * @ORM\Entity(repositoryClass="App\Repository\Turismo\VeiculoRepository")
 * @ORM\Table(name="rtr_tur_veiculo")
 *
 * @author Carlos Eduardo Pauluk
 */
class Veiculo implements EntityId
{

    use EntityIdTrait;


    /**
     *
     * @ORM\Column(name="prefixo", type="string", nullable=false)
     * @Groups("entity")
     *
     * @var string|null
     */
    private $prefixo;

    /**
     *
     * @ORM\Column(name="apelido", type="string", nullable=false)
     * @Groups("entity")
     *
     * @var string|null
     */
    private $apelido;

    /**
     *
     * @ORM\Column(name="placa", type="string", nullable=false)
     * @Groups("entity")
     *
     * @var string|null
     */
    private $placa;

    /**
     *
     * @ORM\Column(name="status", type="string", nullable=false)
     * @Groups("entity")
     *
     * @var string|null
     */
    private $status;

    /**
     *
     * @ORM\Column(name="renavan", type="string", nullable=false)
     * @Groups("entity")
     *
     * @var string|null
     */
    private $renavan;

    /**
     *
     * @ORM\Column(name="obs", type="string", nullable=false)
     * @Groups("entity")
     *
     * @var string|null
     */
    private $obs;

    /**
     * @return string|null
     */
    public function getPrefixo(): ?string
    {
        return $this->prefixo;
    }

    /**
     * @param string|null $prefixo
     * @return Veiculo
     */
    public function setPrefixo(?string $prefixo): Veiculo
    {
        $this->prefixo = $prefixo;
        return $this;
    }

    /**
     * @return string|null
     */
    public function getApelido(): ?string
    {
        return $this->apelido;
    }

    /**
     * @param string|null $apelido
     * @return Veiculo
     */
    public function setApelido(?string $apelido): Veiculo
    {
        $this->apelido = $apelido;
        return $this;
    }

    /**
     * @return string|null
     */
    public function getPlaca(): ?string
    {
        return $this->placa;
    }

    /**
     * @param string|null $placa
     * @return Veiculo
     */
    public function setPlaca(?string $placa): Veiculo
    {
        $this->placa = $placa;
        return $this;
    }

    /**
     * @return string|null
     */
    public function getStatus(): ?string
    {
        return $this->status;
    }

    /**
     * @param string|null $status
     * @return Veiculo
     */
    public function setStatus(?string $status): Veiculo
    {
        $this->status = $status;
        return $this;
    }

    /**
     * @return string|null
     */
    public function getRenavan(): ?string
    {
        return $this->renavan;
    }

    /**
     * @param string|null $renavan
     * @return Veiculo
     */
    public function setRenavan(?string $renavan): Veiculo
    {
        $this->renavan = $renavan;
        return $this;
    }

    /**
     * @return string|null
     */
    public function getObs(): ?string
    {
        return $this->obs;
    }

    /**
     * @param string|null $obs
     * @return Veiculo
     */
    public function setObs(?string $obs): Veiculo
    {
        $this->obs = $obs;
        return $this;
    }


}
