{if $runtime.company_id && "ULTIMATE"|fn_allowed_for || "MULTIVENDOR"|fn_allowed_for}
    {include file="addons/my_module/views/tab_content.tpl"
    object_company_id=$product_data.company_id
    }
{/if}