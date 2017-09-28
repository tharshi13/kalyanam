<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-26 16:03:01
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/affiliate/views/base/tpl/home/index.tpl
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
?><?php if(!AffiliateCore::auth()) { ?> <div class="right col-md-6"> <h1 class="pink2 italic underline"><?php echo t('Affiliate Platform with %site_name%'); ?></h1> <?php JoinForm::step1() ;?> </div> <div class="left col-md-6"> <h1 class="pink2 italic underline"><?php echo t('Make Money with our Affiliate Program!'); ?></h1> <h2>Our affiliate program is one of the highest payout rate findable!</h2> <div id="make_money"></div> <?php $this->display('login.inc.tpl'); ?> </div><?php } else { ?> <div class="center"> <h2 class="pink2 italic"><?php echo t('Welcome to our Affiliate Program!'); ?></h2> </div><?php } ?>