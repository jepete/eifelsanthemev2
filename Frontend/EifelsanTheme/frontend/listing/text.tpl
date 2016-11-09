{extends file="parent:frontend/listing/text.tpl"}
{namespace name="frontend/listing/listing"}

{* Long description *}
{block name="frontend_listing_text_content_long"}
	<div class="teaser--text-long">
		{$sCategoryContent.cmstext}
	</div>
{/block}