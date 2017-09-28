<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-25 14:22:09
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/game/views/base/tpl/main/game.tpl
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
?><div class="center"> <?php if(empty($error)) { ?> <h3><?php echo $game->name ;?></h3> <?php $design->staticFiles('js', PH7_STATIC . PH7_JS, 'flash.js') ;?> <script>pH7DisplayFlash("<?php echo PH7_URL_DATA_SYS_MOD?>game/file/<?php echo $game->file ;?>", '100%', 550);</script> <p><?php echo $game->description ;?></p> <p> <a class="btn btn-default btn-sm" href="<?php $design->url('game','main','download',$game->gameId) ;?>"><?php echo t('Download this game'); ?></a> </p> <p class="italic"> <?php echo t('%0% was played %1% and download %2% time(s).', '<strong>'.$game->title.'</strong>', '<strong>'.$views.'</strong>', '<strong>'.$downloads.'</strong>'); ?> </p> <?php RatingDesignCore::voting($game->gameId,'Games','center') ;?> <?php ShareUrlCoreForm::display(Framework\Mvc\Router\Uri::get('game','main','game',"$game->title,$game->gameId")) ;?> <?php ShareEmbedCoreForm::display(PH7_URL_DATA_SYS_MOD . 'game/file/' . $game->file) ;?> <?php $design->likeApi() ;?> <?php if(AdminCore::auth()) { ?> <div> <a class="btn btn-default btn-sm" href="<?php $design->url('game','admin','edit',"$game->title,$game->gameId") ;?>"><?php echo t('Edit this Game'); ?></a> | <div class="btn btn-default btn-sm inline"> <?php LinkCoreForm::display(t('Delete this Game'), 'game', 'admin', 'delete', array('id'=>$game->gameId, 'thumb'=>$game->thumb, 'file'=>$game->file)) ;?> </div> </div> <?php } ?> <?php CommentDesignCore::link($game->gameId, 'Game') ;?> <?php } else { ?> <p><?php echo $error; ?></p> <?php } ?></div>