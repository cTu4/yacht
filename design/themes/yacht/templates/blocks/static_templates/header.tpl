{** block-description:tmpl_header **}
{*{$categories_search|fn_print_r}*}
{assign var="categories_search" value=""|get_categores_search}
<div class="header">
    <div class="covid "><a href="{$config.http_path}">{__('covid')} &#8594;</a></div>
    <div class="main-header d-flex justify-content-between align-items-center ">
        <div class="logo col-2"><a href="{$config.http_location}">Yachts & More</a></div>
        <div class="col-1"></div>
        <nav class="header-nav d-flex justify-content-center col-6">
            <a class="cm-submit" data-ca-target-form="boats" data-ca-dispatch="dispatch[products.search]">{__('boats')}
                <form name="boats" method="get" class="hidden" action="{$config.http_location}">
                    <input type="hidden" name="match" value="all" />
                    <input type="hidden" name="subcats" value="Y" />
                    <input type="hidden" name="pcode_from_q" value="Y" />
                    <input type="hidden" name="pshort" value="Y" />
                    <input type="hidden" name="pfull" value="Y" />
                    <input type="hidden" name="pname" value="Y" />
                    <input type="hidden" name="pkeywords" value="Y" />
                    <input type="hidden" name="search_performed" value="Y" />
                    <input type="hidden" name="items_per_page" value="{$settings.Appearance.products_per_page}" />
                    <input type="hidden" name="cid" value="{$categories_search.Boats.category_id}">
                </form>
            </a>
            <a class="cm-submit" data-ca-target-form="experiences" data-ca-dispatch="dispatch[products.search]">{__('experiences')}
                <form name="experiences" method="get" class="hidden" action="{$config.http_location}">
                    <input type="hidden" name="match" value="all" />
                    <input type="hidden" name="subcats" value="Y" />
                    <input type="hidden" name="pcode_from_q" value="Y" />
                    <input type="hidden" name="pshort" value="Y" />
                    <input type="hidden" name="pfull" value="Y" />
                    <input type="hidden" name="pname" value="Y" />
                    <input type="hidden" name="pkeywords" value="Y" />
                    <input type="hidden" name="search_performed" value="Y" />
                    <input type="hidden" name="items_per_page" value="{$settings.Appearance.products_per_page}" />
                    <input type="hidden" name="cid" value="{$categories_search.Experiences.category_id}">
                </form>
            </a>
            <a class="cm-submit" data-ca-target-form="destinations" data-ca-dispatch="dispatch[products.search]">{__('destinations')}
                <form name="destinations" method="get" class="hidden" action="{$config.http_location}">
                    <input type="hidden" name="match" value="all" />
                    <input type="hidden" name="subcats" value="Y" />
                    <input type="hidden" name="pcode_from_q" value="Y" />
                    <input type="hidden" name="pshort" value="Y" />
                    <input type="hidden" name="pfull" value="Y" />
                    <input type="hidden" name="pname" value="Y" />
                    <input type="hidden" name="pkeywords" value="Y" />
                    <input type="hidden" name="search_performed" value="Y" />
                    <input type="hidden" name="items_per_page" value="{$settings.Appearance.products_per_page}" />
                    <input type="hidden" name="cid" value="{$categories_search.Destinations.category_id}">
                </form>
            </a>
            <a class="cm-submit" data-ca-target-form="events" data-ca-dispatch="dispatch[products.search]">{__('events')}
                <form name="events" method="get" class="hidden" action="{$config.http_location}">
                    <input type="hidden" name="match" value="all" />
                    <input type="hidden" name="subcats" value="Y" />
                    <input type="hidden" name="pcode_from_q" value="Y" />
                    <input type="hidden" name="pshort" value="Y" />
                    <input type="hidden" name="pfull" value="Y" />
                    <input type="hidden" name="pname" value="Y" />
                    <input type="hidden" name="pkeywords" value="Y" />
                    <input type="hidden" name="search_performed" value="Y" />
                    <input type="hidden" name="items_per_page" value="{$settings.Appearance.products_per_page}" />
                    <input type="hidden" name="cid" value="{$categories_search.Events.category_id}">
                </form>
            </a>
        </nav>
        <div class="right d-flex col-3 justify-content-end align-items-center">
            <div>
                <a class="add_boat" href="#">
                    <svg class="plus" width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M6 3C5.67 3 5.4 3.27 5.4 3.6V5.4H3.6C3.27 5.4 3 5.67 3 6C3 6.33 3.27 6.6 3.6 6.6H5.4V8.4C5.4 8.73 5.67 9 6 9C6.33 9 6.6 8.73 6.6 8.4V6.6H8.4C8.73 6.6 9 6.33 9 6C9 5.67 8.73 5.4 8.4 5.4H6.6V3.6C6.6 3.27 6.33 3 6 3ZM6 0C2.688 0 0 2.688 0 6C0 9.312 2.688 12 6 12C9.312 12 12 9.312 12 6C12 2.688 9.312 0 6 0ZM6 10.8C3.354 10.8 1.2 8.646 1.2 6C1.2 3.354 3.354 1.2 6 1.2C8.646 1.2 10.8 3.354 10.8 6C10.8 8.646 8.646 10.8 6 10.8Z" fill="#2466F6"/>
                    </svg>
                    {__('add_boat')}
                </a>
            </div>
            {include file="blocks/currencies.tpl" format="name"}

            {include file="blocks/languages.tpl" display_icon=true}
            <div class="weather">
                <img src="images/my_module/Summer.svg" alt="weather">
                <span>+24°C</span>
            </div>
           {capture name='content'}
               {include file="blocks/my_account.tpl" auth=$auth}
           {/capture}

            {include file="blocks/wrappers/onclick_dropdown.tpl" content=$smarty.capture.content}




        </div>

    </div>
</div>
