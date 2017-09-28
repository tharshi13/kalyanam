<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-26 04:10:03
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/field/views/base/tpl/field/all.tpl
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
?><div class="middle"> <?php if(!empty($fields)) { ?> <table class="table"> <thead> <tr> <th><?php echo t('Name'); ?></th> <th><?php echo t('Edit'); ?></th> <th><?php echo t('Delete'); ?></th> </tr> </thead> <tbody> <?php foreach($fields as $field) { ?> <?php $unmodifiable = Field::unmodifiable($field) ;?> <tr> <td><?php echo $field ;?></td> <td> <?php if(!$unmodifiable) { ?> <a href="<?php $design->url('field','field','edit',"$mod,$field") ;?>"><?php echo t('Edit'); ?></a> <?php } else { ?> <span class="gray"><?php echo t('Not editable'); ?></span> <?php } ?> </td> <td> <?php if(!$unmodifiable) { ?> <?php LinkCoreForm::display(t('Delete'), 'field', 'field', 'delete', array('mod'=>$mod, 'name'=>$field)) ;?> <?php } else { ?> <span class="gray"><?php echo t('Not deletable'); ?></span> <?php } ?> </td> </tr> <?php } ?> </tbody> </table> <script>$('table tr td input[type=submit]').click(function() { return confirm('<?php echo t('Warning! This action will remove a User Field! (Irreversible Action)'); ?>'); });</script> <?php } else { ?> <p class="bold"><?php echo t('To see the users fields, you must add at least one user.'); ?></p> <?php } ?> <p class="center"><a class="btn btn-default btn-md" href="<?php $design->url('field','field','add',$mod) ;?>"><?php echo t('Add a Field'); ?></a></p></div>