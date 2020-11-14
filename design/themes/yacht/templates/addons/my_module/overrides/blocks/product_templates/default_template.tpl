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
    <div class="info">
        <div class="title">
            <span class="t-28px font-weight-bold">{$product.product}</span>
            <span class="t-16px font-weight-300">
                <svg width="12" height="17" viewBox="0 0 12 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M6 0C2.68629 0 0 2.74043 0 6.12093C0 9.58887 3.77486 14.7077 5.33657 16.676C5.67943 17.108 6.32057 17.108 6.66343 16.676C8.22514 14.7077 12 9.58887 12 6.12093C12 2.74043 9.31371 0 6 0ZM6 8.30697C4.81629 8.30697 3.85714 7.3285 3.85714 6.12093C3.85714 4.91336 4.81629 3.93488 6 3.93488C7.18371 3.93488 8.14286 4.91336 8.14286 6.12093C8.14286 7.3285 7.18371 8.30697 6 8.30697Z" fill="#8F9CB8"/>
                </svg>
                Barcelona, Rambla de Mar
            </span>
        </div>
        {$product|fn_print_r}
    </div>
</div>

