<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-19 03:46:12
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/picture/views/base/tpl/main/album.tpl
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
?><?php if(empty($error)) { ?> <?php foreach($album as $a) { ?> <?php Framework\Analytics\Statistic::setView($a->albumId, 'AlbumsPictures') ;?> <div class="m_photo center"> <?php $absolute_url = Framework\Mvc\Router\Uri::get('picture','main','photo',"$a->username,$a->albumId,$a->title,$a->pictureId") ;?> <h4><a href="<?php echo $absolute_url; ?>"><?php echo substr(Framework\Security\Ban\Ban::filterWord($a->title),0,25) ;?></a></h4> <p> <a href="<?php echo PH7_URL_DATA_SYS_MOD?>picture/img/<?php echo $a->username ;?>/<?php echo $a->albumId ;?>/<?php echo str_replace('original', 1000, $a->file) ;?>" title="<?php echo $a->title ;?>" data-popup="slideshow"> <img src="<?php echo PH7_URL_DATA_SYS_MOD?>picture/img/<?php echo $a->username ;?>/<?php echo $a->albumId ;?>/<?php echo str_replace('original', '400', $a->file) ;?>" alt="<?php echo $a->title ;?>" title="<?php echo $a->title ;?>" /> </a> </p> <?php if($is_user_auth AND $member_id == $a->profileId) { ?> <div class="small"> <a href="<?php $design->url('picture', 'main', 'editphoto', "$a->albumId,$a->title,$a->pictureId") ;?>"><?php echo t('Edit'); ?></a> | <?php LinkCoreForm::display(t('Delete'), 'picture', 'main', 'deletephoto', array('album_title'=>$a->name, 'album_id'=>$a->albumId, 'picture_id'=>$a->pictureId, 'picture_link'=>$a->file)) ;?> </div> <?php } ?> <p> <?php RatingDesignCore::voting($a->pictureId,'Pictures') ;?> <?php $design->like($a->username,$a->firstName,$a->sex,$absolute_url) ;?> | <?php $design->report($a->profileId, $a->username, $a->firstName, $a->sex) ;?> </p> </div> <?php } ?> <?php $this->display('page_nav.inc.tpl', PH7_PATH_TPL . PH7_TPL_NAME . PH7_DS); ?> <?php if($is_user_auth AND $member_id == $a->profileId) { ?> <p class="center bottom"> <a class="btn btn-default btn-md" href="<?php $design->url('picture', 'main', 'addphoto', $a->albumId) ;?>"><?php echo t('Add new pictures'); ?></a> </p> <?php } } else { ?> <p><?php echo $error; ?></p><?php } ?>