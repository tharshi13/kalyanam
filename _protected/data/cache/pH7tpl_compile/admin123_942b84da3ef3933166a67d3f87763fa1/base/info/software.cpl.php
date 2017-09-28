<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-26 16:51:53
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/admin123/views/base/tpl/info/software.tpl
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
?><div class="center"> <h2 class="underline"><?php echo t('Software Information'); ?></h2> <div class="italic"> <p><?php echo t('Name: %0%', '<a href="%software_website%">%software_name%</a>'); ?></p> <p>Github: <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS">https://github.com/pH7Software/pH7-Social-Dating-CMS</a></p> <p><?php echo t('Support Site: %0%', '<a href="%software_website%/order/">%software_name%</a>'); ?></p> </div> <div class="s_bMarg"></div> <h2 class="underline"><?php echo t('Software Version'); ?></h2> <div class="italic"> <p><?php echo t('Name: %software_version_name%'); ?></p> <p><?php echo t('Version: %software_version%'); ?></p> <p><?php echo t('Build: %software_build%'); ?></p> <p><?php echo t('Release Date: %0%', $release_date); ?></p> </div> <div class="s_bMarg"></div> <h2 class="underline"><?php echo t('Recommended Hosting for %software_name%'); ?></h2> <p><a href="http://ph7cms.com/web/tmdhost"><img src="http://ph7cms.com/web/tmdhostimg" width="250" height="250" alt="<?php echo t('TMD Hosting: Recommended for %software_name%'); ?>" title="<?php echo t('TMD Hosting: Recommended for %software_name%'); ?>"></a> &nbsp; <a href="http://ph7cms.com/web/hostforweb"><img src="http://ph7cms.com/web/hostforwebimg" width="250" height="250" alt="<?php echo t('HostForWeb: Recommended for %software_name%'); ?>" title="<?php echo t('HostForWeb: Recommended for %software_name%'); ?>"></a></p> <p><a href="http://ph7cms.com/web/faction"><img src="http://ph7cms.com/web/factionimg" width="250" height="250" alt="<?php echo t('WebFaction: Recommended for %software_name%'); ?>" title="<?php echo t('WebFaction: Recommended for %software_name%'); ?>"></a> &nbsp; <a href="http://ph7cms.com/web/rackhost"><img src="http://ph7cms.com/web/rackhostimg" width="250" height="250" alt="<?php echo t('RackSpace: Recommended for %software_name%'); ?>" title="<?php echo t('RackSpace: Recommended for %software_name%'); ?>"></a></p></div>