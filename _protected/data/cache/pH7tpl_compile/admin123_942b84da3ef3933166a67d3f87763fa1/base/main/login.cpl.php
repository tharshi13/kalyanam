<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-19 02:54:37
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/admin123/views/base/tpl/main/login.tpl
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
?><div class="col-md-8"> <?php LoginForm::display() ;?> <p><?php LostPwdDesignCore::link(PH7_ADMIN_MOD) ;?></p> <p class="red"><?php echo t('Your logged IP is:'); ?> <em class="bold"><?php echo Framework\Ip\Ip::get()?></em></p></div>