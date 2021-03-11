<div class="sidebar-row">
    <h6>{__("search")}</h6>
    <form action="{""|fn_url}" name="seo_rules_search_form" method="get">
            <input type="hidden" name="descr_sl" size="20" value="{$search.descr_sl}" class="search-input-text" />
            <div class="sidebar-field">
                <label>{__("location")}</label>
                <input type="text" name="variant" size="20" value="{$search.variant}" class="search-input-text" />
            </div>
        {include file="buttons/search.tpl" but_name="dispatch[`$dispatch`]" method="GET"}

    </form>
</div>