<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-24 22:48:36
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/hotornot/views/base/tpl/main/rating.tpl
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
?><div class="center"> <h2 class="pink1"><?php echo $desc_for_woman; ?></h2> <h2 class="pink2"><?php echo $desc_for_man; ?></h2> <div class="s_bMarg"></div> <?php if(empty($error)) { ?> <?php $avatarDesign->get($data->username, $data->firstName, $data->sex, 400) ;?> <div class="hon_click"><?php RatingDesignCore::voting($data->profileId,'Members','center') ;?></div> <p class="italic s_tMarg"><?php echo t('If the photo does not match your sexual preference please be respectful and press the SKIP button below'); ?></p> <p><a class="bold btn btn-primary" rel="nofollow" href="<?php $design->url('hotornot', 'main', 'rating') ;?>"><?php echo t('SKIP'); ?></a></p> <br /><hr /><br /> <p class="center"><?php $design->like($data->username, $data->firstName, $data->sex, (new UserCore)->getProfileLink($data->username)) ;?> | <?php $design->report($data->profileId, $data->username, $data->firstName, $data->sex) ;?></p> <?php $design->likeApi() ;?> <?php } else { ?> <p class="bold"><?php echo $error; ?></p> <?php } ?></div>