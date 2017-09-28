<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-19 03:31:50
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/user/views/base/tpl/setting/index.tpl
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
?><ol id="toc"> <li><a href="#edit"><span><?php echo t('Edit'); ?></span></a></li> <li><a href="#avatar"><span><?php echo t('Profile Photo'); ?></span></a></li> <li><a href="#design"><span><?php echo t('Profile Wallpaper'); ?></span></a></li> <li><a href="#notification"><span><?php echo t('Notification'); ?></span></a></li> <li><a href="#privacy"><span><?php echo t('Privacy'); ?></span></a></li> <?php if(PH7_VALID_LICENSE) { ?> <li><a href="<?php $design->url('payment','main','info') ;?>"><span><?php echo t('Membership Details'); ?></span></a></li> <?php } ?> <li><a href="#pwd"><span><?php echo t('Change Password'); ?></span></a></li></ol><div class="content" id="edit"> <?php $this->display($this->getCurrentController() . PH7_DS . 'edit.tpl', $this->registry->path_module_views . PH7_TPL_MOD_NAME . PH7_DS); ?></div><div class="content" id="avatar"> <?php $this->display($this->getCurrentController() . PH7_DS . 'avatar.tpl', $this->registry->path_module_views . PH7_TPL_MOD_NAME . PH7_DS); ?></div><div class="content" id="design"> <?php $this->display($this->getCurrentController() . PH7_DS . 'design.tpl', $this->registry->path_module_views . PH7_TPL_MOD_NAME . PH7_DS); ?></div><div class="content" id="notification"> <?php $this->display($this->getCurrentController() . PH7_DS . 'notification.tpl', $this->registry->path_module_views . PH7_TPL_MOD_NAME . PH7_DS); ?></div><div class="content" id="privacy"> <?php $this->display($this->getCurrentController() . PH7_DS . 'privacy.tpl', $this->registry->path_module_views . PH7_TPL_MOD_NAME . PH7_DS); ?></div><div class="content" id="pwd"> <?php $this->display($this->getCurrentController() . PH7_DS . 'password.tpl', $this->registry->path_module_views . PH7_TPL_MOD_NAME . PH7_DS); ?></div><script src="<?php echo PH7_URL_STATIC?>js/tabs.js"></script><script>tabs('p', ['edit','avatar','design','notification','privacy','pwd']);</script>