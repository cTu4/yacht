<div id="breadcrumbs_{$block.block_id}" class="breadcrumbs d-flex justify-content-between">

    {if $breadcrumbs && $breadcrumbs|@sizeof > 1}
        <div class="ty-breadcrumbs clearfix">
            {strip}
                {foreach from=$breadcrumbs item="bc" name="bcn" key="key"}
                    {if $key > 0}
                        {if $key != "1"}
                            <span class="ty-breadcrumbs__slash">/</span>
                        {/if}
                        {if $bc.link}
                            <a href="{$bc.link|fn_url}" class="ty-breadcrumbs__a{if $additional_class} {$additional_class}{/if} t-gray t-13px font-weight-500"{if $bc.nofollow} rel="nofollow"{/if}>{$bc.title|strip_tags|escape:"html" nofilter}</a>
                        {else}
                            <span class="ty-breadcrumbs__current t-gray t-13px font-weight-500"><bdi>{$bc.title|strip_tags|escape:"html" nofilter}</bdi></span>
                        {/if}

                    {else}
                        <svg width="20" height="18" viewBox="0 0 20 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M19 9L1 9" stroke="#8F9CB8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M8.5 1.5L1 9L8.5 16.5" stroke="#8F9CB8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    {/if}
                {/foreach}
            {/strip}
        </div>
    {/if}
    <div class="option d-flex justify-content-between">
        <div class="share t-gray t-13px font-weight-500 pointer">
            <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M9.82843 12.1716C11.3905 13.7337 11.3905 16.2663 9.82843 17.8284C8.26633 19.3905 5.73367 19.3905 4.17157 17.8284C2.60948 16.2663 2.60948 13.7337 4.17157 12.1716C5.73367 10.6095 8.26633 10.6095 9.82843 12.1716" stroke="#8F9CB8" stroke-width="2"/>
                <path d="M25.8284 4.17157C27.3905 5.73367 27.3905 8.26633 25.8284 9.82843C24.2663 11.3905 21.7337 11.3905 20.1716 9.82843C18.6095 8.26633 18.6095 5.73367 20.1716 4.17157C21.7337 2.60948 24.2663 2.60948 25.8284 4.17157" stroke="#8F9CB8" stroke-width="2"/>
                <path d="M25.8284 20.1716C27.3905 21.7337 27.3905 24.2663 25.8284 25.8284C24.2663 27.3905 21.7337 27.3905 20.1716 25.8284C18.6095 24.2663 18.6095 21.7337 20.1716 20.1716C21.7337 18.6095 24.2663 18.6095 25.8284 20.1716" stroke="#8F9CB8" stroke-width="2"/>
                <path d="M11 13L19 9" stroke="#8F9CB8" stroke-width="2"/>
                <path d="M11 17L19 21" stroke="#8F9CB8" stroke-width="2"/>
            </svg>
            {__('share')}
        </div>
        <div class="like t-gray t-13px font-weight-500 pointer">
            <svg width="30" height="30" viewBox="0 0 26 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M7.65939 0.504936C9.25279 0.569987 10.4918 1.17498 11.3372 1.76891C11.7598 2.06578 12.0811 2.35803 12.2952 2.57405C12.4021 2.68192 12.4817 2.77031 12.5334 2.83013C12.5593 2.86003 12.5781 2.88273 12.5898 2.89711L12.602 2.91225L12.6033 2.914L12.6036 2.9143L12.6038 2.91455L12.604 2.91486C12.6041 2.91501 12.6041 2.91501 12.604 2.91487L12.9998 3.42984L13.3955 2.91497L13.3956 2.91487L13.3956 2.91486L13.3958 2.91455L13.396 2.9143L13.3962 2.914L13.3976 2.91225L13.4098 2.89711C13.4215 2.88273 13.4403 2.86003 13.4661 2.83013C13.5178 2.77031 13.5975 2.68192 13.7044 2.57405C13.9184 2.35803 14.2398 2.06578 14.6624 1.76891C15.5078 1.17498 16.7468 0.569987 18.3402 0.504936C20.452 0.41884 22.4096 1.46816 23.7111 3.18826L23.7112 3.18849C25.9275 6.11424 24.9918 9.31142 23.0802 12.1647C21.4388 14.6147 19.1662 16.669 17.8613 17.8486C17.6483 18.0412 17.461 18.2104 17.3066 18.3543C16.0246 19.548 14.4406 20.9674 13.4937 21.8099L13.4934 21.8101C13.2092 22.0633 12.7891 22.0633 12.5049 21.8101L12.5046 21.8099C11.5578 20.9674 9.97371 19.548 8.69177 18.3543C8.53741 18.2105 8.35035 18.0414 8.13754 17.849C6.8328 16.6696 4.56008 14.6151 2.91863 12.1648C1.00718 9.31142 0.0713811 6.1142 2.28713 3.18844L2.28713 3.18844C3.58994 1.46814 5.54761 0.41884 7.65939 0.504936ZM7.65939 0.504936L7.67979 0.00535215L7.65939 0.504936Z" fill="none" stroke-width="2px"  stroke="#8F9CB8"/>
            </svg>
            {__('add2favorite')}
        </div>
    </div>

    <!--breadcrumbs_{$block.block_id}-->
</div>
