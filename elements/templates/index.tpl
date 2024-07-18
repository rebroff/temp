{extends 'file:templates/base.tpl'}

{block 'content'}
<div class="page__inner wrapper">
   <div class="page__content">
      <div class="intro-car panel" id="intro">
         <div class="intro-car__left">
            <h1 class="intro-car__title">
              {$resource.top_title}
              {if $resource.top_tooltip}
              <span class="tooltip tooltip--inline js-tooltip" data-tooltip="{$resource.top_tooltip}">
                <svg class="svg-icon" width="22" height="22">
                 <use xlink:href="{$themeUrl}images/sprite.svg#info"></use>
                </svg>
              </span>
              {/if}
            </h1>
            <div class="intro-car__mobile-media">
               <picture>
                  <source media="(max-width: 480px)" type="image/webp" srcset="{$themeUrl}images/panda-car_480@2x.webp 2x, {$themeUrl}images/panda-car_480.webp 1x">
                  <source media="(max-width: 480px)" srcset="{$themeUrl}images/panda-car_480@2x.png 2x, {$themeUrl}images/panda-car_480.png 1x">
                  <source media="(max-width: 800px)" type="image/webp" srcset="{$themeUrl}images/panda-car@2x.webp 2x, {$themeUrl}images/panda-car.webp 1x">
                  <source media="(max-width: 800px)" srcset="{$themeUrl}images/panda-car@2x.png 2x, {$themeUrl}images/panda-car.png 1x">
                  <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="панда страхование" width="668" height="536" title="" />
               </picture>
            </div>
            <div class="intro-car__desc">
               <div class="marked-icon">
                  <div class="marked-icon__icon-wrapper">
                     <svg class="svg-icon" width="29" height="35">
                        <use xlink:href="{$themeUrl}images/sprite.svg#map-pin"></use>
                     </svg>
                  </div>
                  {$resource.top_desc}
                  </p>
               </div>
            </div>
            
            <form class="intro-car__frm no-notify">
               <div class="car-number-input form-item">
                  <div class="car-number-input__icon-wrapper">
                     <svg class="svg-color-icon svg-color-icon_cz" width="21" height="35">
                        <use xlink:href="#cz"></use>
                     </svg>
                  </div>
                  <input class="car-number-input__input input text-center js-car-code-source" type="text" placeholder="{'car_plch' | option}" />
               </div>
               <button class="btn primary-btn w100 form-item js-car-send-btn" type="button">
                 <span>{'calc_btn' | option}</span>
               </button>
               <button class="btn secondary-btn w100 form-item js-car-send-btn" data-new="true" type="button">
                  <span class="btn-icon-wrapper">
                     <svg class="svg-icon" width="22" height="14">
                        <use xlink:href="assets/template/images/sprite.svg#car"></use>
                     </svg>
                  </span>
                  <span>{'new_car_btn' | option}</span>
               </button>
            </form>
            
         </div>
         <div class="intro-car__media">
            <picture>
               <source media="(max-width: 480px)" type="image/webp" srcset="{$themeUrl}images/panda-car_480@2x.webp 2x, {$themeUrl}images/panda-car_480.webp 1x">
               <source media="(min-width: 801px)" type="image/webp" srcset="{$themeUrl}images/panda-car@2x.webp 2x, {$themeUrl}images/panda-car.webp 1x">
               <source media="(min-width: 801px)" srcset="{$themeUrl}images/panda-car@2x.png 2x, {$themeUrl}images/panda-car.png 1x">
               <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="панда страхование" width="746" height="550" title="" />
            </picture>
         </div>
      </div>
      
      <section class="methods">
         <div class="methods__left">
            <picture>
               <source media="(min-width: 761px)" type="image/webp" srcset="{$themeUrl}images/panda-phone@2x.webp 2x, {$themeUrl}images/panda-phone.webp 1x">
               <source media="(min-width: 761px)" srcset="{$themeUrl}images/panda-phone@2x.png 2x, {$themeUrl}images/panda-phone.png 1x">
               <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="панда страхование" title="" />
            </picture>
         </div>
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
                <span>
                  {'_or' | option}
                </span>
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
            <span>{'insurance_btn' | option}</span>
            </a>
         </div>
         <div class="methods__right">
            <picture>
               <source type="image/webp" srcset="{$themeUrl}images/man@2x.webp 2x, {$themeUrl}images/man.webp 1x">
               <source srcset="{$themeUrl}images/man@2x.png 2x, {$themeUrl}images/man.png 1x">
               <img src="{$themeUrl}images/man.png" alt="панда страхование" title="" />
            </picture>
         </div>
      </section>
      
      <section class="page-section company-stat">
         <h2 class="page-section__title text-center">
            {$resource.stat_title}
         </h2>
         <div class="panels-list">
            {set $rows = json_decode($resource.stat_params, true)}
            {foreach $rows as $row}
            <div class="info-panel panel">
               <div class="info-panel__value">{$row.stat_value}</div>
               <div class="info-panel__desc">{$row.stat_text}</div>
            </div>
            {/foreach}
         </div>
      </section>
      
      <section class="page-section">
        {$resource.why} 
      </section>
      
      {include 'file:chunks/warranty.tpl'}
      
      {include 'file:chunks/staff.tpl'}
      
      {include 'file:chunks/leads.tpl'}
      
      {include 'file:chunks/services.tpl'}
      
      {include 'file:chunks/faq.tpl'}
   </div>
</div>
{/block}