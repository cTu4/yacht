{assign var="discussion" value=$object_id|fn_get_discussion:$object_type:true:$smarty.request}
{if $object_type == "Addons\\Discussion\\DiscussionObjectTypes::ORDER"|enum}
    {$new_post_title = __("new_post")}
{else}
    {$new_post_title = __("write_review")}
{/if}
{*{$discussion|fn_print_r}*}
<div class="discussion ">
    <div class="overall_rating">
        <div class="title d-flex justify-content-between">
            <div class=" t-28px font-weight-bold">{__('discussion_title_product')}</div>
            <div class="rating">
                <svg class="align-baseline" width="16" height="16" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M5.9998 8.88271L8.47363 10.3744C8.86394 10.6097 9.34536 10.26 9.24181 9.81683L8.58514 7.00501L10.7712 5.1129C11.1157 4.81495 10.9315 4.24941 10.4775 4.21111L7.5999 3.96738L6.47426 1.31374C6.29652 0.895421 5.70309 0.895421 5.52535 1.31374L4.39971 3.96738L1.52214 4.21111C1.0681 4.24941 0.88389 4.81495 1.2284 5.1129L3.41447 7.00501L2.7578 9.81683C2.65425 10.26 3.13567 10.6097 3.52598 10.3744L5.9998 8.88271Z" fill="#EB2A50"/>
                </svg>
                <span class="t-18px font-weight-500">
                {$discussion.average_rating} ({$discussion.search.totel_items} reviews)
            </span>
            </div>
        </div>
        <div class="points d-flex justify-content-between flex-wrap">
            {foreach from=$product.discussion.average_ratings item="rating" key="keyRating"}
                <div class="point d-flex justify-content-between">
                    <div class="t-12px t-gray-op6">{__($keyRating)}</div>
                    <div class="d-flex align-items-center">
                        <div class="progress w-75">
                            <div class="progress-bar" role="progressbar" style="width: {$rating.value}%" aria-valuenow="{$rating.value}" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <div class="t-12px t-gray-op6">{$rating.info}</div>
                    </div>
                </div>
            {/foreach}
{*            <div class="d-flex flex-column">*}
{*                <div class="point d-flex justify-content-between">*}
{*                    <div class="t-12px t-gray-op6">{__('cleanliness')}</div>*}
{*                    <div class="d-flex align-items-center">*}
{*                        <div class="progress w-75">*}
{*                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>*}
{*                        </div>*}
{*                        <div class="t-12px t-gray-op6">1.4</div>*}
{*                    </div>*}
{*                </div>*}
{*                <div class="point d-flex justify-content-between">*}
{*                    <div class="t-12px t-gray-op6">{__('communication')}</div>*}
{*                    <div class="d-flex align-items-center">*}
{*                        <div class="progress w-75">*}
{*                            <div class="progress-bar" role="progressbar" style="width: 78%" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"></div>*}
{*                        </div>*}
{*                        <div class="t-12px t-gray-op6">4.4</div>*}
{*                    </div>*}
{*                </div>*}
{*                <div class="point d-flex justify-content-between">*}
{*                    <div class="t-12px t-gray-op6">{__('check-in')}</div>*}
{*                    <div class="d-flex align-items-center">*}
{*                        <div class="progress w-75">*}
{*                            <div class="progress-bar" role="progressbar" style="width: 38%" aria-valuenow="38" aria-valuemin="0" aria-valuemax="100"></div>*}
{*                        </div>*}
{*                        <div class="t-12px t-gray-op6">3.1</div>*}
{*                    </div>*}
{*                </div>*}

{*            </div>*}
{*            <div class="d-flex flex-column">*}
{*                <div class="point d-flex justify-content-between">*}
{*                    <div class="t-12px t-gray-op6">{__('accuracy')}</div>*}
{*                    <div class="d-flex align-items-center">*}
{*                        <div class="progress w-75">*}
{*                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>*}
{*                        </div>*}
{*                        <div class="t-12px t-gray-op6">1.4</div>*}
{*                    </div>*}
{*                </div>*}
{*                <div class="point d-flex justify-content-between">*}
{*                    <div class="t-12px t-gray-op6">{__('location')}</div>*}
{*                    <div class="d-flex align-items-center">*}
{*                        <div class="progress w-75">*}
{*                            <div class="progress-bar" role="progressbar" style="width: 78%" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"></div>*}
{*                        </div>*}
{*                        <div class="t-12px t-gray-op6">4.4</div>*}
{*                    </div>*}
{*                </div>*}
{*                <div class="point d-flex justify-content-between">*}
{*                    <div class="t-12px t-gray-op6">{__('value')}</div>*}
{*                    <div class="d-flex align-items-center">*}
{*                        <div class="progress w-75">*}
{*                            <div class="progress-bar" role="progressbar" style="width: 38%" aria-valuenow="38" aria-valuemin="0" aria-valuemax="100"></div>*}
{*                        </div>*}
{*                        <div class="t-12px t-gray-op6">3.1</div>*}
{*                    </div>*}
{*                </div>*}
{*        </div>*}
    </div>
    </div>
    <div class="wrap_posts">
        <div class="posts d-flex justify-content-between">
            {foreach from=$discussion.posts_columns item="column" key="keyColumn"}
                <div class="{$keyColumn} flex-1 d-flex flex-column">
                    {foreach from=$column item="post" key="keyPost"}
                        <div class="post">
                            <div class="title d-flex">
                                <div class="face">
                                    <img src="images/my_module/host.png" width="36px" height="36px">
                                </div>
                                <div class="name d-flex flex-column">
                                    <span class="t-14px font-weight-500">{$post.name}</span>
                                    <span class="t-10px t-gray-op6">{$post.timestamp|date_format:"`$settings.Appearance.time_format`, `$settings.Appearance.date_format`"}</span>
                                </div>
                            </div>
                            <div class="message t-12px">
                                {$post.message}
                            </div>
                            <div class="photos">

                            </div>
                            <div class="video">

                            </div>
                            <div class="icons d-flex">
                                <div class="like t-blue-a t-12px font-weight-600 pointer">
                                    <svg width="12" height="11" viewBox="0 0 26 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M7.65939 0.504936C9.25279 0.569987 10.4918 1.17498 11.3372 1.76891C11.7598 2.06578 12.0811 2.35803 12.2952 2.57405C12.4021 2.68192 12.4817 2.77031 12.5334 2.83013C12.5593 2.86003 12.5781 2.88273 12.5898 2.89711L12.602 2.91225L12.6033 2.914L12.6036 2.9143L12.6038 2.91455L12.604 2.91486C12.6041 2.91501 12.6041 2.91501 12.604 2.91487L12.9998 3.42984L13.3955 2.91497L13.3956 2.91487L13.3956 2.91486L13.3958 2.91455L13.396 2.9143L13.3962 2.914L13.3976 2.91225L13.4098 2.89711C13.4215 2.88273 13.4403 2.86003 13.4661 2.83013C13.5178 2.77031 13.5975 2.68192 13.7044 2.57405C13.9184 2.35803 14.2398 2.06578 14.6624 1.76891C15.5078 1.17498 16.7468 0.569987 18.3402 0.504936C20.452 0.41884 22.4096 1.46816 23.7111 3.18826L23.7112 3.18849C25.9275 6.11424 24.9918 9.31142 23.0802 12.1647C21.4388 14.6147 19.1662 16.669 17.8613 17.8486C17.6483 18.0412 17.461 18.2104 17.3066 18.3543C16.0246 19.548 14.4406 20.9674 13.4937 21.8099L13.4934 21.8101C13.2092 22.0633 12.7891 22.0633 12.5049 21.8101L12.5046 21.8099C11.5578 20.9674 9.97371 19.548 8.69177 18.3543C8.53741 18.2105 8.35035 18.0414 8.13754 17.849C6.8328 16.6696 4.56008 14.6151 2.91863 12.1648C1.00718 9.31142 0.0713811 6.1142 2.28713 3.18844L2.28713 3.18844C3.58994 1.46814 5.54761 0.41884 7.65939 0.504936ZM7.65939 0.504936L7.67979 0.00535215L7.65939 0.504936Z" fill="#2466F6" />
                                    </svg>
                                    {__('like')}
                                    <span class="t-12px font-weight-600 t-gray">3</span>
                                </div>
                                <div class="share t-blue-a t-12px font-weight-600 pointer">
                                    {__('share')}
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
            {/foreach}
        </div>
        <div class="bot_discussion ">
            <div class="show_all d-flex pointer">
                <span class="t-14px font-weight-500">Show All {$discussion.search.total_items} reviews</span>
            </div>
            <div class="blur"></div>
        </div>

    </div>
</div>

{*
{if $discussion && $discussion.type != "Addons\\Discussion\\DiscussionTypes::TYPE_DISABLED"|enum}
    <div class="discussion-block" id="{if $container_id}{$container_id}{else}content_discussion{/if}">
        {if $wrap == true}
            {capture name="content"}
            {include file="common/subheader.tpl" title=$title}
        {/if}

        {if $subheader}
            <h4>{$subheader}</h4>
        {/if}

        <div id="posts_list_{$object_id}">
            {if $discussion.posts}
                {include file="common/pagination.tpl" id="pagination_contents_comments_`$object_id`" extra_url="&selected_section=discussion" search=$discussion.search}
                {foreach from=$discussion.posts item=post}
                    <div class="ty-discussion-post__content ty-mb-l">
                        {hook name="discussion:items_list_row"}
                            <div class="ty-discussion-post {cycle values=", ty-discussion-post_even"}" id="post_{$post.post_id}">

                                {if $discussion.type == "Addons\\Discussion\\DiscussionTypes::TYPE_COMMUNICATION"|enum
                                || $discussion.type == "Addons\\Discussion\\DiscussionTypes::TYPE_COMMUNICATION_AND_RATING"|enum
                                }
                                    <div class="ty-discussion-post__message">{$post.message|escape|nl2br nofilter}</div>
                                {/if}

                                <span class="ty-caret-bottom"><span class="ty-caret-outer"></span><span class="ty-caret-inner"></span></span>

                            </div>
                            <span class="ty-discussion-post__author">{$post.name}</span>
                            <span class="ty-discussion-post__date">{$post.timestamp|date_format:"`$settings.Appearance.date_format`, `$settings.Appearance.time_format`"}</span>
                        {if $discussion.type == "Addons\\Discussion\\DiscussionTypes::TYPE_RATING"|enum
                        || $discussion.type == "Addons\\Discussion\\DiscussionTypes::TYPE_COMMUNICATION_AND_RATING"|enum
                        && $post.rating_value > 0
                        }
                            <div class="clearfix ty-discussion-post__rating">
                                {include file="addons/discussion/views/discussion/components/stars.tpl" stars=$post.rating_value|fn_get_discussion_rating}
                            </div>
                        {/if}
                        {/hook}
                    </div>
                {/foreach}

                {include file="common/pagination.tpl" id="pagination_contents_comments_`$object_id`" extra_url="&selected_section=discussion" search=$discussion.search}
            {else}
                <p class="ty-no-items">{__("no_posts_found")}</p>
            {/if}
            <!--posts_list_{$object_id}--></div>

        {if $discussion.type !== "Addons\\Discussion\\DiscussionTypes::TYPE_DISABLED"|enum}
            {include
            file="addons/discussion/views/discussion/components/new_post_button.tpl"
            name=$new_post_title
            obj_id=$object_id
            object_type=$discussion.object_type
            locate_to_review_tab=$locate_to_review_tab
            }
        {/if}

        {if $wrap == true}
        {/capture}
            {$smarty.capture.content nofilter}
        {else}
            {capture name="mainbox_title"}{$title}{/capture}
        {/if}
    </div>
{/if}
*}