{if $cabins!=0}
        <div class="card d-flex flex-column justify-content-end">
        <svg width="26" height="26" viewBox="0 0 26 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M14.9083 24.936L22.9083 23.1693C24.131 22.9 25.0003 21.8173 25.0003 20.5653V5.43462C25.0003 4.18395 24.131 3.09995 22.9083 2.83062L14.9083 1.06395C13.2443 0.695954 11.667 1.96262 11.667 3.66795V22.332C11.667 24.0373 13.2443 25.304 14.9083 24.936V24.936Z" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M17.9543 15.6347L19.2877 15.34C19.8983 15.2054 20.333 14.664 20.333 14.0387V11.9614C20.333 11.336 19.8983 10.7947 19.2877 10.66L17.9543 10.3654C17.121 10.1814 16.333 10.8147 16.333 11.6667V14.3334C16.333 15.1854 17.121 15.8187 17.9543 15.6347V15.6347Z" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M12.0293 23.6667H3.66667C2.19333 23.6667 1 22.4733 1 21V13" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M11.6667 3.66797H3.66667C2.19333 3.66797 1 4.8613 1 6.33464V13" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
        <span class="t-18px font-weight-600">{__('cabins')}</span>
        <span class="ty-lowercase t-11px t-blue">{$cabins} {__('cabins')}</span>
        </div>
{/if}

{if $sleep_place!=0}
        <div class="card d-flex flex-column justify-content-end">
                <svg width="30" height="24" viewBox="0 0 30 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M25.6665 12.0894H4.33317C2.85984 12.0894 1.6665 13.2827 1.6665 14.756V18.6667C1.6665 19.4027 2.26384 20 2.99984 20H26.9998C27.7358 20 28.3332 19.4027 28.3332 18.6667V14.756C28.3332 13.2827 27.1398 12.0894 25.6665 12.0894Z" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M3.6665 12.1733V12.0893C3.6665 9.83067 5.49717 8 7.75584 8H10.8665C12.7812 8 14.3332 9.552 14.3332 11.4667V12.0893" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M14.333 12.0893C14.333 9.83067 16.1637 8 18.4223 8H22.245C24.5037 8 26.3343 9.83067 26.3343 12.0893V12.1733" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M4.33301 9.85337V5.33337C4.33301 3.12404 6.12367 1.33337 8.33301 1.33337H21.6663C23.8757 1.33337 25.6663 3.12404 25.6663 5.33337V9.85337" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M27 20V22.6667" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M3 20V22.6667" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                <span class="t-18px font-weight-600">{__('sleeping_places')}</span>
                <span class=" t-11px t-blue">{$sleep_place} {__('beds')}</span>
        </div>
{/if}

{if $shower }
        <div class="card d-flex flex-column justify-content-end">
                <svg width="24" height="26" viewBox="0 0 24 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M9 7.66667C9 3.98533 11.9853 1 15.6667 1C19.348 1 22.3333 3.98533 22.3333 7.66667V25" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M12.2211 13.9973H5.77843C4.33843 13.9973 3.3211 12.5866 3.7771 11.22C4.48377 9.09729 6.4691 7.66663 8.70643 7.66663H9.2931C11.5291 7.66663 13.5158 9.09729 14.2224 11.22C14.6784 12.5866 13.6611 13.9973 12.2211 13.9973V13.9973Z" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M9 23.6666V25" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M9 19.6667V18.3334" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M16.9999 23.1999L16.2666 22.0933" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M13.3203 17.6666L14.0536 18.7733" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M4.68011 17.6666L3.94678 18.7733" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M1.73333 22.0933L1 23.1999" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                <span class="t-18px font-weight-600">{__('shower')}</span>
                <span class=" t-11px t-blue">{__('shower_text')}</span>
        </div>
{/if}

{if $kitchen }
        <div class="card d-flex flex-column justify-content-end">
                <svg width="25" height="27" viewBox="0 0 25 27" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M21 17.0693C18.7907 17.0693 17 15.2787 17 13.0693V5.06934C17 2.86 18.7907 1.06934 21 1.06934" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M21 1.06934H22.3333C23.0693 1.06934 23.6667 1.66667 23.6667 2.40267V25.0693" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M21 17.0667H23.6667" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M5.66665 12.4L5.65332 25" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M5.6665 8.4V1" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M1 1.11194V7.18127V7.06127C1 10.0066 3.08933 12.3946 5.66667 12.3946C8.244 12.3946 10.3333 10.0066 10.3333 7.06127V7.18127V1.11194" stroke="#0090F9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                <span class="t-18px font-weight-600">{__('kitchen')}</span>
                <span class=" t-11px t-blue">{__('kitchen_text')}</span>
        </div>
{/if}

