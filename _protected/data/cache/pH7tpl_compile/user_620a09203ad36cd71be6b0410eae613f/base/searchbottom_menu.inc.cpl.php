<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-27 00:42:52
Compiled file from: /home/mathdecr/public_html/matrimonial/templates/themes/base/tpl/bottom_menu.inc.tpl
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
?> <nav class="bottom_nav"> <div role="listbox" class="dropdown_menu ft_dm"> <span class="dropdown_item_css"> <a rel="nofollow" href="<?php $design->url('page','main','faq') ;?>" class="dropdown_item" data-load="ajax"><?php echo t('Help'); ?></a> </span> <ul class="show_dropdown"> <li><a href="<?php $design->url('page','main','faq') ;?>" title="<?php echo t('Frequently Asked Questions'); ?>"><?php echo t('FAQ'); ?></a></li> <li><a href="<?php $design->url('page','main','terms') ;?>" title="<?php echo t('Terms of Use'); ?>" data-load="ajax"><?php echo t('Terms of Use'); ?></a></li> <li><a href="<?php $design->url('page','main','privacy') ;?>" title="<?php echo t('Privacy Policy'); ?>" data-load="ajax"><?php echo t('Privacy'); ?></a></li> <li><a href="<?php $design->url('page','main','legalnotice') ;?>" title="<?php echo t('Legal Notice'); ?>" data-load="ajax"><?php echo t('Legal Notice'); ?></a></li> <li class="dm_self"><span class="dropdown_item"><?php echo t('Help'); ?></span><i></i></li> </ul> </div> | <?php if(!$is_user_auth AND $is_newsletter_enabled) { ?> <a href="<?php $design->url('newsletter','home','subscription') ;?>" title="<?php echo t('Subscribe to our newsletter!'); ?>" data-popup="block-page"><?php echo t('Newsletter'); ?></a> | <?php } ?> <?php if($is_invite_enabled) { ?> <a rel="nofollow" href="<?php $design->url('invite','home','invitation') ;?>" title="<?php echo t('Invite your friends!'); ?>" data-popup="block-page"><?php echo t('Invite'); ?></a> | <?php } ?> </nav>