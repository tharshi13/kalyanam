<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-24 19:59:52
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/lost-password/views/base/tpl/main/forgot.tpl
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
?><div class="col-md-8"> <p><?php echo t('If you forgot your password, enter your account email address below and we will send<br /> you an email containing a special link that will help you create a new password.<br /> Make sure you enter the <em>same email address you use to sign in to your profile</em>.'); ?></p> <?php ForgotPasswordForm::display() ;?></div><div class="col-md-4 ad_336_280"><?php $this->designModel->ad(336,280) ;?></div>