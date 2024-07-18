<section class="warranty">
   <div class="warranty__content">
      <div class="warranty__title pic-caption">
         <div class="pic-caption__inner">
            <div class="icon-wrapper icon-wrapper--lg">
               <svg class="svg-color-icon svg-color-icon_check-warranty" width="48" height="48">
                  <use xlink:href="#check-warranty"></use>
               </svg>
            </div>
            <span>{$resource.warranty_title}</span>
         </div>
      </div>
      {$resource.warranty_text}
      <p>
        <a 
          class="btn primary-btn bottom-btn w100-mob js-scroll-to" 
          href="#intro">
        <span>{'calc_insurance_btn' | option}</span>
        </a>
      </p>  
   </div>
</section>