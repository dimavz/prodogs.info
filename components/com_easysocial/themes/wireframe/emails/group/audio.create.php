<?php
/**
* @package      EasySocial
* @copyright    Copyright (C) 2010 - 2017 Stack Ideas Sdn Bhd. All rights reserved.
* @license      GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');
?>
<tr>
	<td style="text-align: center;padding: 40px 10px 0;">
		<div style="margin-bottom:15px;">
			<div style="font-family:Arial;font-size:32px;font-weight:normal;color:#333;display:block; margin: 4px 0">
				<?php echo JText::_('COM_ES_AUDIO_EMAILS_NEW_AUDIO'); ?>
			</div>
		</div>
	</td>
</tr>

<tr>
	<td style="text-align: center;font-size:12px;color:#888">

		<div style="margin:30px auto;text-align:center;display:block">
			<img src="<?php echo $divider;?>" alt="<?php echo JText::_('divider');?>" />
		</div>

		<p style="text-align:center;padding: 0 30px;">
			<?php echo JText::sprintf('COM_ES_AUDIO_EMAILS_GROUP_NEW_AUDIO_CONTENT', '<a href="' . $userLink . '">' . $userName . '</a>', '<a href="' . $groupLink . '">' . $groupName . '</a>');?>
		</p>

		<table align="center" style="margin: 20px auto 0;padding: 0 50px;" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top">
					<table style="margin: 0 auto 10px 20px; text-align:left;" align="">
						<tr>
							<td style="text-align: center;background-color:#f8f9fb;padding: 5px;">
								<h2>
									<a href="<?php echo $audioLink;?>" style="text-decoration: none;color:#798796;"><?php echo $audioTitle;?></a>
								</h2>
								<?php echo JText::sprintf('COM_ES_AUDIO_EMAILS_NEW_AUDIO_BY', '<a href="' . $userLink . '" style="text-decoration: none;color:#798796;">' . $userName . '</a>'); ?>
							</td>
						</tr>
						<tr>
							<td>
								<p style="font-size: 11px;line-height: 18px;"><?php echo $audioDescription; ?></p>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;">
								<a href="<?php echo $audioLink;?>" style="
								display:inline-block;
								text-decoration:none;
								font-weight:bold;
								margin-top: 20px;
								border-top: 10px solid #83B3DD;
								border-bottom: 10px solid #83B3DD;
								border-left: 25px solid #83B3DD;
								border-right: 25px solid #83B3DD;
								line-height:20px;
								color:#fff;font-size: 12px;
								background-color: #83B3DD;
								text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
								border-style: solid;
								box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
								border-radius:2px; -moz-border-radius:2px; -webkit-border-radius:2px;
								">
									<?php echo JText::_('COM_ES_AUDIO_EMAILS_LISTEN_AUDIO_BUTTON');?> &rarr;
								</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>

	</td>
</tr>
