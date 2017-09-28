<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-27 14:43:09
Compiled file from: /home/mathdecr/public_html/matrimonial/templates/themes/base/tpl/top_menu.inc.tpl
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
?> <?php $admin_logged_as_user = UserCore::isAdminLoggedAs(); $admin_logged_as_affiliate = AffiliateCore::isAdminLoggedAs() ;?> <?php $oSession = new Framework\Session\Session() ;?> <nav class="navbar navbar-default navbar-fixed-top"> <div class="container"> <div class="navbar-header"> <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> <div role="banner" id="logo" class="navbar-brand"><h1><a href="<?php $design->homePageUrl() ;?>" title="<?php echo $slogan; ?>"><?php echo $site_name; ?></a></h1></div> </div> <div id="navbar" class="navbar-collapse collapse"> <ul class="nav navbar-nav"> <?php if(!$is_user_auth AND !$is_aff_auth AND !$is_admin_auth) { ?><!-- Disable SelfRegistration membership by invitation only <li><a class="bold" href="<?php $design->url('user','signup','step1') ;?>" title="<?php echo t('Join Now!'); ?>"><i class="fa fa-user-plus"></i> <?php echo t('Join Now!'); ?></a></li>--> <li><a href="<?php $design->url('user', 'main','login') ;?>" title="<?php echo t('Login'); ?>" data-load="ajax"><i class="fa fa-sign-in"></i> <?php echo t('Login'); ?></a></li> <?php } ?> <?php if(!$is_aff_auth) { ?> <li class="dropdown"><a href="<?php $design->url('user', 'browse', 'index') ;?>" title="<?php echo t('Members'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown" data-load="ajax"><i class="fa fa-user fa-fw"></i> <?php echo t('People'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('user', 'browse', 'index') ;?>" rel="nofollow" title="<?php echo t('Members'); ?>" data-load="ajax"><i class="fa fa-users"></i> <?php echo t('People'); ?></a></li> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('user','search', 'index') ;?>" title="<?php echo t('Search the members'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown" data-load="ajax"><i class="fa fa-search"></i> <?php echo t('Search'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('user', 'search', 'quick') ;?>" title="<?php echo t('Quick Search'); ?>" data-load="ajax"><?php echo t('Quick Search'); ?></a></li> <li><a href="<?php $design->url('user', 'search', 'advanced') ;?>" title="<?php echo t('Advanced Search'); ?>" data-load="ajax"><?php echo t('Advanced Search'); ?></a></li> </ul> </li> <li><a href="<?php $design->url('user','country','index',$country.PH7_SH.$city) ;?>" title="<?php echo t('Users in %0% through the Map!',$city); ?>"><i class="fa fa-map-marker"></i> <?php echo t('Users in your Area'); ?></a></li> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('user', 'birthday', 'index') ;?>" title="<?php echo t('Users Birthday'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown" data-load="ajax"><i class="fa fa-birthday-cake"></i> <?php echo t('Birthday'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('user', 'birthday', 'index', 'all') ;?>" rel="nofollow" title="<?php echo t('All Birthday'); ?>" data-load="ajax"><?php echo t('All Birthday'); ?></a></li> <li><a href="<?php $design->url('user', 'birthday', 'index', 'male') ;?>" title="<?php echo t('Men Birthday'); ?>" data-load="ajax"><?php echo t('Men Birthday'); ?></a></li> <li><a href="<?php $design->url('user', 'birthday', 'index', 'female') ;?>" title="<?php echo t('Women Birthday'); ?>" data-load="ajax"><?php echo t('Women Birthday'); ?></a></li> </ul> </li> </ul> </li> <?php } ?> <?php if(( !$is_aff_auth AND !$is_admin_auth ) OR $admin_logged_as_user ) { ?> <?php if($is_chat_enabled) { ?> <li class="dropdown"><a href="#" title="<?php echo t('Free Social Dating Chat Rooms'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown" data-load="ajax"><i class="fa fa-weixin"></i> <?php echo t('Chat'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <?php if($is_chat_enabled) { ?> <li><a href="<?php $design->url('chat','home','index') ;?>" rel="nofollow" title="<?php echo t('Chat Rooms'); ?>" data-load="ajax"><i class="fa fa-weixin"></i> <?php echo t('Chat'); ?></a></li> <?php } ?> </ul> </li> <?php } ?> <?php if($is_picture_enabled) { ?> <li class="dropdown"><a href="<?php $design->url('picture','main','index') ;?>" title="<?php echo t('Photo Gallery'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown" data-load="ajax"><i class="fa fa-picture-o"></i> <?php echo t('Photo'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('picture','main','index') ;?>" rel="nofollow" title="<?php echo t('Photo Gallery'); ?>" data-load="ajax"><i class="fa fa-picture-o"></i> <?php echo t('Photos'); ?></a></li> <li><a href="<?php $design->url('picture','main','search') ;?>" title="<?php echo t('Search Photos'); ?>" data-load="ajax"><i class="fa fa-search"></i> <?php echo t('Search'); ?></a></li> </ul> </li> <?php } ?> <?php if($is_video_enabled) { ?> <li class="dropdown"><a href="<?php $design->url('video','main','index') ;?>" title="<?php echo t('Video Gallery'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown" data-load="ajax"><i class="fa fa-youtube-play"></i> <?php echo t('Video'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('video','main','index') ;?>" rel="nofollow" title="<?php echo t('Video Gallery'); ?>" data-load="ajax"><i class="fa fa-youtube-play"></i> <?php echo t('Videos'); ?></a></li> <li><a href="<?php $design->url('video','main','search') ;?>" title="<?php echo t('Search Videos'); ?>" data-load="ajax"><i class="fa fa-search"></i> <?php echo t('Search'); ?></a></li> </ul> </li> <?php } ?><!-- Disable Forum <?php if($is_forum_enabled) { ?> <li class="dropdown"><a href="<?php $design->url('forum','forum','index') ;?>" title="<?php echo t('Forums'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown" data-load="ajax"><i class="fa fa-comments"></i> <?php echo t('Forum'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('forum','forum','index') ;?>" rel="nofollow" title="<?php echo t('Forums'); ?>" data-load="ajax"><i class="fa fa-comments"></i> <?php echo t('Forum'); ?></a></li> <li><a href="<?php $design->url('forum','forum','search') ;?>" title="<?php echo t('Search Topics'); ?>" data-load="ajax"><i class="fa fa-search"></i> <?php echo t('Search'); ?></a></li> </ul> </li> <?php } ?>--> <?php if($is_note_enabled) { ?> <li class="dropdown"><a href="<?php $design->url('note','main','index') ;?>" title="<?php echo t('Community Notes'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown" data-load="ajax"><i class="fa fa-newspaper-o"></i> <?php echo t('Note'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('note','main','index') ;?>" rel="nofollow" title="<?php echo t('Community Notes'); ?>" data-load="ajax"><i class="fa fa-newspaper-o"></i> <?php echo t('Notes'); ?></a></li> <li><a href="<?php $design->url('note','main','search') ;?>" title="<?php echo t('Search Notes'); ?>" data-load="ajax"><i class="fa fa-search"></i> <?php echo t('Search'); ?></a></li> </ul> </li> <?php } ?> <?php } ?> <?php if($is_user_auth AND ( !$is_aff_auth AND !$is_admin_auth ) OR $admin_logged_as_user ) { ?> <?php if($is_mail_enabled) { ?> <li class="dropdown"><a href="<?php $design->url('mail','main','inbox') ;?>" title="<?php echo t('My Emails'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-envelope-o fa-fw"></i> <?php echo t('Mail'); ?> <span class="badge"><?php echo $count_unread_mail; ?></span> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('mail','main','compose') ;?>" title="<?php echo t('Compose'); ?>"><i class="fa fa-pencil"></i> <?php echo t('Compose'); ?></a></li> <li><a href="<?php $design->url('mail','main','inbox') ;?>" title="<?php echo t('Inbox - Messages Received'); ?>"><i class="fa fa-inbox"></i> <?php echo t('Inbox'); ?></a></li> <li><a href="<?php $design->url('mail','main','outbox') ;?>" title="<?php echo t('Messages Sent'); ?>"><i class="fa fa-paper-plane-o"></i> <?php echo t('Sent'); ?></a></li> <li><a href="<?php $design->url('mail','main','trash') ;?>" title="<?php echo t('Trash'); ?>"><i class="fa fa-trash-o"></i> <?php echo t('Trash'); ?></a></li> <li><a href="<?php $design->url('mail','main','search') ;?>" title="<?php echo t('Find Messages'); ?>"><i class="fa fa-search"></i> <?php echo t('Search'); ?></a></li> </ul> </li> <?php } ?> <noscript> <li class="dropdown"><a href="<?php $design->url('user','setting','edit') ;?>" title="<?php echo t('Settings'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><?php echo t('Settings'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('user','setting','edit') ;?>"><?php echo t('Edit Profile'); ?></a></li> <li><a href="<?php $design->url('user','setting','design') ;?>"><?php echo t('Design Profile'); ?></a></li> <li><a href="<?php $design->url('user','setting','notification') ;?>"><?php echo t('Notifications'); ?></a></li> <li><a href="<?php $design->url('user','setting','privacy') ;?>"><?php echo t('Privacy Settings'); ?></a></li> <?php if(PH7_VALID_LICENSE) { ?><li><a href="<?php $design->url('payment','main','info') ;?>"><?php echo t('Membership Details'); ?></a></li><?php } ?> <li><a href="<?php $design->url('user','setting','password') ;?>"><?php echo t('Change Password'); ?></a></li> </ul> </li> </noscript> <li class="dropdown"><a href="<?php $design->url('user','account','index') ;?>" title="<?php echo t('My Account'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-cog"></i> <?php echo t('Account'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('user','setting','index') ;?>" title="<?php echo t('My Settings'); ?>"><i class="fa fa-cog fa-fw"></i> <?php echo t('Edit Profile'); ?></a></li> <li><a href="<?php echo (new UserCore)->getProfileLink($oSession->get('member_username')) ;?>" title="<?php echo t('See My Profile'); ?>"><i class="fa fa-user fa-fw"></i> <?php echo t('See My Profile'); ?></a></li> <li><a href="<?php $design->url('user','setting','avatar') ;?>" title="<?php echo t('Change Profile Photo'); ?>"><i class="fa fa-upload"></i> <?php echo t('Change Profile Photo'); ?></a></li> <?php if($is_picture_enabled) { ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('picture','main','index') ;?>" title="<?php echo t('Photo Gallery'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown" data-load="ajax"><i class="fa fa-picture-o"></i> <?php echo t('Photo Gallery'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('picture','main','addalbum') ;?>" title="<?php echo t('Add an Album'); ?>"><?php echo t('Add an Album'); ?></a></li> <li><a href="<?php $design->url('picture','main','albums', $oSession->get('member_username')) ;?>" title="<?php echo t('My Albums'); ?>" data-load="ajax"><?php echo t('My Albums'); ?></a></li> </ul> </li> <?php } ?> <?php if($is_video_enabled) { ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('video','main','index') ;?>" title="<?php echo t('Videos Gallery'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown" data-load="ajax"><i class="fa fa-youtube-play"></i> <?php echo t('Videos Gallery'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('video','main','addalbum') ;?>" title="<?php echo t('Add an Album'); ?>"><?php echo t('Add an Album'); ?></a></li> <li><a href="<?php $design->url('video','main','albums', $oSession->get('member_username')) ;?>" title="<?php echo t('My Albums'); ?>" data-load="ajax"><?php echo t('My Albums'); ?></a></li> </ul> </li> <?php } ?> <?php if($is_note_enabled) { ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('note','main','index') ;?>" title="<?php echo t('Notes'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-newspaper-o"></i> <?php echo t('Note'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('note','main','add') ;?>" title="<?php echo t('Add a Note'); ?>"><i class="fa fa-newspaper-o"></i> <?php echo t('Add a Note'); ?></a></li> <li><a href="<?php $design->url('note','main','author', $oSession->get('member_username')) ;?>" title="<?php echo t('My Notes'); ?>"><?php echo t('My Notes'); ?></a></li> </ul> </li> <?php } ?> <?php if($is_friend_enabled) { ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('friend','main','index') ;?>" title="<?php echo t('Friends Manager'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-users"></i> <?php echo t('Friends Manager'); ?> <span class="badge"><?php echo $count_pen_friend_request; ?></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('friend','main','index') ;?>" title="<?php echo t('Friends List'); ?>"><?php echo t('Friends List'); ?></a></li> <li><a href="<?php $design->url('friend','main','search',$oSession->get('member_username')) ;?>" title="<?php echo t('Find a friend in my list'); ?>"><?php echo t('Find a Friend'); ?></a></li> </ul> </li> <?php } ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('user','visitor','index') ;?>" title="<?php echo t('Who Visited My Profile'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-eye"></i> <?php echo t('Who See Me'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('user','visitor','index') ;?>" title="<?php echo t('Who Visited My Profile'); ?>"><?php echo t('Who See Me'); ?></a></li> <li><a href="<?php $design->url('user','visitor','search') ;?>" title="<?php echo t('Find who visited my profile'); ?>"><?php echo t('Find Visitor(s)'); ?></a></li> </ul> </li> <li><a href="<?php $design->url('user','main','logout') ;?>" title="<?php echo t('Logout'); ?>"><i class="fa fa-sign-out"></i> <?php echo t('Logout'); ?></a></li> </ul> </li> <?php } ?> <?php if($is_aff_auth AND ( !$is_user_auth AND !$is_admin_auth OR $admin_logged_as_affiliate ) ) { ?> <li><a href="<?php $design->url('affiliate','ads','index') ;?>" title="<?php echo t('Get Ad Banners'); ?>"><i class="fa fa-money"></i> <?php echo t('Banners'); ?></a></li> <li class="dropdown"><a href="<?php $design->url('affiliate','account','index') ;?>" title="<?php echo t('My Account'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-cog"></i> <?php echo t('Account'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('affiliate','account','index') ;?>" title="<?php echo t('My Account'); ?>"><i class="fa fa-tachometer"></i> <?php echo t('Dashboard'); ?></a></li> <li><a href="<?php $design->url('affiliate','account','edit') ;?>" title="<?php echo t('Edit My Account'); ?>"><i class="fa fa-cog"></i> <?php echo t('Edit My Account'); ?></a></li> <li><a href="<?php $design->url('affiliate','account','password') ;?>" title="<?php echo t('Change Password'); ?>"><i class="fa fa-key fa-fw"></i> <?php echo t('Change Password'); ?></a></li> <li><a href="<?php $design->url('affiliate','home','logout') ;?>" title="<?php echo t('Logout'); ?>"><i class="fa fa-sign-out"></i> <?php echo t('Logout'); ?></a></li> </ul> </li> <?php } ?> <?php if($is_admin_auth AND ( !$is_user_auth AND !$is_aff_auth ) ) { ?> <li class="dropdown"><a href="<?php $design->url(PH7_ADMIN_MOD,'user','index') ;?>" title="<?php echo t('Users/Admins Manager'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-user fa-fw"></i> <?php echo t('User/Admin'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url(PH7_ADMIN_MOD,'user','browse') ;?>" title="<?php echo t('Browse Users'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo t('Users'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'user','browse') ;?>" title="<?php echo t('Browse Users'); ?>"><i class="fa fa-users"></i> <?php echo t('Browse'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'user','search') ;?>" title="<?php echo t('Search Users'); ?>"><i class="fa fa-search"></i> <?php echo t('Search'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'user','add') ;?>" title="<?php echo t('Add a User'); ?>"><i class="fa fa-user-plus"></i> <?php echo t('Add User'); ?></a></li> <li><a href="<?php $design->url('report','admin','index') ;?>" title="<?php echo t('Reports'); ?>"><i class="fa fa-flag"></i> <?php echo t('Reports'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'user','addfakeprofiles') ;?>" title="<?php echo t('Fake Profiles Automatic Generator'); ?>"><i class="fa fa-user-plus"></i> <?php echo t('Fake Profile Generator'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'user','import') ;?>" title="<?php echo t('Import Users'); ?>"><i class="fa fa-user-plus"></i> <?php echo t('Import Users'); ?></a></li> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('field','field','all','user') ;?>" title="<?php echo t('User Fields'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-check-circle-o"></i> <?php echo t('User Fields'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('field','field','all','user') ;?>" title="<?php echo t('Fields List'); ?>"><?php echo t('Fields List'); ?></a></li> <li><a href="<?php $design->url('field','field','add','user') ;?>" title="<?php echo t('Add Fields'); ?>"><?php echo t('Add Fields'); ?></a></li> </ul> </li> </ul> </li> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url(PH7_ADMIN_MOD,'admin','browse') ;?>" title="<?php echo t('Browse Admins'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo t('Admins'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'admin','browse') ;?>" title="<?php echo t('Browse Admins'); ?>"><i class="fa fa-users"></i> <?php echo t('Browse'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'admin','search') ;?>" title="<?php echo t('Search an Admin'); ?>"><i class="fa fa-search"></i> <?php echo t('Search'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'admin','add') ;?>" title="<?php echo t('Add an Admin'); ?>"><i class="fa fa-user-plus"></i> <?php echo t('Add Admin'); ?></a></li> </ul> </li> </ul> </li> <li class="dropdown"><a href="<?php $design->url(PH7_ADMIN_MOD,'setting','index') ;?>" title="<?php echo t('Settings'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-cog fa-fw"></i> <?php echo t('Setting'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'setting','index') ;?>" title="<?php echo t('General Settings'); ?>"><i class="fa fa-tachometer"></i> <?php echo t('General'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD, 'setting','metamain') ;?>" title="<?php echo t('Meta Tags/Homepage Texts'); ?>"><i class="fa fa-tag"></i> <?php echo t('Meta Tags/Homepage Texts'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'setting','ads') ;?>" title="<?php echo t('Add Banners on the best click-through-rate locations'); ?>"><i class="fa fa-money"></i> <?php echo t('Ad Banners'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'setting','analyticsapi') ;?>" title="<?php echo t('Analytics Code'); ?>"><i class="fa fa-bar-chart"></i> <?php echo t('Analytics Code'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'setting', 'style') ;?>" title="<?php echo t('Custom CSS Style'); ?>"><i class="fa fa-code"></i> <?php echo t('CSS Style'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'setting', 'script') ;?>" title="<?php echo t('JavaScript Injection'); ?>"><i class="fa fa-code"></i> <?php echo t('JavaScript'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'setting', 'license') ;?>" title="<?php echo t('License Key'); ?>"><i class="fa fa-key"></i> <?php echo t('License'); ?></a></li> </ul> </li> <li class="dropdown"><a href="<?php $design->url(PH7_ADMIN_MOD,'module','index') ;?>" title="<?php echo t('Modules Manager'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-puzzle-piece"></i> <?php echo t('Mod'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'module','disable') ;?>" title="<?php echo t('Enable/Disable System Modules'); ?>"><i class="fa fa-toggle-on"></i> <?php echo t('Enable/Disable Modules'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'module','index') ;?>" title="<?php echo t('Third-party Modules Manager'); ?>"><i class="fa fa-plug"></i> <?php echo t('3rd-party Mods Manager'); ?></a></li> <?php if($is_newsletter_enabled) { ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('newsletter', 'admin', 'index') ;?>" title="<?php echo t('Mass Mailer'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-newspaper-o"></i> <?php echo t('Newsletters'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('newsletter', 'admin', 'index') ;?>" title="<?php echo t('Mass Mailer'); ?>"><?php echo t('Newsletters'); ?></a></li> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('newsletter', 'admin', 'browse') ;?>" title="<?php echo t('Browse Subscribers'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><?php echo t('Subscribers'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('newsletter', 'admin', 'browse') ;?>" title="<?php echo t('Browse Subscribers'); ?>"><?php echo t('Browse'); ?></a></li> <li><a href="<?php $design->url('newsletter', 'admin', 'search') ;?>" title="<?php echo t('Search Subscribers'); ?>"><?php echo t('Search'); ?></a></li> </ul> </li> </ul> </li> <?php } ?> <?php if($is_forum_enabled) { ?> <li><a href="<?php $design->url('forum','admin','index') ;?>" title="<?php echo t('Forum - Admin Mode'); ?>"><i class="fa fa-comments"></i> <?php echo t('Forum'); ?></a></li> <?php } ?> <?php if($is_blog_enabled) { ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('blog','admin','index') ;?>" title="<?php echo t('Admin Blog'); ?>"><i class="fa fa-commenting-o"></i> <?php echo t('Blog'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('blog','admin','index') ;?>" title="<?php echo t('Admin Control - Blog'); ?>"><?php echo t('Admin Blog'); ?></a></li> <li><a href="<?php $design->url('blog','admin','add') ;?>" title="<?php echo t('Add a Blog Post'); ?>"><?php echo t('Add a Post'); ?></a></li> </ul> </li> <?php } ?> <?php if($is_game_enabled) { ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('game','admin','index') ;?>" title="<?php echo t('Admin Game'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-gamepad"></i> <?php echo t('Game'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('game','admin','index') ;?>" title="<?php echo t('Admin Game'); ?>"><?php echo t('Admin Game'); ?></a></li> <li><a href="<?php $design->url('game','admin','add') ;?>" title="<?php echo t('Add a Game'); ?>"><?php echo t('Add a Game'); ?></a></li> </ul> </li> <?php } ?> <?php if($is_affiliate_enabled) { ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('affiliate','admin','index') ;?>" title="<?php echo t('Affiliate Admin Manager'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-money"></i> <?php echo t('Affiliate'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('affiliate','admin','banner') ;?>" title="<?php echo t('Banners Manager'); ?>"><?php echo t('Banners'); ?></a></li> <li><a href="<?php $design->url('affiliate','admin','browse') ;?>" title="<?php echo t('Affiliates List'); ?>"><?php echo t('Browse Affiliates'); ?></a></li> <li><a href="<?php $design->url('affiliate','admin','search') ;?>" title="<?php echo t('Search an Affiliate'); ?>"><?php echo t('Search an Affiliate'); ?></a></li> <li><a href="<?php $design->url('affiliate','admin','add') ;?>" title="<?php echo t('Add an Affiliate'); ?>"><?php echo t('Add Affiliate'); ?></a></li> <li><a href="<?php $design->url('affiliate','admin','config') ;?>" title="<?php echo t('Affiliate Settings'); ?>"><?php echo t('Settings'); ?></a></li> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('field','field','all','aff') ;?>" title="<?php echo t('Affiliate Fields'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><?php echo t('Affiliate Fields'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('field','field','all','aff') ;?>" title="<?php echo t('Fields List'); ?>"><?php echo t('Fields List'); ?></a></li> <li><a href="<?php $design->url('field','field','add','aff') ;?>" title="<?php echo t('Add Fields'); ?>"><?php echo t('Add Fields'); ?></a></li> </ul> </li> </ul> </li> <?php } ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('payment','admin','index') ;?>" title="<?php echo t('Payment System'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-credit-card"></i> <?php echo t('Billing'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'setting','general') ;?>#p=registration" title="<?php echo t('Set the Default Membership Group for new Users'); ?>"><?php echo t('Default Membership Group'); ?></a></li> <li><a href="<?php $design->url('payment','admin','membershiplist') ;?>" title="<?php echo t('Memberships List'); ?>"><?php echo t('Memberships List'); ?></a></li> <li><a href="<?php $design->url('payment','admin','addmembership') ;?>" title="<?php echo t('Membership Manager'); ?>"><?php echo t('Add a new Membership'); ?></a></li> <li><a href="<?php $design->url('payment','admin','config') ;?>" title="<?php echo t('Payment Gateway Config'); ?>"><?php echo t('Gateway Config'); ?></a></li> </ul> </li> <?php if($is_mail_enabled) { ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('mail','admin','index') ;?>" title="<?php echo t('Member Mails Manager'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-envelope-o"></i> <?php echo t('Mail Manager'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('mail','admin','msglist') ;?>" title="<?php echo t('Member Messages Monitor'); ?>"><?php echo t('Messages Monitor'); ?></a></li> <li><a href="<?php $design->url('mail','main','search') ;?>" title="<?php echo t('Search Member Messages'); ?>"><?php echo t('Search Messages'); ?></a></li> </ul> </li> <?php } ?> <?php if($is_video_enabled) { ?> <li><a href="<?php $design->url('video', 'admin', 'config') ;?>"><i class="fa fa-youtube-play"></i> <?php echo t('Video Youtube API key'); ?></a></li> <?php } ?> <?php if($is_connect_enabled) { ?> <li><a href="<?php $design->url('connect', 'admin', 'config') ;?>"><i class="fa fa-share-alt-square"></i> <?php echo t('Universal Login Config'); ?></a></li> <?php } ?> </ul> </li> <?php $oModeratorModel = new ModeratorCoreModel(); $count_moderate_total_picture_album = $oModeratorModel->totalPictureAlbums(); $count_moderate_total_picture = $oModeratorModel->totalPictures(); $count_moderate_total_video_album = $oModeratorModel->totalVideoAlbums(); $count_moderate_total_video = $oModeratorModel->totalVideos(); $count_moderate_total_avatar = $oModeratorModel->totalAvatars(); $count_moderate_total_background = $oModeratorModel->totalBackgrounds(); $count_moderate_total_note = $oModeratorModel->totalNotes(); unset($oModeratorModel); ;?> <li class="dropdown"><a href="<?php $design->url(PH7_ADMIN_MOD,'moderator','index') ;?>" title="<?php echo t('User Moderation'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-user-secret"></i> <?php echo t('Moderation'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'moderator','picturealbum') ;?>" title="<?php echo t('Moderate Photo Albums'); ?>"><i class="fa fa-picture-o"></i> <?php echo t('Photo Album'); ?> <span class="badge"><?php echo $count_moderate_total_picture_album; ?></span></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'moderator','picture') ;?>" title="<?php echo t('Moderate Pictures'); ?>"><i class="fa fa-picture-o"></i> <?php echo t('Picture'); ?> <span class="badge"><?php echo $count_moderate_total_picture; ?></span></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'moderator','videoalbum') ;?>" title="<?php echo t('Moderate Video Albums'); ?>"><i class="fa fa-youtube-play"></i> <?php echo t('Video Album'); ?> <span class="badge"><?php echo $count_moderate_total_video_album; ?></span></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'moderator','video') ;?>" title="<?php echo t('Moderate Videos'); ?>"><i class="fa fa-youtube-play"></i> <?php echo t('Video'); ?> <span class="badge"><?php echo $count_moderate_total_video; ?></span></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'moderator','avatar') ;?>" title="<?php echo t('Moderate Profile Photos'); ?>"><i class="fa fa-picture-o"></i> <?php echo t('Profile Photo'); ?> <span class="badge"><?php echo $count_moderate_total_avatar; ?></span></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'moderator','background') ;?>" title="<?php echo t('Moderate Profile Background'); ?>"><i class="fa fa-picture-o"></i> <?php echo t('Profile Background'); ?> <span class="badge"><?php echo $count_moderate_total_background; ?></span></a></li> <?php if($is_note_enabled) { ?> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url('note','admin','index') ;?>" title="<?php echo t('Moderate Notes'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-newspaper-o"></i> <?php echo t('Notes'); ?> <span class="badge"><?php echo $count_moderate_total_note; ?></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url('note','admin','unmoderated') ;?>" title="<?php echo t('Unmoderated Note Posts'); ?>"><?php echo t('Unmoderated Notes'); ?> <span class="badge"><?php echo $count_moderate_total_note; ?></span></a></li> <li><a href="<?php $design->url('note','admin','index') ;?>" title="<?php echo t('Moderate Note Posts'); ?>"><?php echo t('All Notes'); ?></a></li> </ul> </li> <?php } ?> <?php if($is_webcam_enabled) { ?> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'moderator','picturewebcam') ;?>" title="<?php echo t('Moderate the Webcam Pictures'); ?>"><i class="fa fa-camera"></i> <?php echo t('Webcam Pictures'); ?></a></li> <?php } ?> </ul> </li> <li class="dropdown"><a href="<?php $design->url(PH7_ADMIN_MOD,'file','index') ;?>" title="<?php echo t('File/Page CMS'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-file"></i> <?php echo t('File/Page'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'file','display') ;?>" title="<?php echo t('Public File Manager'); ?>"><i class="fa fa-file"></i> <?php echo t('Public Files'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'file','display','protected') ;?>" title="<?php echo t('Protected File Manager'); ?>"><i class="fa fa-file"></i> <?php echo t('Protected Files'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'file','pagedisplay') ;?>" title="<?php echo t('Display Page of Module'); ?>"><i class="fa fa-pencil-square-o"></i> <?php echo t('Page Module'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'file','maildisplay') ;?>" title="<?php echo t('Display Email Template'); ?>"><i class="fa fa-pencil"></i> <?php echo t('Email Template'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'file','themedisplay') ;?>" title="<?php echo t('Display all Templates Files'); ?>"><i class="fa fa-paint-brush"></i> <?php echo t('Templates Files'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'file','suggestiondisplay') ;?>" title="<?php echo t('Suggestion List'); ?>"><i class="fa fa-plus-circle"></i> <?php echo t('Suggestion List'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'file','bandisplay') ;?>" title="<?php echo t('Ban Options'); ?>"><i class="fa fa-ban"></i> <?php echo t('Ban Options'); ?></a></li> </ul> </li> <li class="dropdown"><a href="<?php $design->url(PH7_ADMIN_MOD,'tool','index') ;?>" title="<?php echo t('Tools'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-wrench"></i> <?php echo t('Tool'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'tool','index') ;?>" title="<?php echo t('General Tools'); ?>"><i class="fa fa-database"></i> <?php echo t('Tools'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'tool','envmode') ;?>" title="<?php echo t('Change the Environment Mode'); ?>"><i class="fa fa-eye"></i> <?php echo t('Environment Mode'); ?></a></li> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url(PH7_ADMIN_MOD,'tool','cache') ;?>" title="<?php echo t('Caches Manager'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-tachometer"></i> <?php echo t('Caches'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'tool','cache') ;?>" title="<?php echo t('Caches Controls'); ?>"><?php echo t('Caches Manager'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'tool','cacheconfig') ;?>" title="<?php echo t('Cache Settings'); ?>"><?php echo t('Cache Setting'); ?></a></li> </ul> </li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'tool','backup') ;?>" title="<?php echo t('Backup Manager'); ?>"><i class="fa fa-floppy-o"></i> <?php echo t('Backup Manager'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'tool','freeSpace') ;?>" title="<?php echo t('Free Space Server'); ?>"><i class="fa fa-refresh"></i> <?php echo t('Free Space Server'); ?></a></li> <li class="menu-item dropdown dropdown-submenu"><a href="<?php $design->url(PH7_ADMIN_MOD,'info','index') ;?>" title="<?php echo t('Information'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-info-circle"></i> <?php echo t('Info'); ?></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'main','stat') ;?>" title="<?php echo t('Site Statistics'); ?>"><?php echo t('Site Stats'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'info','software') ;?>" title="<?php echo t('Software'); ?>"><?php echo t('Software'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'info','language') ;?>" title="<?php echo t('PHP Info'); ?>"><?php echo t('PHP'); ?></a></li> </ul> </li> </ul> </li> <li class="dropdown"><a href="<?php $design->url(PH7_ADMIN_MOD,'account','index') ;?>" title="<?php echo t('My account'); ?>" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown"><i class="fa fa-cog"></i> <?php echo t('Account'); ?> <span class="caret"></span></a> <ul class="dropdown-menu" role="menu"> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'account','edit') ;?>" title="<?php echo t('Edit My Account'); ?>"><i class="fa fa-pencil fa-fw"></i> <?php echo t('Edit My Account'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'account','password') ;?>" title="<?php echo t('Change Password'); ?>"><i class="fa fa-key fa-fw"></i> <?php echo t('Change Password'); ?></a></li> <li><a href="<?php $design->url(PH7_ADMIN_MOD,'main','logout') ;?>" title="<?php echo t('Logout'); ?>"><i class="fa fa-sign-out"></i> <?php echo t('Logout'); ?></a></li> </ul> </li> <?php } ?> </ul> </div> </div></nav> <?php if($is_admin_auth AND $admin_logged_as_user ) { ?> <p class="center bold loginas"><a href="<?php $design->url(PH7_ADMIN_MOD, 'user', 'logoutuseras') ;?>"><?php echo t('Switch back to the Admin Panel'); ?></a></p> <?php } elseif($is_admin_auth AND $admin_logged_as_affiliate ) { ?> <p class="center bold loginas"><a href="<?php $design->url('affiliate', 'admin', 'logoutuseras') ;?>"><?php echo t('Switch back to the Admin Panel'); ?></a></p> <?php } ?> <?php unset( $oSession, $count_moderate_total_picture_album, $count_moderate_total_picture, $count_moderate_total_video_album, $count_moderate_total_video, $count_moderate_total_avatar, $count_moderate_total_background, $count_moderate_total_note ) ;?>