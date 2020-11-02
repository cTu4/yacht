{assign var="language_text" value=$text|default:__("select_descr_lang")}

{if $style == "graphic"}
    {if $text}<div class="ty-select-block__txt hidden-phone hidden-tablet">{$text}:</div>{/if}

    <a class="ty-select-block__a cm-combination d-flex" id="sw_select_{$selected_id}_wrap_{$suffix}">
        {if $display_global == true}
            <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M7 1.75C9.90617 1.75 12.25 4.09383 12.25 7C12.25 9.90617 9.90617 12.25 7 12.25" stroke="black" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M7 12.25C4.09383 12.25 1.75 9.90617 1.75 7C1.75 4.09383 4.09383 1.75 7 1.75" stroke="black" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M5.93112 2.36843C4.24529 5.18301 4.24529 8.81776 5.93112 11.6323C6.42462 12.4566 7.57554 12.4566 8.06904 11.6323C9.75487 8.81776 9.75487 5.18301 8.06904 2.36843C7.57496 1.54418 6.42462 1.54418 5.93112 2.36843Z" stroke="black" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M1.75 7H12.25" stroke="black" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>

        {/if}
        <span class="ty-select-block__a-item {if $link_class}{$link_class}{/if}">{$items.$selected_id.$key_name}</span>
        {if $display_icons == true}
            <i class="ty-select-block__a-flag ty-flag ty-flag-{$items.$selected_id.country_code|lower}" ></i>
        {/if}
        {if $display_arrow == true}
            <i class="fas fa-angle-down"></i>
        {/if}
    </a>

    <div id="select_{$selected_id}_wrap_{$suffix}" class="ty-select-block cm-popup-box hidden">
        <ul class="cm-select-list ty-select-block__list ty-flags">
            {foreach from=$items item=item key=id}
                <li class="ty-select-block__list-item">
                    <a rel="nofollow" href="{"`$link_tpl``$id`"|fn_url}" class="ty-select-block__list-a {if $selected_id == $id}is-active{/if} {if $suffix == "live_editor_box"}cm-lang-link{/if}" {if $display_icons == true}data-ca-country-code="{$item.country_code|lower}"{/if} data-ca-name="{$id}">
                        {if $display_icons == true}
                            <i class="ty-flag ty-flag-{$item.country_code|lower}"></i>
                        {/if}
                        {$item.$key_name nofilter}{if $item.symbol} ({$item.symbol nofilter}){/if}
                    </a>
                </li>
            {/foreach}
        </ul>
    </div>
{else}
    {if $text}<label for="id_{$var_name}" class="ty-select-block__txt hidden-phone hidden-tablet">{$text}:</label>{/if}
    <select id="id_{$var_name}" name="{$var_name}" onchange="Tygh.$.redirect(this.value);" class="ty-valign">
        {foreach from=$items item=item key=id}
            <option value="{"`$link_tpl``$id`"|fn_url}" {if $id == $selected_id}selected="selected"{/if}>{$item.$key_name nofilter}</option>
        {/foreach}
    </select>
{/if}
