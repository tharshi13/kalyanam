<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-24 19:49:49
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/mail/views/base/tpl/main/msg.inc.tpl
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
?><?php if(empty($msg)) { ?> <p class="center bold"><?php echo t('Sorry, this message was not found.'); ?></p><?php } else { ?> <?php $usernameSender = (empty($msg->username)) ? PH7_ADMIN_USERNAME : escape($msg->username) ;?> <?php $firstNameSender = (empty($msg->firstName)) ? PH7_ADMIN_USERNAME : escape($msg->firstName) ;?> <?php $subject = escape(Framework\Security\Ban\Ban::filterWord($msg->title)) ;?> <?php $message = Framework\Parse\Emoticon::init(Framework\Security\Ban\Ban::filterWord($msg->message)) ;?> <?php $is_outbox = ($msg->sender == $member_id) ;?> <?php $is_trash = (($msg->sender == $member_id && $msg->trash == 'sender') || ($msg->recipient == $member_id && $msg->trash == 'recipient') && !$is_outbox) ;?> <?php $is_delete = ($is_outbox || $is_trash) ;?> <?php $set_to = ($is_delete) ? 'setdelete' : 'settrash' ;?> <?php $label_txt = ($is_delete) ? t('Delete') : t('Trash') ;?> <div class="center"> <dl> <dt><?php echo t('Author:'); ?></dt> <dd><?php $avatarDesign->get($usernameSender, $firstNameSender, null, 32) ;?></dd> <dt><?php echo t('Subject:'); ?></dt> <dd><?php echo $subject; ?></dd> <dt><?php echo t('Message:'); ?></dt> <dd><?php echo $message; ?></dd> <dt><?php echo t('When:'); ?></dt> <dd><?php echo Framework\Date\Various::textTimeStamp($msg->sendDate) ;?></dd> </dl> <div><a href="<?php $design->url('mail','main','compose',"$usernameSender,$subject") ;?>"><?php echo t('Reply'); ?></a> | <?php LinkCoreForm::display($label_txt, 'mail', 'main', $set_to, array('id'=>$msg->messageId)) ;?> <?php if($is_trash) { ?> | <?php LinkCoreForm::display(t('Move to Inbox'), 'mail', 'main', 'setrestor', array('id'=>$msg->messageId)) ;?><?php } ?></div> </div><?php } ?>