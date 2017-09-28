<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2017-09-26 15:55:06
Compiled file from: /home/mathdecr/public_html/matrimonial/_protected/app/system/modules/page/views/base/tpl/main/faq.tpl
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
?><div class="center divShow"> <div class="faq"><a href="#divShow_1"><?php echo t('I can\'t login, or I forgot my username or password.'); ?></a></div> <div class="hidden" id="divShow_1"> <?php echo t('If you can\'t login, check to make sure that your "caps lock" key is off. Your username and password are CaSe SeNsItIvE. If you still cannot login, you can request to'); ?> <a href="<?php $design->url('lost-password','main','forgot','user') ;?>"><?php echo t('reset your password'); ?></a> <?php echo t('or'); ?> <a href="<?php $design->url('contact','contact','index') ;?>"><?php echo t('contact us'); ?></a>. </div> <div class="faq"><a href="#divShow_2"><?php echo t('How can I update my profile?'); ?></a></div> <div class="hidden" id="divShow_2"> <?php echo t('To update your profile, you must go into your profile and settings in your profile editing. You can move through the different parts of your profile by clicking the tabs at the top of the page.'); ?> </div> <div class="faq"><a href="#divShow_3"><?php echo t('How can I delete my account?'); ?></a></div> <div class="hidden" id="divShow_3"> <?php echo t('If you are aboslutely sure that you want to delete your account, you can do so in your privacy settings. Please note that your account will be permanently deleted and irrecoverable!'); ?> </div> <div class="faq"><a href="#divShow_4"><?php echo t('How can I update my email address?'); ?></a></div> <div class="hidden" id="divShow_4"> <?php echo t('For safety and to prevent spam, you can not change your email address.'); ?> </div> <div class="faq"><a href="#divShow_5"><?php echo t('How can I deal with someone that is bothering me?'); ?></a></div> <div class="hidden" id="divShow_5"> <?php echo t('If someone is bothering or harassing you, blocking them is usually the best solution. Please report it via our contact form with the url of the profile of the person and the explanation of what the person has done wrong.'); ?> </div> <div class="faq"><a href="#divShow_6"><?php echo t('By who this Web App has been created?'); ?></a></div> <div class="hidden" id="divShow_6"> This whole social dating website has been developed by <a href="https://github.com/pH-7" title="The author of pH7CMS software">Pierre-Henry Soria</a>. Now he is a Senior Software Engineer and continues to update and develop his "<abbr title='pH7CMS; Formerly known as "pH7 Social Dating CMS"'>baby</abbr>" during his free time. <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS" title="pH7CMS is a Free and Open Source Social Dating App/Site Builder">pH7CMS</a>, his first "big" project he made when he was still a student. </div></div>