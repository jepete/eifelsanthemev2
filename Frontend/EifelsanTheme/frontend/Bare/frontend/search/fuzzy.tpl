{extends file='frontend/index/index.tpl'}

{* Breadcrumb *}
{block name='frontend_index_start' prepend}
	{$sBreadcrumb = [['name'=>"{s name="SearchResultsFor"}{/s}"]]}
{/block}

{* Main content *}
{block name='frontend_index_content'}
	<div class="content search--content">

		{block name='frontend_search_info_messages'}
			{if !$sSearchResults.sArticles}
				{if $sRequests.sSearchOrginal}

					{* No results found *}
					{block name='frontend_search_message_no_results'}
						{include file="frontend/_includes/messages.tpl" type="warning" content="{s name='SearchFuzzyHeadlineNoResult'}{/s}"}
					{/block}
				{else}

					{* Given search term is too short *}
					{block name='frontend_search_message_shortterm'}
						{include file="frontend/_includes/messages.tpl" type="error" content="{s name='SearchFuzzyInfoShortTerm'}{/s}"}
					{/block}
				{/if}
			{/if}
		{/block}

		{if $sSearchResults.sArticles}

			{* Listing varibles *}
			{block name="frontend_search_variables"}
				{$sArticles = $sSearchResults.sArticles}
				{$sNumberArticles = $sSearchResults.sArticlesCount}
				{$sTemplate = "listing"}
				{$sBoxMode = "table"}
				{$showListing = true}
				{$pages = ceil($sNumberArticles / $criteria->getLimit())}
				{$countCtrlUrl = "{url module="widgets" controller="listing" action="listingCount" params=$ajaxCountUrlParams fullPath}"}
			{/block}

			{block name='frontend_search_headline'}
				<h1 class="search--headline">
					{s name='SearchHeadline'}{/s}
				</h1>
			{/block}

			{block name='frontend_search_category_filter'}
                {foreach $facets as $facet}
                    {if $facet|is_a: 'Shopware\Bundle\SearchBundle\FacetResult\TreeFacetResult' && $facet->getFacetName() === 'category'}
                        {include file="frontend/search/category-filter.tpl" facet=$facet}
                    {/if}
                {/foreach}
			{/block}

			{block name="frontend_search_results"}
				<div class="search--results">
					{include file='frontend/listing/listing.tpl'}
				</div>
			{/block}
		{/if}
	</div>
{/block}