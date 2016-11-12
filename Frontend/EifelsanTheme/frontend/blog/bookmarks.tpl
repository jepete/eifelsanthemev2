{extends file="parent:frontend/blog/bookmarks.tpl"}
{if !$sArticle.sBookmarks}
	{block name='frontend_blog_bookmarks_bookmarks'}
		<div class="blog--bookmarks block">
			<div class="blog--bookmarks-icons">

				{* Twitter *}
				{block name='frontend_blog_bookmarks_twitter'}
				{/block}

				{* Facebook *}
				{block name='frontend_blog_bookmarks_facebook'}
					<a href="http://www.facebook.com/share.php?v=4&amp;src=bm&amp;u={url controller=blog action=detail sCategory=$sArticle.categoryId blogArticle=$sArticle.id}&amp;t={$sArticle.title|escape:'url'}"
						title="{"{s name='BookmarkFacebookShare'}{/s}"|escape}"
						class="blog--bookmark icon--facebook2"
						rel="nofollow"
						target="_blank">
					</a>
				{/block}

				{* Del.icio.us *}
				{block name='frontend_blog_bookmarks_delicious'}
				{/block}

				{* Digg *}
				{block name='frontend_blog_bookmarks_digg'}
				{/block}

				{block name='frontend_blog_bookmarks_mail'}
					<a href="mailto:?subject={$sArticle.title|escape:'url'}&amp;body={url controller=blog action=detail sCategory=$sArticle.categoryId blogArticle=$sArticle.id}&amp;title={$sArticle.title|escape:'url'}"
					   title="{$sArticle.title|escape:'url'}"
					   class="blog--bookmark icon--mail"
					   rel="nofollow"
					   target="_blank">
					</a>
				{/block}
			</div>
		</div>
	{/block}
{/if}