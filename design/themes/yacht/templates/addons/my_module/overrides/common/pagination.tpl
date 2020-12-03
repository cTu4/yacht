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


            <div class="ty-pagination text-center margin_center ">

                <a data-ca-scroll=".cm-pagination-container" class="pagination-arrow  {if $pagination.prev_page}  cm-history {$ajax_class}{/if}" {if $pagination.prev_page}href="{"`$c_url`&page=`$pagination.prev_page`"|fn_url}" data-ca-page="{$pagination.prev_page}" data-ca-target-id="{$id}"{/if}>
                    <svg class="arrow-left align-baseline" width="6" height="10" viewBox="0 0 6 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M3.87189 5.06687L3.94454 4.99553L3.87189 4.92418L0.336584 1.45214C0.0211382 1.14234 0.0211382 0.642892 0.336584 0.333092C0.653036 0.0223036 1.16473 0.0223035 1.48118 0.333092L5.66342 4.44047C5.97886 4.75027 5.97886 5.24973 5.66342 5.55953L1.48118 9.66691C1.16489 9.97755 0.653535 9.9777 0.337047 9.66736C0.0287628 9.35613 0.0224648 8.84741 0.336584 8.53891L3.87189 5.06687Z" fill="black" stroke="#ED6863" stroke-width="0.2"/>
                    </svg>
                </a>

                <div class="ty-pagination__items">
                    {if $pagination.current_page != 1}
                        <a data-ca-scroll=".cm-pagination-container" href="{"`$c_url`&page=1`$extra_url`"|fn_url}" data-ca-page="1" class="t-18px font-weight-600 cm-history pg-item {$ajax_class}" data-ca-target-id="{$id}">1</a>
                    {else}
                        <span class="t-18px font-weight-600 ty-pagination__selected first">{$pagination.current_page}</span>
                    {/if}

                    {if $pagination.prev_page >= 3}
                        <svg width="10" height="8" viewBox="0 0 34 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="3.4" cy="4.0001" r="3.4" fill="black"/>
                            <circle cx="17.0001" cy="4.0001" r="3.4" fill="black"/>
                            <circle cx="30.6" cy="4.0001" r="3.4" fill="black"/>
                        </svg>
                    {/if}
                    {if $pagination.prev_page > 1 }
                        <a data-ca-scroll=".cm-pagination-container" href="{"`$c_url`&page=`$pagination.prev_page``$extra_url`"|fn_url}" data-ca-page="{$pagination.prev_page}" class="t-18px font-weight-600 cm-history pg-item {$ajax_class}" data-ca-target-id="{$id}">{$pagination.prev_page}</a>
                    {/if}
                    {if $pagination.current_page > 1 && $pagination.current_page != $pagination.total_pages}
                        <span class="t-18px font-weight-600 ty-pagination__selected">{$pagination.current_page}</span>
                    {/if}

                    {if $pagination.next_page !=0 && $pagination.next_page <= $pagination.total_pages-1}
                        <a data-ca-scroll=".cm-pagination-container" href="{"`$c_url`&page=`$pagination.next_page``$extra_url`"|fn_url}" data-ca-page="{$pagination.next_page}" class="t-18px font-weight-600 cm-history pg-item {$ajax_class}" data-ca-target-id="{$id}">{$pagination.next_page}</a>
                    {/if}

                    {if $pagination.next_page!=0 && $pagination.next_page <= $pagination.total_pages-2}
                        <svg width="10" height="8" viewBox="0 0 34 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="3.4" cy="4.0001" r="3.4" fill="black"/>
                            <circle cx="17.0001" cy="4.0001" r="3.4" fill="black"/>
                            <circle cx="30.6" cy="4.0001" r="3.4" fill="black"/>
                        </svg>
                    {/if}

                    {if $pagination.current_page != $pagination.total_pages }
                        <a data-ca-scroll=".cm-pagination-container" href="{"`$c_url`&page=`$pagination.total_pages``$extra_url`"|fn_url}" data-ca-page="{$pagination.total_pages}" class="t-18px font-weight-600 cm-history pg-item {$ajax_class}" data-ca-target-id="{$id}">{$pagination.total_pages}</a>
                    {else}
                        <span class="t-18px font-weight-600 ty-pagination__selected last">{$pagination.current_page}</span>
                    {/if}

                </div>

                <a data-ca-scroll=".cm-pagination-container" class="pagination-arrow {if $pagination.next_page} cm-history {$ajax_class}{/if} " {if $pagination.next_page}href="{"`$c_url`&page=`$pagination.next_page``$extra_url`"|fn_url}" data-ca-page="{$pagination.next_page}" data-ca-target-id="{$id}"{/if}>
                    <svg class="t-18px font-weight-600 align-baseline" width="6" height="10" viewBox="0 0 6 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M3.87189 5.06687L3.94454 4.99553L3.87189 4.92418L0.336584 1.45214C0.0211382 1.14234 0.0211382 0.642892 0.336584 0.333092C0.653036 0.0223036 1.16473 0.0223035 1.48118 0.333092L5.66342 4.44047C5.97886 4.75027 5.97886 5.24973 5.66342 5.55953L1.48118 9.66691C1.16489 9.97755 0.653535 9.9777 0.337047 9.66736C0.0287628 9.35613 0.0224648 8.84741 0.336584 8.53891L3.87189 5.06687Z" fill="black" stroke="#ED6863" stroke-width="0.2"/>
                    </svg>
                </a>


            </div>

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
