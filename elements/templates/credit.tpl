{extends 'file:templates/base.tpl'}

{block 'content'}
<div class="page__inner wrapper">
   <div class="page__content">
      
      <form class="intro-credit panel js-credit-calc" id="intro">
         <div class="intro-credit__inner">
            <div class="intro-credit__left">
               <h1 class="intro-credit__title">{$resource.top_title}</span>
               </h1>
               <div class="intro-credit__mobile-media">
                  <picture>
                     <source media="(max-width: 480px)" type="image/webp" srcset="{$themeUrl}images/panda-flag_480@2x.webp 2x, {$themeUrl}images/panda-flag_480.webp 1x">
                     <source media="(max-width: 480px)" srcset="{$themeUrl}images/panda-flag_480@2x.png 2x, {$themeUrl}images/panda-flag_480.png 1x">
                     <source media="(max-width: 800px)" type="image/webp" srcset="{$themeUrl}images/panda-flag@2x.webp 2x, {$themeUrl}images/panda-flag.webp 1x">
                     <source media="(max-width: 800px)" srcset="{$themeUrl}images/panda-flag@2x.png 2x, {$themeUrl}images/panda-flag.png 1x">
                     <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="панда страхование" title="" />
                  </picture>
               </div>
               <div class="intro-credit__panel">
                  <div class="intro-credit__desc">
                     {$resource.top_desc}
                  </div>
                  <div class="intro-credit__calc-controls">
                     <div class="credit-widjet credit-widjet--v">
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
                                 <div class="range-slider__units">года</div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="intro-credit__media">
               <picture>
                  <source media="(min-width: 801px)" type="image/webp" srcset="{$themeUrl}images/panda-flag@2x.webp 2x, {$themeUrl}images/panda-flag.webp 1x">
                  <source media="(min-width: 801px)" srcset="{$themeUrl}images/panda-flag@2x.png 2x, {$themeUrl}images/panda-flag.png 1x">
                  <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="панда страхование" title="" />
               </picture>
            </div>
         </div>
         <div class="intro-credit__footer panel">
            <div class="intro-credit__footer-col">
               <div class="intro-credit__calc-sum">
                  <span class="intro-credit__calc-sum-caption">
                     <span class="tooltip tooltip--inline js-tooltip" data-tooltip='{$resource.top_tooltip}'>
                        <svg class="svg-icon" width="22" height="22">
                           <use xlink:href="{$themeUrl}images/sprite.svg#info"></use>
                        </svg>
                     </span>
                     <!-- Ежемесячный платёж: -->
                  </span>
                  <span class="intro-credit__calc-sum-value">
                  <span class="js-credit-card-result">0</span> Kč {'_month' | option}</span>
               </div>
            </div>
            <div class="intro-credit__footer-col">
               <button class="btn primary-btn intro-credit__order-btn js-open-popup js-credit-send-btn" type="button" data-popup-id="order">
               <span>{'credit_btn' | option}</span>
               </button>
            </div>
         </div>
      </form>
      
      <section class="methods methods--left-content">
         <div class="methods__body panel">
            <h2 class="methods__title">{$resource.methods_title}</h2>
            <div class="methods__methods">
               <button class="btn lg-btn no-pointer" type="button">
                  <span class="btn-icon-wrapper btn-icon-wrapper--accent btn-icon-wrapper--telegram">
                     <svg class="svg-icon" width="21" height="18">
                        <use xlink:href="{$themeUrl}images/sprite.svg#telegram"></use>
                     </svg>
                  </span>
                  <span>Telegram</span>
               </button>
               <span>{'_or' | option}</span>
               <button class="btn lg-btn no-pointer" type="button">
                  <span class="btn-icon-wrapper btn-icon-wrapper--accent btn-icon-wrapper--whatsapp">
                     <svg class="svg-icon" width="27" height="27">
                        <use xlink:href="{$themeUrl}images/sprite.svg#whatsapp"></use>
                     </svg>
                  </span>
                  <span>WhatsApp</span>
               </button>
            </div>
            {$resource.methods_desc}
            <a class="btn primary-btn bottom-btn js-scroll-to" href="#intro">
            <span>{'credit_btn' | option}</span>
            </a>
         </div>
         <div class="methods__right">
            <figure class="figure">
               <picture>
                  <source media="(max-width: 480px)" type="image/webp" srcset="{$themeUrl}images/man-money_480@2x.webp 2x, {$themeUrl}images/man-money_480.webp 1x">
                  <source media="(max-width: 480px)" srcset="{$themeUrl}images/man-money_480@2x.png 2x, {$themeUrl}images/man-money_480.png 1x">
                  <source type="image/webp" srcset="{$themeUrl}images/man-money@2x.webp 2x, {$themeUrl}images/man-money.webp 1x">
                  <source srcset="{$themeUrl}images/man-money@2x.png 2x, {$themeUrl}images/man-money.png 1x">
                  <img src="{$themeUrl}images/man-money.png" alt="панда страхование" width="450" height="440" title="" />
               </picture>
               <figcaption class="figure__caption w100">
                  <p>{$resource.methods_boss}</p>
               </figcaption>
            </figure>
         </div>
      </section>
      
      <section class="page-section">
         <h2 class="page-section__title text-center">{$resource.scheme_title}</h2>
         <div class="how-works panel">
            <div class="how-works__body">
               <div class="steps">
                  {$resource.scheme} 
               </div>
            </div>
            <div class="how-works__media">
               <picture>
                  <source media="(min-width: 801px)" type="image/webp" srcset="{$themeUrl}images/woman-money@2x.webp 2x, {$themeUrl}images/woman-money.webp 1x">
                  <source media="(min-width: 801px)" srcset="{$themeUrl}images/woman-money@2x.png 2x, {$themeUrl}images/woman-money.png 1x">
                  <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="girl"/>
               </picture>
            </div>
         </div>
      </section>
      
      <section class="page-section">
         {$resource.why}
      </section>
      
      {include 'file:chunks/warranty_credit.tpl'}
      
      {include 'file:chunks/licenses.tpl'}
      
      {include 'file:chunks/staff.tpl'}
      
      {include 'file:chunks/leads.tpl'}
      
      {include 'file:chunks/services.tpl'}
      
      {include 'file:chunks/faq.tpl'}
   </div>
</div>
{/block}