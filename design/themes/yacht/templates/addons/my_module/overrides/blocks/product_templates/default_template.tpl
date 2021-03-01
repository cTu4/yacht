{*{$product.image_pairs|fn_print_r}*}
{$feature_location = $product.product_features[$features_ids['location']]}
{$variant_location = $feature_location.variant_id}
{$location = $feature_location['variants'][$feature_location.variant_id]}

{$feature_vendor = $product.product_features[$features_ids['vendor']]}
{$variant_vendor = $feature_vendor.variant_id}
{$vendor = $feature_vendor['variants'][$feature_vendor.variant_id].variant}

{$feature_model = $product.product_features[$features_ids['model']]}
{$variant_model = $feature_model.variant_id}
{$model = $feature_model['variants'][$feature_model.variant_id].variant}

{$feature_amenities = $product.product_features[$features_ids['amenities']]}

<div class="detailed bot-br-3">
    <div class="images">
        {if $product.main_pair}
                <div class="item" href="{$product.main_pair.detailed.image_path}" data-fancybox="gallery">
                    <img  src="{$product.main_pair.detailed.image_path}" alt="">
{*                    <div class="play_video pointer">*}
{*                        <svg width="17" height="18" viewBox="0 0 17 18" fill="none" xmlns="http://www.w3.org/2000/svg">*}
{*                            <path d="M3.92332 0.344071L15.7252 6.89978C17.4249 7.84488 17.4249 10.1551 15.7252 11.1002L3.92013 17.6559C2.1885 18.619 0 17.4459 0 15.5557V2.4443C0 0.554093 2.1917 -0.619033 3.92332 0.344071Z" fill="white"/>*}
{*                        </svg>*}
{*                        <span class="t-white font-weight-600 t-14px">Live video</span>*}
{*                    </div>*}
                </div>

                {foreach from=$product.image_pairs item=image name=foo}
                    {if $smarty.foreach.foo.iteration<=2}
                        <div class="item-{$smarty.foreach.foo.iteration}" href="{$image.detailed.image_path}" data-fancybox="gallery">
                            <img  src="{$image.detailed.image_path}" alt="">
                            {if $smarty.foreach.foo.iteration==2}
                                <div class="view_images pointer">
                                    <span class="font-weight-600 t-14px">View all photos ({$product.image_pairs|count +1 })</span>
                                </div>
                            {/if}
                        </div>

                    {else}
                        <div style="display: none" href="{$image.detailed.image_path}" data-fancybox="gallery" class="item-{$smarty.foreach.foo.iteration}"><img src="{$image.detailed.image_path}" alt=""></div>
                    {/if}
                {/foreach}
{*        {else}*}
{*            <span class="ty-no-image item" ><i class="ty-no-image__icon ty-icon-image" title="{__("no_image")}"></i></span>*}
        {/if}
    </div>

    <div class="content d-flex">
        <div class="info col-8">
            <div class="title d-flex flex-column">
                <div id="product" class="t-28px font-weight-bold">{$product.product}{if $model}, {$model}{/if}{if $vendor}, {$vendor}{/if}
                </div>
                <div class="t-16px font-weight-300">
                    <svg width="12" height="17" viewBox="0 0 12 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M6 0C2.68629 0 0 2.74043 0 6.12093C0 9.58887 3.77486 14.7077 5.33657 16.676C5.67943 17.108 6.32057 17.108 6.66343 16.676C8.22514 14.7077 12 9.58887 12 6.12093C12 2.74043 9.31371 0 6 0ZM6 8.30697C4.81629 8.30697 3.85714 7.3285 3.85714 6.12093C3.85714 4.91336 4.81629 3.93488 6 3.93488C7.18371 3.93488 8.14286 4.91336 8.14286 6.12093C8.14286 7.3285 7.18371 8.30697 6 8.30697Z" fill="#8F9CB8"/>
                    </svg>
                    <span id="location">{$location.variant}</span>
                </div>
                <div class="rating">
                    <span class="t-18px font-weight-500">
                        <svg class="align-baseline" width="16" height="16" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M5.9998 8.88271L8.47363 10.3744C8.86394 10.6097 9.34536 10.26 9.24181 9.81683L8.58514 7.00501L10.7712 5.1129C11.1157 4.81495 10.9315 4.24941 10.4775 4.21111L7.5999 3.96738L6.47426 1.31374C6.29652 0.895421 5.70309 0.895421 5.52535 1.31374L4.39971 3.96738L1.52214 4.21111C1.0681 4.24941 0.88389 4.81495 1.2284 5.1129L3.41447 7.00501L2.7578 9.81683C2.65425 10.26 3.13567 10.6097 3.52598 10.3744L5.9998 8.88271Z" fill="#EB2A50"/>
                        </svg>
                        {$product.discussion.average_rating}
                    </span>
                    <span class="t-blue t-18px font-weight-500">
                        {$product.discussion.search.total_items} Comments
                    </span>
                </div>
                <div class="full_desc t-16px">
                    {$product.full_description nofilter}
                </div>
                <a class="t-16px t-blue-a font-weight-500">
                    See full model  history
                    <svg width="6" height="10" viewBox="0 0 6 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M3.87189 5.06687L3.94454 4.99553L3.87189 4.92418L0.336584 1.45214C0.0211382 1.14234 0.0211382 0.642892 0.336584 0.333092C0.653036 0.0223036 1.16473 0.0223035 1.48118 0.333092L5.66342 4.44047C5.97886 4.75027 5.97886 5.24973 5.66342 5.55953L1.48118 9.66691C1.16489 9.97755 0.653535 9.9777 0.337047 9.66736C0.0287628 9.35613 0.0224648 8.84741 0.336584 8.53891L3.87189 5.06687Z" fill="#2466F6" stroke="#2466F6" stroke-width="0.2"/>
                    </svg>
                </a>

            </div>
            <div class="cards-info d-flex justify-content-left flex-wrap">
                {include file="addons/my_module/blocks/cards-info.tpl"
                    cabins=$card_data.cabins
                    sleep_place=$card_data.sleep_place
                    shower=$card_data.shower
                    kitchen=$card_data.kitchen
                }
            </div>
            <div class="host bot-br-3 d-flex justify-content-between align-items-center">
                <div class="text">
                    <div class="t-28px font-weight-bold">
                        Host by {$company_data.company}
                    </div>
                    {if $product.vendors_desc}
                        <div class="t-16px full_desc ">
                               {$product.vendors_desc.description nofilter}
                        </div>
                        <div >
                            <a href="" class="t-16px t-blue-a font-weight-500">
                                See more
                                <svg width="6" height="10" viewBox="0 0 6 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M3.87189 5.06687L3.94454 4.99553L3.87189 4.92418L0.336584 1.45214C0.0211382 1.14234 0.0211382 0.642892 0.336584 0.333092C0.653036 0.0223036 1.16473 0.0223035 1.48118 0.333092L5.66342 4.44047C5.97886 4.75027 5.97886 5.24973 5.66342 5.55953L1.48118 9.66691C1.16489 9.97755 0.653535 9.9777 0.337047 9.66736C0.0287628 9.35613 0.0224648 8.84741 0.336584 8.53891L3.87189 5.06687Z" fill="#2466F6" stroke="#2466F6" stroke-width="0.2"/>
                                </svg>
                            </a>

                        </div>
                    {/if}
                    <div class="rating">
                        <span class="t-18px font-weight-500">
                            <svg class="align-baseline" width="16" height="16" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.9998 8.88271L8.47363 10.3744C8.86394 10.6097 9.34536 10.26 9.24181 9.81683L8.58514 7.00501L10.7712 5.1129C11.1157 4.81495 10.9315 4.24941 10.4775 4.21111L7.5999 3.96738L6.47426 1.31374C6.29652 0.895421 5.70309 0.895421 5.52535 1.31374L4.39971 3.96738L1.52214 4.21111C1.0681 4.24941 0.88389 4.81495 1.2284 5.1129L3.41447 7.00501L2.7578 9.81683C2.65425 10.26 3.13567 10.6097 3.52598 10.3744L5.9998 8.88271Z" fill="#EB2A50"/>
                            </svg>
                            4.81
                        </span>
                        {if $company_data.status === "A"}
                            <span class="t-18px font-weight-500">
                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M10.0042 18C10.162 18 10.3863 17.9364 10.6024 17.8331C15.3881 15.5122 17 14.2404 17 11.3949V5.55291C17 4.52757 16.6178 4.12221 15.6955 3.74863C14.8315 3.40686 11.8404 2.41331 11.0178 2.15897C10.7021 2.06359 10.3199 2 10.0042 2C9.68012 2 9.30623 2.07154 8.9905 2.15897C8.15964 2.40537 5.16855 3.4148 4.31276 3.74863C3.3822 4.11426 3 4.52757 3 5.55291V11.3949C3 14.2404 4.67003 15.4168 9.40593 17.8331C9.62196 17.9444 9.84629 18 10.0042 18ZM9.20653 13.7476C8.8908 13.7476 8.63323 13.6125 8.39228 13.3343L6.14065 10.7273C5.98279 10.5524 5.90801 10.3616 5.90801 10.1629C5.90801 9.73373 6.26528 9.3999 6.69733 9.3999C6.9549 9.3999 7.17092 9.50323 7.37033 9.74168L9.1816 11.9036L12.6712 6.57029C12.8623 6.28415 13.1033 6.14903 13.3774 6.14903C13.7929 6.14903 14.1917 6.43517 14.1917 6.85643C14.1917 7.03925 14.1003 7.23795 13.984 7.41282L9.98754 13.3264C9.79644 13.6046 9.52225 13.7476 9.20653 13.7476Z" fill="#F9002D"/>
                            </svg>
                           {__('identy_verified')}
                        </span>
                        {/if}
                    </div>

                </div>
                <div class="icon">
                    <img src="{$company_data.logo.image.image_path}">
                </div>
            </div>
                {include file="addons/my_module/blocks/boat_options.tpl"
                    wi_fi=$card_data.wi_fi
                    bath_accessories=$card_data.bath_accessories
                    dishes=$card_data.dishes
                    cinema=$card_data.cinema
                    pool=$card_data.pool
                    bar=$card_data.bar
                    pets=$card_data.pets
                    washer=$card_data.washer
                }
            {include file="addons/my_module/blocks/map.tpl" location=$location}
            {include file="addons/my_module/blocks/weather.tpl"}

            {include file="addons/discussion/blocks/product_tabs/discussion.tpl"}
        </div>
            <form class="options col-4 form-edit cm-disable-empty-files cm-processed-form cm-check-changes" enctype="multipart/form-data" novalidate="novalidate" action="{$config.http_path}/services" method="get" name="product_data">
                <input type="hidden" name="product_id" value="{$product.product_id}">
                {include file="addons/my_module/blocks/product/main_options.tpl"
                    location=$location.variant
                    product=$product
                }
                    <div class="main_order">
                        <div class="items">
                            <div class="item d-flex justify-content-between">
                                <div class="d-flex">
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M11.061 5.43899C11.647 6.02499 11.647 6.97499 11.061 7.55999C10.475 8.14599 9.52499 8.14599 8.93999 7.55999C8.35399 6.97399 8.35399 6.02399 8.93999 5.43899C9.52499 4.85399 10.475 4.85399 11.061 5.43899" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M10 15V8" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M6.5 10H5C5 12.761 7.239 15 10 15C12.761 15 15 12.761 15 10H13.5" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M10 19C14.9706 19 19 14.9706 19 10C19 5.02944 14.9706 1 10 1C5.02944 1 1 5.02944 1 10C1 14.9706 5.02944 19 10 19Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                    <div class="title d-flex flex-column">
                                        <div class="t-18px font-weight-600">{__('need_captain')}</div>
                                        <div class="t-14px t-gray-op5">{__('captain_fee')}</div>
                                        <div>
                                        <span class="t-15px font-weight-600">
                                            € 1600
                                        </span>
                                            <span class="t-15px t-gray-op5">
                                            / € 200 {__('per_day')}
                                        </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="toggle-wrapper">
                                    <div class="toggle normal">
                                        <input name="product_data[captain]" id="check_1" class="input_slide" type="checkbox">
                                        <label class="toggle-item" for="check_1"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="item d-flex justify-content-between">
                                <div class="d-flex">
                                    <svg width="20" height="18" viewBox="0 0 20 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M17 3.94H10.529C10.198 3.94 9.888 3.776 9.702 3.502L8.297 1.437C8.111 1.164 7.802 1 7.471 1H3C1.895 1 1 1.895 1 3V15C1 16.105 1.895 17 3 17H17C18.105 17 19 16.105 19 15V5.94C19 4.836 18.105 3.94 17 3.94V3.94Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M9.99023 7.62V13.12" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M7.24023 10.37H12.7402" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                    <div class="title d-flex flex-column">
                                        <div class="t-18px font-weight-600">{__('additional_services')}</div>
                                        <div  class="t-15px t-gray-op5">{__('select_next_step')}</div>
                                    </div>
                                </div>
                                <div class="toggle-wrapper">
                                    <div class="toggle normal">
                                        <input name="product_data[services]" id="check_2" class="input_slide" type="checkbox">
                                        <label class="toggle-item" for="check_2"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="item d-flex">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M12 3V3C15.5899 3 18.5 5.91015 18.5 9.5C18.5 13.0898 15.5899 16 12 16C8.41015 16 5.5 13.0898 5.5 9.5V9.5C5.5 5.91015 8.41015 3 12 3C12 3 12 3 12 3" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M7 16H17" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M12 7.02389V6.19849" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M12 11.9763V12.8017" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M10.5688 11.3869C10.7809 11.7489 11.1678 11.9727 11.5873 11.9762H12.4953C13.1333 11.9921 13.6634 11.4879 13.6794 10.8499C13.6931 10.298 13.3147 9.81347 12.7759 9.6932L11.2291 9.30444C10.6078 9.15886 10.2221 8.53712 10.3676 7.91576C10.4911 7.38886 10.9637 7.01821 11.5048 7.02387H12.4128C12.8327 7.02671 13.2201 7.25067 13.4321 7.6132" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M18.0009 12H19V12C20.1046 12 21 12.8954 21 14V19C21 20.1046 20.1046 21 19 21H5V21C3.89543 21 3 20.1046 3 19V14V14C3 12.8954 3.89543 12 5 12H5.99912" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                                <div class="title d-flex flex-column">
                                    <div  class="t-15px t-gray-op5">{__('deposit')}</div>
                                    <div class="t-18px font-weight-600">€ 600</div>
                                </div>
                            </div>
                            <div class="item d-flex">
                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M1 6V14C1 16.761 3.239 19 6 19H14C16.761 19 19 16.761 19 14V6C19 3.239 16.761 1 14 1H6C3.239 1 1 3.239 1 6Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M11.5 5.642C11.768 5.34 12.231 5 12.937 5C14.172 5 15 6.117 15 7.158C15 9.333 12.192 11 11.5 11C10.808 11 8 9.333 8 7.158C8 6.117 8.828 5 10.063 5C10.769 5 11.232 5.34 11.5 5.642Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                                <div class="title d-flex flex-column">
                                    <div  class="t-15px t-gray-op5">{__('insurance_fee')}</div>
                                    <div class="t-18px font-weight-600">€ 120</div>
                                </div>
                            </div>
                            <div class="item d-flex">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M9.3291 14.67L14.6691 9.32996" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M18.2386 3H5.7614C4.23632 3 3 4.23632 3 5.7614V18.2386C3 19.7637 4.23632 21 5.7614 21H18.2386C19.7637 21 21 19.7637 21 18.2386V5.7614C21 4.23632 19.7637 3 18.2386 3Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <circle cx="15" cy="15" r="1" fill="black" stroke="black"/>
                                    <circle cx="9" cy="9" r="1" fill="black" stroke="black"/>
                                </svg>
                                <div class="title d-flex flex-column">
                                    <div  >
                                    <span class="t-15px t-gray-op5">
                                        {__('service_fee')}
                                    </span>
                                        <span class="cm-tooltip pointer" title="tooltip text">
                                        <svg width="15" height="15" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M6 10.5C8.48528 10.5 10.5 8.48528 10.5 6C10.5 3.51472 8.48528 1.5 6 1.5C3.51472 1.5 1.5 3.51472 1.5 6C1.5 8.48528 3.51472 10.5 6 10.5Z" stroke="#2466F6" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M4.84277 4.84279V4.84279C4.96124 4.33222 5.42626 3.97822 5.94994 3.99995V3.99995C6.53602 3.96749 7.03846 4.4141 7.07494 4.99995C7.07494 5.75191 5.99994 5.99995 5.99994 6.49995" stroke="#2466F6" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M6.0625 7.875C6.0625 7.90952 6.03452 7.9375 6 7.9375C5.96548 7.9375 5.9375 7.90952 5.9375 7.875C5.9375 7.84048 5.96548 7.8125 6 7.8125" stroke="#2466F6" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M6 7.8125V7.8125C6.03452 7.8125 6.0625 7.84048 6.0625 7.875" stroke="#2466F6" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                    </span>
                                    </div>
                                    <div class="t-18px font-weight-600">€ 1482,60</div>
                                </div>
                            </div>
                        </div>
                        <div class="bot">
                            <div class="total d-flex justify-content-between">
                                <span class="t-22px font-weight-500">{__('total')}</span>
                                <span class="t-22px font-weight-500">€ 15 508,60</span>
                            </div>
                            <a class="button d-flex justify-content-center none-under-line pointer t-18px t-white font-weight-600 {*cm-submit*}"
                               data-toggle="modal" data-target="#modal"
                                    {*data-ca-dispatch="dispatch[products.services]" data-ca-target-form="product_data"*}>
                                {__('select_rent')}
                            </a>
                        </div>

                    </div>
            </form>
    </div>
    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalTitle">{__("order_success")}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {__('order_description')}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>
{if $block.lang_code=="ru"}
    <script src="https://api-maps.yandex.ru/2.1/?apikey=b32251bf-b0a1-4013-a53e-03c1d438785f&lang=ru_RU" type="text/javascript" data-no-defer></script>
{else}
    <script src="https://api-maps.yandex.ru/2.1/?apikey=b32251bf-b0a1-4013-a53e-03c1d438785f&lang=en_RU" type="text/javascript" data-no-defer></script>
{/if}

