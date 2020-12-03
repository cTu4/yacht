<div class="weather bot-br-3">
        <div class="date">
            <div class="title t-28px font-weight-bold">
                {__('selected_dates')}
            </div>
            <div class="dates d-flex justify-content-between">
                <div class="left">
                    <span class="t-18px font-weight-500">
                        7 nights in Barcelona
                    </span>
                    <span class="t-18px t-gray-op6">Oct 8, 2020</span>
                    <span>
                        <svg width="18" height="16" viewBox="0 0 18 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g opacity="0.6">
                                <path d="M1.2002 8L16.8002 8" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M10.3003 1.5L16.8003 8L10.3003 14.5" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </g>
                        </svg>
                    </span>
                    <span class="t-18px t-gray-op6">Oct 15, 2020</span>
                </div>
                <div class="right pointer">
                    <svg width="26" height="26" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M19 7.99609H1" stroke="#2466F6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M6 1.87598V4.12598" stroke="#2466F6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M14 1.87598V4.12598" stroke="#2466F6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M16 20H4C2.343 20 1 18.657 1 17V6C1 4.343 2.343 3 4 3H16C17.657 3 19 4.343 19 6V17C19 18.657 17.657 20 16 20Z" stroke="#2466F6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                    <span class="t-18px t-blue-a font-weight-500 align-bottom">
                        {__('edit_dates')}
                    </span>
                </div>
            </div>
        </div>
        <div class="forecast">
            <div class="title t-28px font-weight-bold">
                {__('weather')}
            </div>
            <div class="img-map">
                <img style="width: 100%" src="images/my_module/weather.png" width="36" height="36" alt="">
                <div class="open-map pointer">
                    <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M1 13L13 1" stroke="#323232" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M7 1H13V7" stroke="#323232" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M7 13H1V7" stroke="#323232" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </div>
            </div>
            <div class="forecast-table d-flex flex-column">
                <div class="d-flex top">
                    <div class="item d-flex flex-column align-items-center">
                        <div class=" t-12px font-weight-500">
                            8 Mo
                        </div>
                        <div class="text-center">
                            <img src="images/my_module/weather/storm.png"  alt="">
                            <div class="t-9px t-gray">storm{*{__('sunny')}*}</div>
                        </div>
                        <div class="t-15px font-weight-500">
                            +24
                        </div>
                        <div class="margin-bottom t-11px font-weight-500 t-gray">
                            +19
                        </div>
                        <div class="margin-bottom t-11px font-weight-500 t-gray">
                            +19
                        </div>
                        <div class=" t-11px font-weight-500 t-gray">
                            7
                        </div>
                    </div>
                    {for $i=1 to 8}
                        <div class="item d-flex flex-column align-items-center">
                            <div class=" t-12px font-weight-500">
                                {$i} Mo
                            </div>
                                <div class="text-center">
                                    <img src="images/my_module/weather/sunny.png" alt="">
                                    <div class="t-9px t-gray">partly cloudy{*{__('sunny')}*}</div>
                                </div>
                                <div class="t-15px font-weight-500">
                                    +24
                                </div>
                                <div class="margin-bottom t-11px font-weight-500 t-gray">
                                    +19
                                </div>
                            <div class="margin-bottom t-11px font-weight-500 t-gray">
                                +19
                            </div>
                            <div class=" t-11px font-weight-500 t-gray">
                                7
                            </div>
                        </div>
                    {/for}

                    <div class="title title-1 d-flex">
                        <div class="t-9px">{__('water_temperature')}</div>
                        <div class="separator"></div>
                    </div>

                    <div class="title title-2 d-flex">
                        <div class="t-9px">{__('wind_m/s')}</div>
                        <div class="separator"></div>
                    </div>
                </div>





            </div>
        </div>
</div>