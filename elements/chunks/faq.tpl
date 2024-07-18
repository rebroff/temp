{set $rows5 = json_decode($resource.faq, true)}
<section class="page-section">
   <h2 class="text-center">{$resource.faq_header}</h2>
   <div class="faq panel">
      {foreach $rows5 as $row}
      <div class="accordion">
         <div class="accordion__header js-open-accordion">
            <span class="icon-wrapper">
               <svg class="svg-icon" width="14" height="14">
                  <use xlink:href="{$themeUrl}images/sprite.svg#plus"></use>
               </svg>
               <svg class="svg-icon" width="14" height="2">
                  <use xlink:href="{$themeUrl}images/sprite.svg#minus"></use>
               </svg>
            </span>
            <span>{$row.faq_title}</span>
         </div>
         <div class="accordion__content">
            <blockquote class="quote">
               {$row.faq_text}
            </blockquote>
         </div>
      </div>
      {/foreach}
   </div>
</section>