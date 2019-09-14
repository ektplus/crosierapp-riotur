<?php

namespace App\Form\Turismo;

use App\Entity\Turismo\Veiculo;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

/**
 *
 * @author Carlos Eduardo Pauluk
 */
class VeiculoType extends AbstractType
{

    public function buildForm(FormBuilderInterface $builder, array $options)
    {

        $builder->add('prefixo', TextType::class, [
            'label' => 'Prefixo'
        ]);

        $builder->add('apelido', TextType::class, [
            'label' => 'Apelido',
            'required' => false,
        ]);

        $builder->add('placa', TextType::class, [
            'label' => 'Placa',
            'required' => false,
        ]);

        $builder->add('status', TextType::class, [
            'label' => 'Status',
            'required' => false,
        ]);

        $builder->add('Renavan', TextType::class, [
            'label' => 'Renavan',
            'required' => false,
        ]);

        $builder->add('Obs', TextareaType::class, [
            'label' => 'Obs',
            'required' => false,
        ]);

    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => Veiculo::class
        ));
    }
}