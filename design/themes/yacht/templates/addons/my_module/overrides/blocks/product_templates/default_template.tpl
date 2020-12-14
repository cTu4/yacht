{*{$product.image_pairs|fn_print_r}*}
<div class="detailed bot-br-3">
    <div class="images">
        <div class="item">
            <img src="{$product.main_pair.detailed.image_path}" alt="">
            <div class="play_video pointer">
                <svg width="17" height="18" viewBox="0 0 17 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M3.92332 0.344071L15.7252 6.89978C17.4249 7.84488 17.4249 10.1551 15.7252 11.1002L3.92013 17.6559C2.1885 18.619 0 17.4459 0 15.5557V2.4443C0 0.554093 2.1917 -0.619033 3.92332 0.344071Z" fill="white"/>
                </svg>
                <span class="t-white font-weight-600 t-14px">Live video</span>
            </div>
        </div>

        {foreach from=$product.image_pairs item=image name=foo}
            {if $smarty.foreach.foo.iteration<=2}
                <div class="item-{$smarty.foreach.foo.iteration}">
                    <img src="{$image.detailed.image_path}" alt="">
                    {if $smarty.foreach.foo.iteration==2}
                        <div class="view_images pointer">
                            <span class="font-weight-600 t-14px">View all photos ({$product.image_pairs|count +1 })</span>
                        </div>
                    {/if}
                </div>

            {else}
                <div style="display: none" class="item-{$smarty.foreach.foo.iteration}"><img src="{$image.detailed.image_path}" alt=""></div>
            {/if}
        {/foreach}
    </div>
    <div class="content d-flex">
        <div class="info col-8">
            <div class="title d-flex flex-column">
                <div class="t-28px font-weight-bold">{$product.product}</div>
                <div class="t-16px font-weight-300">
                    <svg width="12" height="17" viewBox="0 0 12 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M6 0C2.68629 0 0 2.74043 0 6.12093C0 9.58887 3.77486 14.7077 5.33657 16.676C5.67943 17.108 6.32057 17.108 6.66343 16.676C8.22514 14.7077 12 9.58887 12 6.12093C12 2.74043 9.31371 0 6 0ZM6 8.30697C4.81629 8.30697 3.85714 7.3285 3.85714 6.12093C3.85714 4.91336 4.81629 3.93488 6 3.93488C7.18371 3.93488 8.14286 4.91336 8.14286 6.12093C8.14286 7.3285 7.18371 8.30697 6 8.30697Z" fill="#8F9CB8"/>
                    </svg>
                    Barcelona, Rambla de Mar
                </div>
                <div class="rating">
                    <span class="t-18px font-weight-500">
                        <svg class="align-baseline" width="16" height="16" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M5.9998 8.88271L8.47363 10.3744C8.86394 10.6097 9.34536 10.26 9.24181 9.81683L8.58514 7.00501L10.7712 5.1129C11.1157 4.81495 10.9315 4.24941 10.4775 4.21111L7.5999 3.96738L6.47426 1.31374C6.29652 0.895421 5.70309 0.895421 5.52535 1.31374L4.39971 3.96738L1.52214 4.21111C1.0681 4.24941 0.88389 4.81495 1.2284 5.1129L3.41447 7.00501L2.7578 9.81683C2.65425 10.26 3.13567 10.6097 3.52598 10.3744L5.9998 8.88271Z" fill="#EB2A50"/>
                        </svg>
                        4.81
                    </span>
                    <span class="t-blue t-18px font-weight-500">
                        27 Comments
                    </span>
                </div>
                <div class="full_desc t-16px">
                    {$product.full_description}
                </div>
                <a class="t-16px t-blue-a font-weight-500">
                    See full model  history
                    <svg width="6" height="10" viewBox="0 0 6 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M3.87189 5.06687L3.94454 4.99553L3.87189 4.92418L0.336584 1.45214C0.0211382 1.14234 0.0211382 0.642892 0.336584 0.333092C0.653036 0.0223036 1.16473 0.0223035 1.48118 0.333092L5.66342 4.44047C5.97886 4.75027 5.97886 5.24973 5.66342 5.55953L1.48118 9.66691C1.16489 9.97755 0.653535 9.9777 0.337047 9.66736C0.0287628 9.35613 0.0224648 8.84741 0.336584 8.53891L3.87189 5.06687Z" fill="#2466F6" stroke="#2466F6" stroke-width="0.2"/>
                    </svg>
                </a>

            </div>
            <div class="cards-info d-flex justify-content-left">
                {include file="addons/my_module/blocks/cards-info.tpl"
                    double_cabins=$product.double_cabins
                    single_cabins=$product.single_cabins
                    double_sleep_place=$product.double_sleep_place
                    single_sleep_place=$product.single_sleep_place
                    shower=$product.shower
                    kitchen=$product.kitchen
                }
            </div>
            <div class="host bot-br-3 d-flex align-items-center">
                <div class="text">
                    <div class="t-28px font-weight-bold">
                        Host by Andrew Miles
                    </div>
                    <div class="t-16px full_desc ">
                        Sailing boat Bavaria 30, model 2006 is a famous German brand for comfortable sailing.
                        It offers total comfort and with the sails of 66 m2 gives pleasure for sailing in the beautiful
                        Adriatic sea.
                    </div>
                    <div >
                        <a href="" class="t-16px t-blue-a font-weight-500">
                            See more
                            <svg width="6" height="10" viewBox="0 0 6 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M3.87189 5.06687L3.94454 4.99553L3.87189 4.92418L0.336584 1.45214C0.0211382 1.14234 0.0211382 0.642892 0.336584 0.333092C0.653036 0.0223036 1.16473 0.0223035 1.48118 0.333092L5.66342 4.44047C5.97886 4.75027 5.97886 5.24973 5.66342 5.55953L1.48118 9.66691C1.16489 9.97755 0.653535 9.9777 0.337047 9.66736C0.0287628 9.35613 0.0224648 8.84741 0.336584 8.53891L3.87189 5.06687Z" fill="#2466F6" stroke="#2466F6" stroke-width="0.2"/>
                            </svg>
                        </a>

                    </div>
                    <div class="rating">
                        <span class="t-18px font-weight-500">
                            <svg class="align-baseline" width="16" height="16" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.9998 8.88271L8.47363 10.3744C8.86394 10.6097 9.34536 10.26 9.24181 9.81683L8.58514 7.00501L10.7712 5.1129C11.1157 4.81495 10.9315 4.24941 10.4775 4.21111L7.5999 3.96738L6.47426 1.31374C6.29652 0.895421 5.70309 0.895421 5.52535 1.31374L4.39971 3.96738L1.52214 4.21111C1.0681 4.24941 0.88389 4.81495 1.2284 5.1129L3.41447 7.00501L2.7578 9.81683C2.65425 10.26 3.13567 10.6097 3.52598 10.3744L5.9998 8.88271Z" fill="#EB2A50"/>
                            </svg>
                            4.81
                        </span>
                        <span class="t-18px font-weight-500">
                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M10.0042 18C10.162 18 10.3863 17.9364 10.6024 17.8331C15.3881 15.5122 17 14.2404 17 11.3949V5.55291C17 4.52757 16.6178 4.12221 15.6955 3.74863C14.8315 3.40686 11.8404 2.41331 11.0178 2.15897C10.7021 2.06359 10.3199 2 10.0042 2C9.68012 2 9.30623 2.07154 8.9905 2.15897C8.15964 2.40537 5.16855 3.4148 4.31276 3.74863C3.3822 4.11426 3 4.52757 3 5.55291V11.3949C3 14.2404 4.67003 15.4168 9.40593 17.8331C9.62196 17.9444 9.84629 18 10.0042 18ZM9.20653 13.7476C8.8908 13.7476 8.63323 13.6125 8.39228 13.3343L6.14065 10.7273C5.98279 10.5524 5.90801 10.3616 5.90801 10.1629C5.90801 9.73373 6.26528 9.3999 6.69733 9.3999C6.9549 9.3999 7.17092 9.50323 7.37033 9.74168L9.1816 11.9036L12.6712 6.57029C12.8623 6.28415 13.1033 6.14903 13.3774 6.14903C13.7929 6.14903 14.1917 6.43517 14.1917 6.85643C14.1917 7.03925 14.1003 7.23795 13.984 7.41282L9.98754 13.3264C9.79644 13.6046 9.52225 13.7476 9.20653 13.7476Z" fill="#F9002D"/>
                            </svg>
                            Identy verified
                        </span>
                    </div>

                </div>
                <div class="icon">
                    <img src="images/my_module/host.png">
                </div>
            </div>
                {include file="addons/my_module/blocks/boat_options.tpl"
                    wi_fi=$product.wi_fi
                    bath_accessories=$product.bath_accessories
                    dishes=$product.dishes
                    cinema=$product.cinema
                    pool=$product.pool
                    bar=$product.bar
                    pets=$product.pets
                    washer=$product.washer
                }
            {include file="addons/my_module/blocks/map.tpl"}
            {include file="addons/my_module/blocks/weather.tpl"}

            {include file="addons/discussion/blocks/product_tabs/discussion.tpl"}
        </div>
        <div class="options col-4">
            <div class="boat_order">
                <div class="edit pointer">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.66895 10.332L8.11968 10.0294V10.0294C8.29187 10.0083 8.45206 9.93023 8.57481 9.80764L14.5118 3.87454V3.87454C15.1692 3.21681 15.1692 2.15078 14.5118 1.49305V1.49305C13.8541 0.835651 12.788 0.835651 12.1303 1.49305L6.24856 7.3748V7.3748C6.12944 7.49388 6.05218 7.64841 6.02839 7.81516L5.66895 10.332Z" stroke="#2466F6" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M7.9051 1.77368H4.11204C2.39331 1.77368 1 3.16699 1 4.88572V11.8878C1 13.6065 2.39331 14.9999 4.11204 14.9999H11.1141C12.8329 14.9999 14.2262 13.6065 14.2262 11.8878V8.09475" stroke="#2466F6" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                    <span class="t-16px t-blue-a font-weight-600">{__('edit')}</span>
                </div>
                <div class="item d-flex">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 13C10.343 13 9 11.657 9 10C9 8.343 10.343 7 12 7C13.657 7 15 8.343 15 10C15 11.657 13.657 13 12 13Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M12 21C12 21 5 15.25 5 10C5 6.134 8.134 3 12 3C15.866 3 19 6.134 19 10C19 15.25 12 21 12 21Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                    <div class="title d-flex flex-column">
                        <div  class="t-15px t-gray-op5">{__('location')}</div>
                        <div class="t-18px font-weight-600">Barcelona, Spain</div>
                    </div>
                </div>
                <div class="item d-flex">
                    <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M19 7.99609H1" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M6 1.87598V4.12598" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M14 1.87598V4.12598" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M16 20H4C2.343 20 1 18.657 1 17V6C1 4.343 2.343 3 4 3H16C17.657 3 19 4.343 19 6V17C19 18.657 17.657 20 16 20Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                    <div class="title d-flex flex-column">
                        <div  class="t-15px t-gray-op5">{__('check_in')} — {__('check_out')}</div>
                        <div class="d-flex">
                            <input class="date input t-18px font-weight-600" value="Sep 12, 2020"></input>
                            <input class="date input t-18px font-weight-600" value="Sep 19, 2020"></input>
                        </div>


                        {*                        Sep 12, 2020 — Sep 19, 2020*}
                        <script type="text/javascript">
                            (function(_, $) {$ldelim}
                            $.ceEvent('on', 'ce.commoninit', function(context) {
                                var time = new Date().toString("MMM d, yyyy");
                                console.log(time);

                                $('.date').datepicker({
                                    changeMonth: true,
                                    duration: 'fast',
                                    changeYear: true,
                                    selectOtherMonths: true,
                                    showOtherMonths: true,
                                    minDate: time,
                                    maxDate: 'Sep 10, 2022',

                                    dateFormat: 'M d, yy'
                                });
                            });
                            {$rdelim}(Tygh, Tygh.$));
                        </script>
{*                        {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_end" date_name="reservations[add][time_end]" date_val=1607720400|default:$smarty.const.TIME start_year=$settings.Company.company_start_year}*}

                    </div>
                </div>
                <div class="item d-flex">
                    <svg width="22" height="16" viewBox="0 0 22 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M1 15C1 12.791 2.791 11 5 11H9C11.209 11 13 12.791 13 15" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M9.47488 2.02513C10.8417 3.39197 10.8417 5.60804 9.47488 6.97488C8.10804 8.34172 5.89197 8.34172 4.52513 6.97488C3.15829 5.60804 3.15829 3.39197 4.52513 2.02513C5.89197 0.65829 8.10804 0.65829 9.47488 2.02513" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M15 10H18C19.657 10 21 11.343 21 13" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M18.2678 2.73223C19.2441 3.70854 19.2441 5.29145 18.2678 6.26776C17.2915 7.24407 15.7085 7.24407 14.7322 6.26776C13.7559 5.29145 13.7559 3.70854 14.7322 2.73223C15.7085 1.75592 17.2915 1.75592 18.2678 2.73223" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                    <div class="title d-flex flex-column">
                        <div  class="t-15px t-gray-op5">{__('team')}</div>
                        <div class="t-18px font-weight-600">4 {__('adults')}, 2 {__('children')}</div>
                    </div>
                </div>
                <div class="item d-flex">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M13.494 12C12.666 12.006 12 12.678 12 13.506C12 14.334 12.672 15.006 13.5 15C14.328 15 15 14.328 15 13.5C15 12.672 14.328 12 13.494 12Z" fill="black"/>
                        <path d="M3 6.283V6C3 4.343 4.343 3 6 3H18C19.657 3 21 4.343 21 6V15C21 16.657 19.657 18 18 18H17" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M21 9H17" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M13.325 20.922C15.205 21.356 17 19.928 17 17.999V9.38705C17 7.99005 16.036 6.77805 14.675 6.46405L5.45 4.33505C4.196 4.04505 3 4.99705 3 6.28305V16.152C3 17.549 3.964 18.761 5.325 19.075L13.325 20.922V20.922Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                    <div class="title d-flex flex-column">
                        <div  class="t-15px t-gray-op5">{__('price')}</div>
                        <div class="t-18px font-weight-600">
                            <div>
                                    <span class="t-15px font-weight-600">
                                        € 12 496
                                    </span>
                                <span class="t-15px t-gray-op5">
                                        / € 1435 {__('per_day')}
                                    </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                                <input id="check_1" class="input_slide" type="checkbox">
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
                                <input id="check_2" class="input_slide" type="checkbox">
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
                    <div class="button pointer t-18px t-white font-weight-600">
                            {__('select_rent')}
                    </div>
                </div>

            </div>




        </div>
    </div>

</div>

