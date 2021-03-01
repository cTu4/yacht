{** block-description:tmpl_presets**}
<div class="presets  d-flex justify-content-between">
    <a class="item_preset t-18px font-weight-600 cm-submit" data-ca-target-form="Sailboats" data-ca-dispatch="dispatch[products.search]">
        {__('Sailboats')}
        <form name="Sailboats" method="get" class="hidden" action="{$config.http_location}">
            <input type="hidden" name="match" value="all" />
            <input type="hidden" name="subcats" value="Y" />
            <input type="hidden" name="pcode_from_q" value="Y" />
            <input type="hidden" name="pshort" value="Y" />
            <input type="hidden" name="pfull" value="Y" />
            <input type="hidden" name="pname" value="Y" />
            <input type="hidden" name="pkeywords" value="Y" />
            <input type="hidden" name="search_performed" value="Y" />
            <input type="hidden" name="items_per_page" value="{$settings.Appearance.products_per_page}" />
            <input type="hidden" name="cid" value="{$categories_search.Sailboats.category_id}">
        </form>
        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M11.9092 1.79081C12.9636 2.84521 12.9636 4.55474 11.9092 5.60915C10.8548 6.66355 9.14526 6.66355 8.09085 5.60915C7.03645 4.55474 7.03645 2.84521 8.09085 1.79081C9.14526 0.736398 10.8548 0.736398 11.9092 1.79081" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M10 19V6.40015" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M3.69998 10H1C1 14.9702 5.02972 18.9999 9.99993 18.9999C14.9701 18.9999 18.9999 14.9702 18.9999 10H16.2999" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
    </a>
    <a class="item_preset t-18px font-weight-600 cm-submit" data-ca-target-form="Catamarans" data-ca-dispatch="dispatch[products.search]">
        {__('Catamarans')}
        <form name="Catamarans" method="get" class="hidden" action="{$config.http_location}">
            <input type="hidden" name="match" value="all" />
            <input type="hidden" name="subcats" value="Y" />
            <input type="hidden" name="pcode_from_q" value="Y" />
            <input type="hidden" name="pshort" value="Y" />
            <input type="hidden" name="pfull" value="Y" />
            <input type="hidden" name="pname" value="Y" />
            <input type="hidden" name="pkeywords" value="Y" />
            <input type="hidden" name="search_performed" value="Y" />
            <input type="hidden" name="items_per_page" value="{$settings.Appearance.products_per_page}" />
            <input type="hidden" name="cid" value="{$categories_search.Catamarans.category_id}">
        </form>
        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M11.9092 1.79081C12.9636 2.84521 12.9636 4.55474 11.9092 5.60915C10.8548 6.66355 9.14526 6.66355 8.09085 5.60915C7.03645 4.55474 7.03645 2.84521 8.09085 1.79081C9.14526 0.736398 10.8548 0.736398 11.9092 1.79081" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M10 19V6.40015" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M3.69998 10H1C1 14.9702 5.02972 18.9999 9.99993 18.9999C14.9701 18.9999 18.9999 14.9702 18.9999 10H16.2999" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
    </a>
    <a class="item_preset t-18px font-weight-600">
        {__('boats')} 2019
        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M11.9092 1.79081C12.9636 2.84521 12.9636 4.55474 11.9092 5.60915C10.8548 6.66355 9.14526 6.66355 8.09085 5.60915C7.03645 4.55474 7.03645 2.84521 8.09085 1.79081C9.14526 0.736398 10.8548 0.736398 11.9092 1.79081" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M10 19V6.40015" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M3.69998 10H1C1 14.9702 5.02972 18.9999 9.99993 18.9999C14.9701 18.9999 18.9999 14.9702 18.9999 10H16.2999" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
    </a>
    <a class="cm-submit item_preset t-18px font-weight-600" data-ca-target-form="less_price" data-ca-dispatch="dispatch[products.search]">
            <form name="less_price" method="get" class="hidden" action="{$config.http_location}">
                <input type="hidden" name="match" value="all" />
                <input type="hidden" name="subcats" value="Y" />
                <input type="hidden" name="pcode_from_q" value="Y" />
                <input type="hidden" name="pshort" value="Y" />
                <input type="hidden" name="pfull" value="Y" />
                <input type="hidden" name="pname" value="Y" />
                <input type="hidden" name="pkeywords" value="Y" />
                <input type="hidden" name="search_performed" value="Y" />
                <input type="hidden" name="items_per_page" value="{$settings.Appearance.products_per_page}" />
                <input type="hidden" name="price_to" value="2500">
            </form>
        {__('boats')} {__('less')}<br> €2500
        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M11.9092 1.79081C12.9636 2.84521 12.9636 4.55474 11.9092 5.60915C10.8548 6.66355 9.14526 6.66355 8.09085 5.60915C7.03645 4.55474 7.03645 2.84521 8.09085 1.79081C9.14526 0.736398 10.8548 0.736398 11.9092 1.79081" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M10 19V6.40015" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M3.69998 10H1C1 14.9702 5.02972 18.9999 9.99993 18.9999C14.9701 18.9999 18.9999 14.9702 18.9999 10H16.2999" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
    </a>
    <a class="item_preset t-18px font-weight-600">
        {__('boats')}<br> {__('with')} 3 {__('beths')}
        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M11.9092 1.79081C12.9636 2.84521 12.9636 4.55474 11.9092 5.60915C10.8548 6.66355 9.14526 6.66355 8.09085 5.60915C7.03645 4.55474 7.03645 2.84521 8.09085 1.79081C9.14526 0.736398 10.8548 0.736398 11.9092 1.79081" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M10 19V6.40015" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M3.69998 10H1C1 14.9702 5.02972 18.9999 9.99993 18.9999C14.9701 18.9999 18.9999 14.9702 18.9999 10H16.2999" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
    </a>
    <a class="item_preset t-18px font-weight-600">
        {__('boats')}<br> {__('in')} {__('Greece')}
        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M11.9092 1.79081C12.9636 2.84521 12.9636 4.55474 11.9092 5.60915C10.8548 6.66355 9.14526 6.66355 8.09085 5.60915C7.03645 4.55474 7.03645 2.84521 8.09085 1.79081C9.14526 0.736398 10.8548 0.736398 11.9092 1.79081" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M10 19V6.40015" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M3.69998 10H1C1 14.9702 5.02972 18.9999 9.99993 18.9999C14.9701 18.9999 18.9999 14.9702 18.9999 10H16.2999" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
    </a>
    <a class="item_preset t-18px font-weight-600">
        <svg width="34" height="8" viewBox="0 0 34 8" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="3.4" cy="4.0001" r="3.4" fill="white"/>
            <circle cx="17.0001" cy="4.0001" r="3.4" fill="white"/>
            <circle cx="30.6" cy="4.0001" r="3.4" fill="white"/>
        </svg>

    </a>
</div>