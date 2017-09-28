<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-24 22:44:07
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/contact/views/base/tpl/contact/index.tpl
Template Engine: PH7Tpl version 1.3.0 by Pierre-Henry Soria
*/
/***************************************************************************
 *     pH7CMS Social Dating CMS | By Pierre-Henry Soria
 *               --------------------
 * @since      Mon Mar 21 2011
 * @author     SORIA Pierre-Henry
 * @email      hello@ph7cms.com
 * @link       https://ph7cms.com
 * @copyright  (c) 2011-2017, Pierre-Henry Soria. All Rights Reserved.
 * @license    Creative Commons Attribution 3.0 License - http://creativecommons.org/licenses/by/3.0/
 ***************************************************************************/
?><div class="left col-md-8"> <?php ContactForm::display() ;?> <em><?php echo t('Your IP is:'); ?> <?php echo Framework\Ip\Ip::get()?></em></div><div class="right col-md-2 ad_160_600"><?php $this->designModel->ad(160,600) ;?></div>