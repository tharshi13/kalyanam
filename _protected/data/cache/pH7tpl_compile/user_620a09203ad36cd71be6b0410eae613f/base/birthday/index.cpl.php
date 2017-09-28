<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-26 16:07:43
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/user/views/base/tpl/birthday/index.tpl
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
?><div class="center"> <?php if(!empty($births)) { ?> <?php foreach($births as $birth) { ?> <div class="s_photo"> <?php $avatarDesign->get($birth->username, $birth->firstName, $birth->sex, 64, true) ;?> </div> <?php } ?> <?php $this->display('page_nav.inc.tpl', PH7_PATH_TPL . PH7_TPL_NAME . PH7_DS); ?> <?php } else { ?> <p><?php echo t('No users who have a birthday today. Come back tomorrow 😉'); ?></p> <?php } ?></div>