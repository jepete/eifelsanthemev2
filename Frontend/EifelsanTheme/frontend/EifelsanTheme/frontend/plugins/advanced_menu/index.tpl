{block name="frontend_index_navigation_categories_top_include" append}
	{function name="categories_top" level=0}

		{$columnIndex = 0}
		{$menuSizePercentage = 100 - (25 * $columnAmount * intval($hasTeaser))}
		{$columnCount = 5 - ($columnAmount * intval($hasTeaser))}

		<ul class="menu--list menu--level-{$level} columns--{$columnCount}"{if $level === 0} style="width: {$menuSizePercentage}%;"{/if}>
			{block name="frontend_plugins_advanced_menu_list"}
				{foreach $categories as $category}
					{if $category.hidetop}
						{continue}
					{/if}

					<li class="menu--list-item item--level-{$level}"{if $level === 0} style="width: 100%"{/if}>
						{block name="frontend_plugins_advanced_menu_list_item"}
							<a href="{$category.link}" class="menu--list-item-link" title="{$category.name|escape}">{$category.name}</a>

							{if $category.sub}
								{call name=categories_top categories=$category.sub level=$level+1}
							{/if}
						{/block}
					</li>
				{/foreach}
			{/block}
		</ul>
	{/function}

	<div class="advanced-menu" data-advanced-menu="true">
		{block name="frontend_plugins_advanced_menu"}
			{foreach $sAdvancedMenu as $mainCategory}
				{if !$mainCategory.active || $mainCategory.hidetop}
					{continue}
				{/if}

				{$hasCategories = $mainCategory.activeCategories > 0  && $columnAmount < 4}
				{$hasTeaser = (!empty($mainCategory.media) || !empty($mainCategory.cmsHeadline) || !empty($mainCategory.cmsText)) && $columnAmount > 0}

				<div class="menu--container">
					{block name="frontend_plugins_advanced_menu_main_container"}

						{if $hasCategories || $hasTeaser}
							<div class="content--wrapper{if $hasCategories} has--content{/if}{if $hasTeaser} has--teaser{/if}">
								{if $hasCategories}
									{block name="frontend_plugins_advanced_menu_sub_categories"}
										{call name="categories_top" categories=$mainCategory.sub}
									{/block}
								{/if}

								{*if $hasTeaser}
									{if $hasCategories}
										<div class="menu--delimiter" style="right: {$columnAmount * 25}%;"></div>
									{/if}
									<!--<div class="menu--teaser"{if $hasCategories} style="width: {$columnAmount * 25}%;"{else} style="width: 100%;"{/if}>
										{if !empty($mainCategory.media)}
											<a href="{$mainCategory.link}" title="{s name="toCategoryBtn" namespace="frontend/plugins/advanced_menu/advanced_menu"}{/s}{$mainCategory.name|escape:'html'}" class="teaser--image" style="background-image: url({link file={$mainCategory.media.path}});"></a>
										{/if}

										{if !empty($mainCategory.cmsHeadline)}
											<div class="teaser--headline">{$mainCategory.cmsHeadline}</div>
										{/if}

										{if !empty($mainCategory.cmsText)}
											<div class="teaser--text">
												{$mainCategory.cmsText|strip_tags|truncate:250:"..."}
												<a class="teaser--text-link" href="{$mainCategory.link}" title="{s name="learnMoreLink" namespace="frontend/plugins/advanced_menu/advanced_menu"}mehr erfahren{/s}">
													{s name="learnMoreLink" namespace="frontend/plugins/advanced_menu/advanced_menu"}mehr erfahren{/s}
												</a>
											</div>
										{/if}
									</div>-->
								{/if*}
							</div>
						{/if}
					{/block}
				</div>
			{/foreach}
		{/block}
	</div>
{/block}