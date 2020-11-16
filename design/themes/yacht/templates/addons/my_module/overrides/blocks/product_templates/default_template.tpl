{*{$product.image_pairs|fn_print_r}*}
<div class="detailed">
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
{*                {$product|fn_print_r}*}
                {include file="addons/my_module/blocks/cards-info.tpl"
                    double_cabins=$product.double_cabins
                    single_cabins=$product.single_cabins
                    double_sleep_place=$product.double_sleep_place
                    single_sleep_place=$product.single_sleep_place
                    shower=$product.shower
                    kitchen=$product.kitchen
                }
            </div>
{*            {include file="addons/discussion/blocks/product_tabs/discussion.tpl"}*}
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
        </div>
        <div class="options col-4">
            a
        </div>
    </div>

</div>

