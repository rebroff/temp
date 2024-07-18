<section id="leads" class="page-section">
   <div class="bordered-caption bordered-caption--limited-mob h1">
      <div class="bordered-caption__inner">
        {$startId | resource : 'lead_title'} 
      </div>
   </div>
   <div class="car-lead lead-panel panel">
      <div class="car-lead__desc">
         <div class="pic-caption">
            <div class="icon-wrapper icon-wrapper--lg">
               <svg class="svg-color-icon svg-color-icon_car-heart" width="57" height="49">
                  <use xlink:href="#car-heart"></use>
               </svg>
            </div>
            <span>{$startId | resource : 'lead_title1'} </span>
         </div>
         {$startId | resource : 'lead_text1'} 
      </div>
      <form class="car-lead__frm">
         <div class="car-number-input form-item">
            <div class="car-number-input__icon-wrapper">
               <svg class="svg-color-icon svg-color-icon_cz" width="21" height="35">
                  <use xlink:href="#cz"></use>
               </svg>
            </div>
            <input class="car-number-input__input input text-center js-car-code-source" type="text" placeholder="{'car_plch' | option}" />
         </div>
         <div class="row form-item">
            <button class="btn primary-btn js-car-send-btn" type="button">
            <span>{'buy_btn' | option}</span>
            </button>
            <button class="btn secondary-btn js-car-send-btn" data-new="true" type="button">
            <span>{'no_number_btn' | option}</span>
            </button>
         </div>
      </form>
   </div>
   <form class="credit-lead js-credit-calc">
      <div class="credit-lead__main panel">
         <div class="pic-caption">
            <div class="icon-wrapper icon-wrapper--lg">
               <svg class="svg-color-icon svg-color-icon_money-bank" width="53" height="60">
                  <use xlink:href="#money-bank"></use>
               </svg>
            </div>
            <span>{$startId | resource : 'lead_title2'} </span>
         </div>
         {$startId | resource : 'lead_text2'} 
         <div class="credit-lead__controls">
            <div class="credit-widjet">
               <div class="credit-widjet__item">
                  <div class="credit-widjet__label">{'credit_sum' | option}</div>
                  <div class="range-slider js-range-slider" data-start="600000" data-min="50000" data-max="1000000" data-step="50000">
                     <div class="range-slider__range">
                     </div>
                     <div class="range-slider__input-holder">
                        <input class="range-slider__input input js-credit-calc-sum-input js-sum-source" type="text" />
                        <div class="range-slider__units">Kč
                        </div>
                     </div>
                  </div>
               </div>
               <div class="credit-widjet__item">
                  <div class="credit-widjet__label">{'credit_term' | option}</div>
                  <div class="range-slider years-range-slider js-range-slider" data-start="5" data-min="1" data-max="10" data-step="1">
                     <div class="range-slider__range">
                     </div>
                     <div class="range-slider__input-holder">
                        <input class="range-slider__input input js-credit-calc-term-input js-term-source" type="text" />
                        <div class="range-slider__units">года
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="credit-lead__total panel">
         <div class="credit-lead__sum">
            <span class="credit-lead__sum-caption">{'credit_month' | option}</span>
            <span class="credit-lead__sum-value">
            <span class="js-credit-card-result">0</span> Kč
            </span>
         </div>
         <button class="btn primary-btn js-credit-send-btn" type="button">
         <span>{'credit_btn' | option}</span>
         </button>
      </div>
   </form>
</section>