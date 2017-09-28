<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-19 03:19:06
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/admin123/views/base/tpl/setting/license.tpl
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
?><div class="col-md-8"> <h1 class="pH1"><?php echo t('We have eyes on you!'); ?></h1> <h2 class="underline"> <a href="<?php echo self::SOFTWARE_LICENSE_KEY_URL?>" title="<?php echo t('Buy a License Key'); ?>"> <?php echo t('Unlock all premium features and use your site for commercial use'); ?> </a> </h2> <?php LicenseForm::display() ;?> <p class="thumb"> <img src="<?php echo $this->registry->url_themes_module . PH7_TPL_MOD_NAME . PH7_SH . PH7_IMG?>staring-eyes.jpg" alt="Staring Eyes" title="<?php echo t('We have Eyes on You'); ?>" /> </p></div>