{** block-description:tmpl_emotions_slider**}

<div class="slider main-padding">
    <div class="title_slider d-flex justify-content-between align-items-baseline">
        <div class="d-flex align-bottom">
            <span class="t-28px font-weight-bold">
                Memorable emotions
            </span>
            {include file="addons/my_module/blocks/common/link_banner.tpl" text="Explore all experiences (12)"}
        </div>
        <div class="nav nav_2">
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


    <div class="slider-field slider-collections non-hover d-flex">
        {for $i=0 to 6}
            <div  class="item" style="background-image: linear-gradient(to top, rgba(8, 10, 55, 0.73) 0%, rgba(8, 10, 55, 0.09) ),
                    url('https://s7d2.scene7.com/is/image/ritzcarlton/GettyImages-621114212?$LargeViewport42pct$'); {if $i>=3} display:none{/if}">
                <svg class="heart pointer" width="26" height="23" viewBox="0 0 26 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M7.65939 0.504936C9.25279 0.569987 10.4918 1.17498 11.3372 1.76891C11.7598 2.06578 12.0811 2.35803 12.2952 2.57405C12.4021 2.68192 12.4817 2.77031 12.5334 2.83013C12.5593 2.86003 12.5781 2.88273 12.5898 2.89711L12.602 2.91225L12.6033 2.914L12.6036 2.9143L12.6038 2.91455L12.604 2.91486C12.6041 2.91501 12.6041 2.91501 12.604 2.91487L12.9998 3.42984L13.3955 2.91497L13.3956 2.91487L13.3956 2.91486L13.3958 2.91455L13.396 2.9143L13.3962 2.914L13.3976 2.91225L13.4098 2.89711C13.4215 2.88273 13.4403 2.86003 13.4661 2.83013C13.5178 2.77031 13.5975 2.68192 13.7044 2.57405C13.9184 2.35803 14.2398 2.06578 14.6624 1.76891C15.5078 1.17498 16.7468 0.569987 18.3402 0.504936C20.452 0.41884 22.4096 1.46816 23.7111 3.18826L23.7112 3.18849C25.9275 6.11424 24.9918 9.31142 23.0802 12.1647C21.4388 14.6147 19.1662 16.669 17.8613 17.8486C17.6483 18.0412 17.461 18.2104 17.3066 18.3543C16.0246 19.548 14.4406 20.9674 13.4937 21.8099L13.4934 21.8101C13.2092 22.0633 12.7891 22.0633 12.5049 21.8101L12.5046 21.8099C11.5578 20.9674 9.97371 19.548 8.69177 18.3543C8.53741 18.2105 8.35035 18.0414 8.13754 17.849C6.8328 16.6696 4.56008 14.6151 2.91863 12.1648C1.00718 9.31142 0.0713811 6.1142 2.28713 3.18844L2.28713 3.18844C3.58994 1.46814 5.54761 0.41884 7.65939 0.504936ZM7.65939 0.504936L7.67979 0.00535215L7.65939 0.504936Z" fill="black" fill-opacity="0.2" stroke="white"/>
                </svg>
                <a class="pointer" href="/boats">
                    {*                    <img src="https://s7d2.scene7.com/is/image/ritzcarlton/GettyImages-621114212?$LargeViewport42pct$" >*}
                    <div class="title d-flex flex-column" >
                        <svg width="12" height="18" viewBox="0 0 12 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6 0.542969C2.68629 0.542969 0 3.25659 0 6.60403C0 10.0381 3.77486 15.1068 5.33657 17.0559C5.67943 17.4836 6.32057 17.4836 6.66343 17.0559C8.22514 15.1068 12 10.0381 12 6.60403C12 3.25659 9.31371 0.542969 6 0.542969ZM6 8.7687C4.81629 8.7687 3.85714 7.79979 3.85714 6.60403C3.85714 5.40827 4.81629 4.43937 6 4.43937C7.18371 4.43937 8.14286 5.40827 8.14286 6.60403C8.14286 7.79979 7.18371 8.7687 6 8.7687Z" fill="white"/>
                        </svg>
                        <span class="location t-white t-15px">Barcelona</span>
                        <span class="t-white t-21px font-weight-bold">Gastronomic Adventures in the Caribbean</span>
                        <span class="t-white t-15px">7 days, 4 lands, fresh seafood and more...</span>
                        <div class="button-explore d-flex">
                            <div class="t-15px font-weight-500 white">Explore</div>
                            <div class="blue">
                                <svg class="align-baseline" width="14" height="13" viewBox="0 0 14 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4.40833 0.780994V0.781018C4.4083 0.894441 4.43646 0.978681 4.47658 1.06312C4.4916 1.09473 4.50769 1.1252 4.525 1.15798C4.53169 1.17063 4.53855 1.18363 4.5456 1.19716C4.57037 1.24471 4.59613 1.29647 4.61924 1.35502C4.68056 1.51035 4.75405 1.72261 4.82223 1.96653C4.95843 2.45382 5.075 3.07615 5.075 3.66641C5.075 4.25671 4.95745 4.88363 4.82098 5.37653C4.75269 5.62317 4.67982 5.83825 4.61807 5.99698C4.59568 6.05457 4.5704 6.10665 4.54595 6.15499C4.53936 6.16802 4.53291 6.18063 4.52659 6.19297C4.509 6.22735 4.4925 6.25961 4.47715 6.29282C4.43655 6.38067 4.40823 6.46673 4.40833 6.5752V6.57526V6.66641C4.40834 6.75035 4.42621 6.83333 4.46075 6.90983C4.49529 6.98634 4.54571 7.05463 4.60866 7.11015C4.67162 7.16567 4.74567 7.20717 4.82589 7.23187C4.90612 7.25658 4.99068 7.26394 5.07397 7.25346L5.07403 7.25345L10.4073 6.58679L4.40833 0.780994ZM4.40833 0.780994V0.666411C4.40833 0.511081 4.4694 0.361979 4.57837 0.251284C4.68733 0.140589 4.83545 0.077177 4.99076 0.0747347L4.98958 -0.000255992L4.99049 0.0747385C5.03003 0.0742582 5.06952 0.0777424 5.10837 0.085139L5.10836 0.0851412M4.40833 0.780994L5.10836 0.0851412M5.10836 0.0851412L5.10892 0.0852419M5.10836 0.0851412L5.10892 0.0852419M5.10892 0.0852419L5.10893 0.0852442M5.10892 0.0852419L5.10893 0.0852442M5.10893 0.0852442L5.10894 0.0852456L5.10908 0.085271L5.10974 0.0853945L5.11262 0.0859349L5.12446 0.0882167C5.135 0.0902817 5.15079 0.0934479 5.17149 0.0977968C5.21289 0.106495 5.2739 0.119922 5.35174 0.138729C5.50745 0.176347 5.7304 0.235466 5.99844 0.321284C6.53476 0.493004 7.25025 0.771199 7.96825 1.19706C9.40424 2.04878 10.925 3.59331 10.925 5.99974C10.925 6.14385 10.8724 6.28301 10.7771 6.39109C10.6818 6.49916 10.5503 6.56874 10.4074 6.58678L5.10893 0.0852442ZM3.36465 12.9181L3.36465 12.9182L10.6667 12.9247L3.36465 12.9181ZM3.36465 12.9181L3.3607 12.9183M3.36465 12.9181L3.3607 12.9183M3.3607 12.9183L3.36068 12.9183M3.3607 12.9183L3.36068 12.9183M3.36068 12.9183L3.36064 12.9183M3.36068 12.9183L3.36064 12.9183M3.36064 12.9183L3.3604 12.9183L3.35892 12.9184L3.35233 12.9186C3.34636 12.9188 3.33726 12.919 3.32524 12.9191C3.30121 12.9194 3.26552 12.9192 3.21989 12.9173C3.12858 12.9137 2.99762 12.9037 2.84052 12.878C2.52603 12.8267 2.10864 12.7129 1.69491 12.4641C0.874674 11.9707 0.075 10.8743 0.075 8.65986C0.0750157 8.50294 0.137358 8.35246 0.248315 8.2415C0.359261 8.13055 0.509728 8.06821 0.666628 8.06818C0.666644 8.06818 0.666659 8.06818 0.666674 8.06818L13.3333 8.07469H13.3334C13.4903 8.07471 13.6408 8.13705 13.7517 8.24801C13.8627 8.35897 13.925 8.50945 13.925 8.66636C13.925 9.40434 13.5855 10.5626 13.0485 11.3588C12.5072 12.1614 11.7252 12.9247 10.6668 12.9247L3.36064 12.9183ZM6.0716 1.63774L5.9351 1.58723L6.03385 5.71198L5.96157 5.69196C5.96157 5.69197 5.96157 5.69197 5.96157 5.69197C5.95364 5.72062 5.94565 5.74419 5.9371 5.76877C5.93616 5.77149 5.9352 5.77424 5.93423 5.77702C5.92654 5.79909 5.91823 5.82291 5.90993 5.85059L5.87685 5.96086L5.99109 5.94656L9.58875 5.49604L9.66421 5.48659L9.65371 5.41126C9.43637 3.85297 8.45767 2.86192 7.36508 2.21388C6.9236 1.95203 6.52303 1.80428 6.1469 1.66554C6.12169 1.65624 6.09659 1.64699 6.0716 1.63774ZM1.46228 9.25152L1.37796 9.25147L1.38775 9.33522C1.53813 10.6224 1.88568 11.1984 2.30509 11.4507C2.55742 11.6025 2.80616 11.6737 2.99162 11.7071C3.08446 11.7238 3.1618 11.7311 3.21633 11.7342C3.24361 11.7357 3.26523 11.7362 3.28027 11.7363L3.29779 11.7363L3.30265 11.7362L3.30407 11.7361L3.30453 11.7361L3.30469 11.7361L3.30475 11.7361L3.30208 11.6612L3.3048 11.7361L3.30696 11.736C3.31596 11.7354 3.32498 11.735 3.33401 11.7349L10.6666 11.7414H10.6667C10.8845 11.7414 11.1307 11.6324 11.3706 11.4522C11.6122 11.2708 11.8551 11.0114 12.0674 10.6966C12.2004 10.4994 12.274 10.2426 12.3282 10.0001C12.3476 9.9131 12.3645 9.82879 12.3805 9.74881C12.4104 9.59932 12.4372 9.46493 12.4724 9.35612L12.5042 9.25809L12.4011 9.25803L1.46228 9.25152Z" fill="white" stroke="white" stroke-width="0.15"/>
                                </svg>
                                <span class="t-white t-15px">12</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        {/for}
    </div>

</div>