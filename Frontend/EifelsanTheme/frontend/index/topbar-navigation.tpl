<div class="top-bar">
	<div class="container block-group">

		{* Top bar navigation *}
		{block name="frontend_index_top_bar_nav"}
			<nav class="top-bar--navigation block" role="menubar">

				{action module=widgets controller=index action=shopMenu}

				{* Telefon Teaser *}
				{block name="frontend_index_top_bar_text" }
					<div class="top-bar--telefon-teaser">
						<svg version="1.1" class="topbar-svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
							 viewBox="0 0 65.5 62.7" style="enable-background:new 0 0 65.5 62.7;" xml:space="preserve">
						<g>
						<path style="fill:#FFFFFF;" d="M26.8,0.7c-14.3,0-26,11.7-26,26c0,8,3.6,15.1,9.2,19.9c0,0,0,0,0,0c4.5,3.8,10.4,6.1,16.8,6.1
							c14.3,0,26-11.7,26-26S41.2,0.7,26.8,0.7z M12.1,45.6c1.6-2.7,4.5-4.8,8-6c3.1-1,2.9-3.9,2.8-6.2c0-0.6-0.1-1.1-0.1-1.7
							c0-0.4-0.2-0.8-0.6-0.9c-0.4-0.2-0.8-0.1-1.1,0.2c-1.7,1.7-2.5,1.4-3.8,0.8c-0.7-0.3-1.5-0.6-2.5-0.7c1.9-3.6,2.2-6.2,2.6-9.2
							c0.1-1,0.2-2,0.4-3.1c0.4-2.5,2.1-8.2,9-8.2c6.9,0,8.6,5.7,9,8.2c0.2,1.1,0.3,2.1,0.4,3.1c0.3,3,0.7,5.6,2.6,9.2
							c-1,0-1.8,0.4-2.5,0.7c-1.3,0.6-2.1,0.9-3.8-0.8c-0.3-0.3-0.7-0.4-1.1-0.2c-0.4,0.2-0.6,0.5-0.6,0.9c0,0.6,0,1.2-0.1,1.7
							c-0.2,2.3-0.4,5.1,2.8,6.2c3.5,1.2,6.4,3.3,8,6c-4.1,3.2-9.2,5-14.7,5C21.3,50.7,16.2,48.8,12.1,45.6z M43.1,44.3
							c-1.9-2.9-5.1-5.3-8.9-6.6c-1.5-0.5-1.6-1.5-1.4-4c1.8,1,3.2,0.5,4.4,0c1.1-0.5,1.9-0.8,3.3-0.1c0.4,0.2,0.9,0.1,1.2-0.2
							s0.3-0.8,0.1-1.2c-2.7-4.3-3-7-3.4-10.4c-0.1-1-0.2-2.1-0.4-3.2c-0.4-2.3-2.3-9.8-11-9.8c-8.7,0-10.6,7.5-11,9.8
							c-0.2,1.2-0.3,2.2-0.4,3.2c-0.4,3.4-0.7,6.1-3.4,10.4c-0.2,0.4-0.2,0.9,0.1,1.2s0.8,0.4,1.2,0.2c1.4-0.7,2.2-0.3,3.3,0.1
							c1.2,0.5,2.5,1.1,4.4,0c0.2,2.5,0.1,3.5-1.4,4c-3.8,1.3-7,3.7-8.9,6.6c-4.8-4.4-7.8-10.7-7.8-17.7c0-13.2,10.8-24,24-24
							s24,10.8,24,24C50.8,33.6,47.8,39.9,43.1,44.3z"/>
						</svg>
						<span class="top-bar--info">0241 538 092 400 </span>
						<span class="top-bar--info-klein"> Mo-Fr 8 - 17 Uhr </span>
						
						<svg version="1.1" class="topbar-svg" id="Ebene_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
							 viewBox="0 0 259.5 189.3" style="enable-background:new 0 0 259.5 189.3;" xml:space="preserve">
						<path style="fill:#ffffff;" d="M230.8,1.3c-0.3-0.1-0.7-0.2-1.1-0.2h-0.9h-216h-1c-0.4,0-0.8,0.1-1.2,0.2C4.8,2.4,0.3,7.5,0.3,13.7
							v146.9c0,6.9,5.6,12.5,12.5,12.5h216c6.9,0,12.5-5.6,12.5-12.5V13.7C241.4,7.4,236.8,2.2,230.8,1.3z M219,8.9
							c-45.7,37.6-94.6,74.3-102.4,74.3c-7.8,0-52.9-36.7-94.7-74.3H219z M233.6,160.6c0,2.6-2.1,4.8-4.8,4.8h-216c-2.6,0-4.8-2.1-4.8-4.8
							V13.7c0-1.9,1.2-3.6,2.8-4.3C96.3,87,113.9,91,116.6,91c14.8,0,94.5-65.5,114-81.7c1.7,0.7,3,2.4,3,4.4V160.6z"/>
						</svg>
						<span class="top-bar--info-klein"><a style="color: white;" href="info@eifelsan.com">info@eifelsan.com</a></span>
					</div>
				{/block}

				{* Article Compare *}
				{block name='frontend_index_navigation_inline'}
					{if {config name="compareShow"}}
						<div class="navigation--entry entry--compare is--hidden" role="menuitem" aria-haspopup="true" data-drop-down-menu="true">
							{block name='frontend_index_navigation_compare'}
								{action module=widgets controller=compare}
							{/block}
						</div>
					{/if}
				{/block}

				{* Service / Support drop down *}
				{block name="frontend_index_checkout_actions_service_menu"}
					<div class="navigation--entry entry--service has--drop-down" role="menuitem" aria-haspopup="true" data-drop-down-menu="true">
						<i class="icon--service"></i> {s namespace='frontend/index/checkout_actions' name='IndexLinkService'}{/s}

						{* Include of the widget *}
						{block name="frontend_index_checkout_actions_service_menu_include"}
							{action module=widgets controller=index action=menu group=gLeft}
						{/block}
					</div>
				{/block}
			</nav>
		{/block}
	</div>
</div>
