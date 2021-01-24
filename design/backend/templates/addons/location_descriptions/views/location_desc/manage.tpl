{script src="js/tygh/node_cloning.js"}

{capture name="mainbox"}
    <form action="{""|fn_url}" method="post" name="location_desc" class="form-horizontal form-edit">
        {include file="common/pagination.tpl" save_current_page=true save_current_url=true}
        <input type="hidden" name="descr_sl" value="{$descr_sl}" class="cm-item" /></td>

        <div class="table-responsive-wrapper">
            <table width="100%" class="table table-middle table--relative table-responsive">
                <thead>
                <tr>
                    <th width="1%" class="mobile-hide">
                        {include file="common/check_items.tpl"}</th>
                    <th width="35%">{__("location")}</th>
                    <th width="64%">{__("description")}</th>
                    <th></th>
                    <th>
                        <a href="#" id="add_location_desc" class="btn cm-tooltip"
                           title="{__("add")}"
                           onclick="
                           Tygh.$('.tr_location_desc:last-child').cloneNode(1);"
{*                           onclick="$.ceEvent('trigger', 'ce.add_location_desc',  [this,{$reservation.reservation_id}]);"*}
                        >
                            <i class="icon-plus"></i>
                        </a>
                    </th>
                </tr>
                </thead>
                {foreach from=$location_desc item="desc" key="key"}
                    <input type="hidden" name="location_desc[{$key}][variant_id]" value="{$desc.variant_id}" class="cm-item" /></td>
                    <tr class="tr_location_desc">
                        <td class="mobile-hide">
                            <input type="checkbox" name="clear_desc[]" value="{$desc.variant_id}" class="cm-item" /></td>
                        <td data-th="{__("location")}">
                        <input type="text" name="location_desc[{$key}][variant]" value="{$desc.variant}" />
                        <td data-th="{__("description")}">
                            <textarea name="location_desc[{$key}][description]" class="span7" style="height: 100px; white-space: normal">{$desc.description}</textarea>
{*                            <input style="height: 100px; white-space: normal" type="text" name="location_desc[{$key}][description]" value="{$desc.description}" class="input-hidden span7" /></td>*}
                        <td class="nowrap" data-th="{__("tools")}">
                        <td class="nowrap" data-th="{__("tools")}">
                            <div class="hidden-tools">
                                {capture name="tools_list"}
                                    <li>{btn class="cm-confirm" type="list" text=__("delete") href="location_desc.delete?variant_id=`$desc.variant_id`&lang_code=`$descr_sl`" method="POST"}</li>
                                {/capture}
                                {dropdown content=$smarty.capture.tools_list}
                            </div>
                        </td>
                    </tr>
                {/foreach}
            </table>
        </div>

        {include file="common/pagination.tpl"}
    </form>
{/capture}

{capture name="buttons"}
    <span class="mobile-hidden shift-right">
    {capture name="tools_list"}
        {if $location_desc}
            <li>{btn type="delete_selected" dispatch="dispatch[location_desc.m_delete]" form="location_desc"}</li>
        {/if}
    {/capture}
        {dropdown content=$smarty.capture.tools_list}
    </span>

    {if $location_desc}
        {include file="buttons/save.tpl" but_name="dispatch[location_desc.update]" but_role="action" but_target_form="location_desc" but_meta="cm-submit"}
    {/if}
{/capture}



{capture name="sidebar"}
    {include file="common/saved_search.tpl" dispatch="location_desc.manage" view_type="location_desc"}
    {include file="addons/location_descriptions/views/location_desc/components/search_form.tpl" dispatch="location_desc.manage"}
{/capture}

{include file="common/mainbox.tpl" title=__("location_descriptions") content=$smarty.capture.mainbox title_extra=$smarty.capture.title_extra buttons=$smarty.capture.buttons  adv_buttons=$smarty.capture.adv_buttons sidebar=$smarty.capture.sidebar select_languages=true}