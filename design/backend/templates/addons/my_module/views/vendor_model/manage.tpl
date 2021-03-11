{script src="js/tygh/node_cloning.js"}
{capture name="mainbox"}
    <form action="{""|fn_url}" method="post" name="vendor_model" class="form-horizontal form-edit">
        {include file="common/pagination.tpl" save_current_page=true save_current_url=true}

        <div class="table-responsive-wrapper">
            <table width="100%" class="table table-middle table--relative table-responsive">
                <thead>
                <tr>
                    <th width="1%" class="mobile-hide">
                        {include file="common/check_items.tpl"}</th>
                    <th width="35%">{__("vendor")}</th>
                    <th width="64%">{__("models")}</th>
                </tr>
                </thead>
                {foreach from=$vendors item="vendor" key="key"}
                    <input type="hidden" name="vendor[{$key}][variant_id]" value="{$vendor.variant_id}" class="cm-item" /></td>
                    <tr class="tr_location_desc">
                        <td class="mobile-hide">
                            <input type="checkbox" name="clear_desc[]" value="{$desc.variant_id}" class="cm-item" /></td>
                        <td data-th="{__("manufacturers")}">
                            {$vendor.variant}
{*                            <input type="text" name="location_desc[{$key}][variant]" value="{$desc.variant}" />*}
                        <td data-th="{__("models")}">
                            {include file="addons/my_module/views/vendor_model/components/multi_select.tpl" data=$models key=$key vendor=$vendor}
{*                            <textarea name="location_desc[{$key}][description]" class="span7" style="height: 100px; white-space: normal">{$desc.description}</textarea>*}
                            {*                            <input style="height: 100px; white-space: normal" type="text" name="location_desc[{$key}][description]" value="{$desc.description}" class="input-hidden span7" /></td>*}
                    </tr>
                {/foreach}
            </table>
        </div>

        {include file="common/pagination.tpl"}
    </form>
{/capture}

{capture name="buttons"}
{*    <span class="mobile-hidden shift-right">*}
{*    {capture name="tools_list"}*}
{*        {if $location_desc}*}
{*            <li>{btn type="delete_selected" dispatch="dispatch[location_desc.m_delete]" form="location_desc"}</li>*}
{*        {/if}*}
{*    {/capture}*}
{*        {dropdown content=$smarty.capture.tools_list}*}
{*    </span>*}

    {if $vendors}
        {include file="buttons/save.tpl" but_name="dispatch[vendor_model.update]" but_role="action" but_target_form="vendor_model" but_meta="cm-submit"}
    {/if}
{/capture}



{*{capture name="sidebar"}*}
{*    {include file="common/saved_search.tpl" dispatch="location_desc.manage" view_type="location_desc"}*}
{*    {include file="addons/location_descriptions/views/location_desc/components/search_form.tpl" dispatch="location_desc.manage"}*}
{*{/capture}*}

{include file="common/mainbox.tpl" title=__("location_descriptions") content=$smarty.capture.mainbox title_extra=$smarty.capture.title_extra buttons=$smarty.capture.buttons  adv_buttons=$smarty.capture.adv_buttons sidebar=$smarty.capture.sidebar select_languages=false}