<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-26 05:37:06
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/report/views/base/tpl/admin/index.tpl
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
?><div class="center"><?php if(empty($reports)) { ?> <p class="bold"><?php echo t('No Reports Found'); ?></p><?php } else { ?> <form method="post" action="<?php $design->url('report','admin','inbox') ;?>"> <?php $designSecurity->inputToken('report_action') ;?> <ul> <?php foreach($reports as $report) { ?> <li id="report_<?php echo $report->reportId ;?>"> <input type="checkbox" name="action[]" value="<?php echo $report->reportId ;?>" /> | <a href="<?php echo $design->url('report', 'admin', 'report', $report->reportId) ;?>"><?php echo t('View Report'); ?></a> | <?php echo t('Reporter:'); ?> <?php $avatarDesign->get($oUserModel->getUsername($report->reporterId), $oUserModel->getFirstName($report->reporterId) ,null, 32) ;?> | <?php echo t('Spammer:'); ?> <?php $avatarDesign->get($oUserModel->getUsername($report->spammerId), $oUserModel->getFirstName($report->spammerId) ,null, 32) ;?> <a class="btn btn-default btn-md" href="javascript:void(0)" onclick="report('delete', <?php echo $report->reportId;?>,'<?php echo $csrf_token; ?>')"><?php echo t('Delete'); ?></a> </li> <?php } ?> </ul> <p> <input type="checkbox" name="all_action" /> <button class="red btn btn-default btn-md" type="submit" onclick="return checkChecked(false)" formaction="<?php $design->url('report','admin','deleteall') ;?>" ><?php echo t('Delete'); ?> </button> </p> </form> <?php $this->display('page_nav.inc.tpl', PH7_PATH_TPL . PH7_TPL_NAME . PH7_DS); } ?></div>