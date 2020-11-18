{assign var="id" value=$id|default:"pagination_contents"}
{assign var="pagination" value=$search|fn_generate_pagination}

{if $smarty.capture.pagination_open != "Y"}
<div class="ty-pagination-container cm-pagination-container" id="{$id}">

    {if $save_current_page}
        <input type="hidden" name="page" value="{$search.page|default:$smarty.request.page}" />
    {/if}

    {if $save_current_url}
        <input type="hidden" name="redirect_url" value="{$config.current_url}" />
    {/if}
    {/if}

    {if $pagination.total_pages > 1}
        {if $settings.Appearance.top_pagination == "Y" && $smarty.capture.pagination_open != "Y" || $smarty.capture.pagination_open == "Y"}
            {assign var="c_url" value=$config.current_url|fn_query_remove:"page"}

            {if !$config.tweaks.disable_dhtml || $force_ajax}
                {assign var="ajax_class" value="cm-ajax"}
            {/if}

            {if $smarty.capture.pagination_open == "Y"}
                <div class="ty-pagination__bottom">
            {/if}
            <div class="ty-pagination">
                {if $pagination.prev_range}
                    <a data-ca-scroll=".cm-pagination-container" href="{"`$c_url`&page=`$pagination.prev_range``$extra_url`"|fn_url}" data-ca-page="{$pagination.prev_range}" class="cm-history hidden-phone ty-pagination__item ty-pagination__range {$ajax_class}" data-ca-target-id="{$id}">{$pagination.prev_range_from} - {$pagination.prev_range_to}</a>
                {/if}
                <a data-ca-scroll=".cm-pagination-container" class="ty-pagination__item ty-pagination__btn {if $pagination.prev_page}ty-pagination__prev cm-history {$ajax_class}{/if}" {if $pagination.prev_page}href="{"`$c_url`&page=`$pagination.prev_page`"|fn_url}" data-ca-page="{$pagination.prev_page}" data-ca-target-id="{$id}"{/if}><i class="ty-pagination__text-arrow"></i>&nbsp;<span class="ty-pagination__text">{__("prev_page")}</span></a>

                <div class="ty-pagination__items">
                    {foreach from=$pagination.navi_pages item="pg"}
                        {if $pg != $pagination.current_page}
                            <a data-ca-scroll=".cm-pagination-container" href="{"`$c_url`&page=`$pg``$extra_url`"|fn_url}" data-ca-page="{$pg}" class="cm-history ty-pagination__item {$ajax_class}" data-ca-target-id="{$id}">{$pg}</a>
                        {else}
                            <span class="ty-pagination__selected">{$pg}</span>
                        {/if}
                    {/foreach}
                </div>

                <a data-ca-scroll=".cm-pagination-container" class="ty-pagination__item ty-pagination__btn {if $pagination.next_page}ty-pagination__next cm-history {$ajax_class}{/if} ty-pagination__right-arrow" {if $pagination.next_page}href="{"`$c_url`&page=`$pagination.next_page``$extra_url`"|fn_url}" data-ca-page="{$pagination.next_page}" data-ca-target-id="{$id}"{/if}>
                    <svg width="6" height="10" viewBox="0 0 6 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M3.87189 5.06687L3.94454 4.99553L3.87189 4.92418L0.336584 1.45214C0.0211382 1.14234 0.0211382 0.642892 0.336584 0.333092C0.653036 0.0223036 1.16473 0.0223035 1.48118 0.333092L5.66342 4.44047C5.97886 4.75027 5.97886 5.24973 5.66342 5.55953L1.48118 9.66691C1.16489 9.97755 0.653535 9.9777 0.337047 9.66736C0.0287628 9.35613 0.0224648 8.84741 0.336584 8.53891L3.87189 5.06687Z" fill="black" stroke="#ED6863" stroke-width="0.2"/>
                    </svg>
                </a>

                {if $pagination.next_range}
                    <a data-ca-scroll=".cm-pagination-container" href="{"`$c_url`&page=`$pagination.next_range``$extra_url`"|fn_url}" data-ca-page="{$pagination.next_range}" class="cm-history ty-pagination__item hidden-phone ty-pagination__range {$ajax_class}" data-ca-target-id="{$id}">{$pagination.next_range_from} - {$pagination.next_range_to}</a>
                {/if}
            </div>
            {if $smarty.capture.pagination_open == "Y"}
                </div>
            {/if}
        {else}
            <div><a data-ca-scroll=".cm-pagination-container" href="" data-ca-page="{$pg}" data-ca-target-id="{$id}" class="hidden"></a></div>
        {/if}
    {/if}

    {if $smarty.capture.pagination_open == "Y"}
    <!--{$id}--></div>
    {capture name="pagination_open"}N{/capture}
{elseif $smarty.capture.pagination_open != "Y"}
    {capture name="pagination_open"}Y{/capture}
{/if}
