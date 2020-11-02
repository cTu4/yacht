{** block-description:my_account **}

{capture name="title"}
    <a class="ty-account-info__title" href="{"profiles.update"|fn_url}">
        <i class="ty-icon-user"></i>&nbsp;
        <span class="ty-account-info__title-txt" {live_edit name="block:name:{$block.block_id}"}>{$title}</span>
        <i class="ty-icon-down-micro ty-account-info__user-arrow"></i>
    </a>
{/capture}

<div id="account_info_{$block.snapping_id}">
    {assign var="return_current_url" value=$config.current_url|escape:url}
    <ul class="ty-account-info">
        {hook name="profiles:my_account_menu"}
            {capture name="title"}
                <a class="ty-account-info__title d-flex justify-content-between" href="{"profiles.update"|fn_url}">
                    <img src="images/my_module/Union.svg" alt="">
                    {if $auth.user_id}
                        <img src="images/my_module/account.png" alt="">
                        <span class="circle"></span>
                    {else}
                        <img src="images/my_module/user.svg" alt="">

                    {/if}

                </a>
            {/capture}
            {if $auth.user_id}
                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item font-weight-bold">{__('trips')}</li>
                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item font-weight-bold d-flex justify-content-between">{__('messages')} <span class="new">2</span></li>
                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item font-weight-bold d-flex justify-content-between bot-br" >{__('saved')} <span class="old">2</span></li>

                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item">{__('add_boat')}</li>
                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item">{__('hosts_guides')}
                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item " style="border-bottom: 0.5px solid rgba(0,0,0,0.1);">{__('hosts_community')}</li>

                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item" style="border-bottom: 0.5px solid rgba(0,0,0,0.1);">{__('services')}</li>

                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item">{__('account')}</li>
                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item">{__('bottom_panel.settings')}</li>
                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item">{__('help')}</li>
                <li class="ty-account-info__item  ty-account-info__name ty-dropdown-box__item">{__('log_out')}</li>

            {/if}

        {/hook}
    </ul>
    <div  id="login_block{$block.snapping_id}" class="hidden" title="{__("sign_in")}">
        <div class="ty-login-popup">
            {include file="views/auth/login_form.tpl" style="popup" id="popup`$block.snapping_id`"}
        </div>
    </div>
    <div class="ty-account-info__buttons buttons-container">
        {if $auth.user_id}
            {$is_vendor_with_active_company="MULTIVENDOR"|fn_allowed_for && ($auth.user_type == "V") && ($auth.company_status == "A")}
            {if $is_vendor_with_active_company}
                <a href="{$config.vendor_index|fn_url}" rel="nofollow" class="ty-btn ty-btn__primary" target="_blank">{__("go_to_admin_panel")}</a>
            {/if}
            <a href="{"auth.logout?redirect_url=`$return_current_url`"|fn_url}" rel="nofollow" class="ty-btn {if $is_vendor_with_active_company}ty-btn__tertiary{else}ty-btn__primary{/if}">{__("sign_out")}</a>
        {else}
            <a href="{if $runtime.controller == "auth" && $runtime.mode == "login_form"}{$config.current_url|fn_url}{else}{"auth.login_form?return_url=`$return_current_url`"|fn_url}{/if}" data-ca-target-id="login_block{$block.snapping_id}" class="cm-dialog-opener cm-dialog-auto-size ty-btn ty-btn__secondary" rel="nofollow">{__("sign_in")}</a><a href="{"profiles.add"|fn_url}" rel="nofollow" class="ty-btn ty-btn__primary">{__("register")}</a>

        {/if}
    </div>
<!--account_info_{$block.snapping_id}--></div>
