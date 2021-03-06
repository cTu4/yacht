{** block-description:tmpl_challenges_slider**}

<div class="slider main-padding">
    <div class="title_slider d-flex justify-content-between align-items-baseline">

        <div class="d-flex align-bottom">
            <span class="t-28px font-weight-bold">
            Challenges & Insites
            </span>
            {include file="addons/my_module/blocks/common/link_banner.tpl" text="See all future events (8)"}
        </div>
        <div class="nav">
            <span class="info_slider t-14px">1 of 3 pages</span>
            <div class="prev owl-prev pointer">
                <svg width="11" height="6" viewBox="0 0 17 10" fill="#000" xmlns="http://www.w3.org/2000/svg">
                    <path d="M2.60515 0.444191L8.50761 6.33637L14.4101 0.444191C15.0034 -0.148064 15.9617 -0.148064 16.555 0.444191C17.1483 1.03645 17.1483 1.99317 16.555 2.58542L9.57248 9.55581C8.97919 10.1481 8.0208 10.1481 7.42752 9.55581L0.444966 2.58542C-0.148322 1.99317 -0.148322 1.03645 0.444966 0.444191C1.03825 -0.132878 2.01186 -0.148064 2.60515 0.444191Z" fill="#000"/>
                </svg>
            </div>
            <div class="next owl-next pointer">
                <svg width="11" height="6" viewBox="0 0 17 10" fill="#000" xmlns="http://www.w3.org/2000/svg">
                    <path d="M2.60515 0.444191L8.50761 6.33637L14.4101 0.444191C15.0034 -0.148064 15.9617 -0.148064 16.555 0.444191C17.1483 1.03645 17.1483 1.99317 16.555 2.58542L9.57248 9.55581C8.97919 10.1481 8.0208 10.1481 7.42752 9.55581L0.444966 2.58542C-0.148322 1.99317 -0.148322 1.03645 0.444966 0.444191C1.03825 -0.132878 2.01186 -0.148064 2.60515 0.444191Z" fill="#000"/>
                </svg>
            </div>
        </div>
    </div>


    <div class="slider-field slider-challenges non-hover d-flex">
        {for $i=0 to 5}
            <div  class="item" style="{if $i>=2} display:none;{/if}">
                <a class="pointer" href="/boats">
                    <img src="https://interparus.com/wp-content/uploads/2020/05/izmatyvayushhaya-zhestkaya-lishennaya-i-nameka-na-komfort-takoj-yavlyaetsya-the-ocean-race-samaya-zhelannaya-gonka-dlya-yahtsmenov.jpg" >
                    <span class="title">
                        <span class="t-white t-25px font-weight-bold">Cannes Yachting Festival 2020</span><br />
                        <span class="t-white t-15px">The Vieux Port will continue to host the latest powerboat and motor yachts, while Port Canto will become the new home for sale. September 10 – 14</span>
                    </span>
                    <span class="icon-event">
                        <img src="images/my_module/event-check.png">
                    </span>
                </a>
            </div>
        {/for}
    </div>

</div>