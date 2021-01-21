{capture name="mainbox"}

    <form action="{""|fn_url}" method="post" name="seo_form" class="form-horizontal form-edit">

    </form>
{/capture}

{capture name="buttons"}
    <span class="mobile-hidden shift-right">
    {capture name="tools_list"}
        {if $seo_data}
            <li>{btn type="delete_selected" dispatch="dispatch[seo_rules.m_delete]" form="seo_form"}</li>
        {/if}
    {/capture}
        {dropdown content=$smarty.capture.tools_list}
    </span>

    {if $seo_data}
        {include file="buttons/save.tpl" but_name="dispatch[seo_rules.m_update]" but_role="action" but_target_form="seo_form" but_meta="cm-submit"}
    {/if}
{/capture}



{capture name="sidebar"}
    {include file="common/saved_search.tpl" dispatch="seo_rules.manage" view_type="seo_rules"}
    {include file="addons/seo/views/seo_rules/components/search_form.tpl" dispatch="seo_rules.manage"}
{/capture}

{include file="common/mainbox.tpl" title=__("location_descriptions") content=$smarty.capture.mainbox title_extra=$smarty.capture.title_extra buttons=$smarty.capture.buttons  adv_buttons=$smarty.capture.adv_buttons sidebar=$smarty.capture.sidebar select_languages=true}