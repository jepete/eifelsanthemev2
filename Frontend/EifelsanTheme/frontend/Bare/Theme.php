<?php

namespace Shopware\Themes\Bare;

use Doctrine\Common\Collections\ArrayCollection;
use Shopware\Components\Form as Form;
use Shopware\Components\Theme\ConfigSet;

class Theme extends \Shopware\Components\Theme
{
    /**
     * Defines the human readable theme name
     * which displayed in the backend
     * @var string
     */
    protected $name = '__theme_name__';

    /**
     * Allows to define a description text
     * for the theme
     * @var null
     */
    protected $description = '__theme_description__';

    /**
     * Name of the theme author.
     * @var null
     */
    protected $author = '__author__';

    /**
     * License of the theme source code.
     *
     * @var null
     */
    protected $license = '__license__';

    /**
     * @var bool
     */
    protected $injectBeforePlugins = true;

    /**
     * @param Form\Container\TabContainer $container
     */
    public function createConfig(Form\Container\TabContainer $container)
    {
        $tab = $this->createTab(
            'bareMain',
            '__bare_tab_header__',
            [
                'attributes' => [
                    'layout' => 'anchor',
                    'autoScroll' => true,
                    'padding' => '0'
                ]
            ]
        );

        $fieldSet = $this->createFieldSet(
            'bareLogos',
            '__logos__',
            [
                'attributes' => [
                    'padding' => '10',
                    'margin'=> '5',
                    'layout' => 'anchor',
                    'defaults' => ['labelWidth' => 155, 'anchor' => '100%']
                ]
            ]
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'mobileLogo',
                '__smartphone__',
                'frontend/_public/src/img/logos/logo--mobile.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'tabletLogo',
                '__tablet__',
                'frontend/_public/src/img/logos/logo--tablet.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'tabletLandscapeLogo',
                '__tablet_landscape__',
                'frontend/_public/src/img/logos/logo--tablet.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'desktopLogo',
                '__desktop__',
                'frontend/_public/src/img/logos/logo--tablet.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $tab->addElement($fieldSet);

        $fieldSet = $this->createFieldSet(
            'Icons',
            '__icons__',
            [
                'attributes' => [
                    'padding' => '10',
                    'margin'=> '5',
                    'layout' => 'anchor',
                    'defaults' => ['labelWidth' => 155, 'anchor' => '100%']
                ]
            ]
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'appleTouchIcon',
                '__apple_touch_icon__',
                'frontend/_public/src/img/apple-touch-icon-precomposed.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'setPrecomposed',
                'Precomposed Icon',
                true,
                $this->getLabelAttribute(
                    'apple_touch_icon_precomposed'
                )
            )
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'win8TileImage',
                '__win8_tile_image__',
                'frontend/_public/src/img/win-tile-image.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'favicon',
                '__favicon__',
                'frontend/_public/src/img/favicon.ico',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $tab->addElement($fieldSet);

        $container->addTab($tab);
    }

    /**
     * Helper function to get the attribute of a checkbox field which shows a description label
     * @param $snippetName
     * @return array
     */
    private function getLabelAttribute($snippetName, $labelType = 'boxLabel')
    {
        $description = Shopware()->Snippets()->getNamespace('themes/bare/backend/config')->get($snippetName);
        return ['attributes' => [$labelType => $description]];
    }

    /**
     * @param ArrayCollection $collection
     */
    public function createConfigSets(ArrayCollection $collection)
    {
        $set = new ConfigSet();
        $set->setName('__bare_min_appearance__')
            ->setDescription('__bare_min_appearance_description__')
            ->setValues(['color' => '#fff']);
        $collection->add($set);

        $set = new ConfigSet();
        $set->setName('__bare_max_appearance__')
            ->setDescription('__bare_max_appearance_description__')
            ->setValues(['color' => '#fff']);

        $collection->add($set);
    }
}
