{if $user_info.user_type === "V"}
    <div class="control-group cm-no-hide-input">
        <label class="control-label" for="elm_product_vendor_descr">{__("full_desc_vendor")}:</label>
        <div class="controls">
            <input type="hidden" value="{$product_data.vendors_desc.vendor_desc_id}" name="product_data[vendor_desc][vendor_desc_id]">
{*            {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id="vendor_description" name="product_data[vendor_desc][description]"}*}
            <textarea id="elm_product_vendor_descr"
                      name="product_data[vendor_desc][description]"
                      cols="55"
                      rows="8"
                      class="cm-wysiwyg input-large"
                      data-ca-is-block-manager-enabled="{fn_check_view_permissions("block_manager.block_selection", "GET")|intval}"
            >{$product_data.vendors_desc.description}</textarea>

            {if $view_uri}
                {include
                file="buttons/button.tpl"
                but_href="customization.update_mode?type=live_editor&status=enable&frontend_url={$view_uri|urlencode}{if "ULTIMATE"|fn_allowed_for}&switch_company_id={$product_data.company_id}{/if}"
                but_text=__("edit_content_on_site")
                but_role="action"
                but_meta="btn-small btn-live-edit cm-post"
                but_target="_blank"}
            {/if}
        </div>
    </div>
{/if}
