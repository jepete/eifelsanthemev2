<?php

namespace Shopware\Themes\EifelsanTheme;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme
{
    protected $extend = 'Responsive';

    protected $name = <<<'SHOPWARE_EOD'
Theme for Eifelsan
SHOPWARE_EOD;

    protected $description = <<<'SHOPWARE_EOD'
Theme for Eifelsan
SHOPWARE_EOD;

    protected $author = <<<'SHOPWARE_EOD'
Jens Petersen
SHOPWARE_EOD;

    protected $license = <<<'SHOPWARE_EOD'

SHOPWARE_EOD;

    protected $javascript = array(
        'src/js/custom.js'
    );

    public function createConfig(Form\Container\TabContainer $container)
    {
    }
}