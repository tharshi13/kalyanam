<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-26 15:52:55
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/xml/views/base/tpl/links.xml.tpl
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
?><?php $design->xmlHeader() ;?><url><link title="<?php echo t('About our Free Online Dating Site'); ?>" url="<?php $design->url('page','main','index') ;?>" /><?php if($is_webcam_enabled) { ?> <link title="<?php echo t('Webcam Picture Party Fun'); ?>" url="<?php $design->url('webcam','webcam','picture') ;?>" /><?php } if($is_forum_enabled) { ?> <link title="<?php echo t('Discussion Forums'); ?>" url="<?php $design->url('forum','forum','index') ;?>" /><?php } if($is_picture_enabled) { ?> <link title="<?php echo t('Photo Gallery'); ?>" url="<?php $design->url('picture','main','index') ;?>" /><?php } if($is_video_enabled) { ?> <link title="<?php echo t('Videos Movie'); ?>" url="<?php $design->url('video','main','index') ;?>" /><?php } if($is_chat_enabled) { ?> <link title="<?php echo t('Chat Rooms'); ?>" url="<?php $design->url('chat','home','index') ;?>" /><?php } if($is_chatroulette_enabled) { ?> <link title="<?php echo t('Free Chatroulette Speed Dating'); ?>" url="<?php $design->url('chatroulette','home','index') ;?>" /><?php } if($is_blog_enabled) { ?> <link title="<?php echo t('Blog'); ?>" url="<?php $design->url('blog','main','index') ;?>" /><?php } if($is_note_enabled) { ?> <link title="<?php echo t('Community Notes'); ?>" url="<?php $design->url('note','main','index') ;?>" /><?php } if($is_game_enabled) { ?> <link title="<?php echo t('Games Zone Party'); ?>" url="<?php $design->url('game','main','index') ;?>" /><?php } ?><link title="<?php echo t('Users Birthday'); ?>" url="<?php $design->url('user','birthday','index') ;?>" /><link title="<?php echo t('About Us'); ?>" url="<?php $design->url('page','main','about') ;?>" /><link title="<?php echo t('Help Us'); ?>" url="<?php $design->url('page','main','helpus') ;?>" /><link title="<?php echo t('Share %site_name%'); ?>" url="<?php $design->url('page','main','sharesite') ;?>" /><link title="<?php echo t('FAQ'); ?>" url="<?php $design->url('page','main','faq') ;?>" /><?php if($is_affiliate_enabled) { ?> <link title="<?php echo t('Affiliate'); ?>" url="<?php $design->url('affiliate','home','index') ;?>" /><?php } ?><link title="<?php echo t('Jobs'); ?>" url="<?php $design->url('page','main','job') ;?>" /><link title="<?php echo t('Our Team'); ?>" url="<?php $design->url('page','main','team') ;?>" /><link title="<?php echo t('RSS Feed List'); ?>" url="<?php $design->url('xml','rss','index') ;?>" /><link title="<?php echo t('XML Site Map'); ?>" url="<?php $design->url('xml','sitemap','xmlrouter') ;?>" /></url>