/**
 * Shopware 5
 * Copyright (c) shopware AG
 *
 * According to our dual licensing model, this program can be used either
 * under the terms of the GNU Affero General Public License, version 3,
 * or under a proprietary license.
 *
 * The texts of the GNU Affero General Public License with an additional
 * permission and of our proprietary license can be found at and
 * in the LICENSE file you have received along with this program.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * "Shopware" is a registered trademark of shopware AG.
 * The licensing of the program under the AGPLv3 does not imply a
 * trademark license. Therefore any rights, title and interest in
 * our trademarks remain entirely with us.
 *
 * @category   Shopware
 * @package    ProductFeed
 * @subpackage Store
 * @version    $Id$
 * @author shopware AG
 */

/**
 * Shopware Store - for ProductFeed backend module.
 *
 * The category store loads and stores the category model
 */
//{block name="backend/product_feed/store/category"}
Ext.define('Shopware.apps.ProductFeed.store.Category', {
    /**
     * Extend for the standard ExtJS 4
     * @string
     */
    extend : 'Ext.data.TreeStore',

    remoteFilter: true,
    /**
     * Auto load the store after the component
     * is initialized
     * @boolean
     */
    autoLoad : false,
    /**
     * Define the used model for this store
     * @string
     */
    model : 'Shopware.apps.ProductFeed.model.Category'
});
//{/block}
