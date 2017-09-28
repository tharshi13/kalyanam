<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-26 15:52:55
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/xml/views/base/tpl/sitemap/index.tpl
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
?><div class="center"><?php if(sizeof($urls) > 0) { ?> <ul> <?php foreach($urls as $key => $value) { ?> <li class="underline"><a href="<?php echo $key; ?>"><?php echo $value; ?></a></li> <?php } ?> </ul><?php } else { ?> <p><?php echo t('No links found at %site_name%'); ?></p><?php } ?></div>