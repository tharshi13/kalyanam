<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-24 20:17:25
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/validate-site/views/base/tpl/main/validationbox.tpl
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
?><div id="box_block"> <h1 class="center"><?php echo t("It's time to Confirm your Site!"); ?></h1> <?php new ValidationForm ;?> <p> <?php echo t('Validate your site by entering your valid email address and confirm it through your emailbox.'); ?><br /> <?php echo t("This will officially validate your site. Although you probably don't need this if you test only pH7CMS on your local machine server, it is still highly recommended to do it for getting all security patches and new versions by email before everybody else."); ?> </p></div>