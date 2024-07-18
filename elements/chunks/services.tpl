{set $rows4 = json_decode($startId | resource : 'srv_list', true)}
<section class="services" id="services">
   <div class="tabs js-tabs">
      <div class="tabs__buttons">
        {foreach $rows4 as $index => $row}
         <div class="tabs__btn js-open-tab {if $index == 0}_current{/if}">
            <span class="icon-wrapper">
               {$row.srv_icon}
            </span>
            <span>{$row.srv_short_title}</span>
         </div>
         {/foreach}
      </div>
      <div class="tabs__content">
         {foreach $rows4 as $index => $row}
         <div class="tabs__box {if $index == 0}_visible{/if}">
            <div class="service-card panel panel panel--colored">
               <div class="service-card__body">
                  <div class="service-card__title pic-caption">
                     <span class="pic-caption__icon-wrapper icon-wrapper">
                        {$row.srv_icon}
                     </span>
                     <span>{$row.srv_title}</span>
                  </div>
                  {$row.srv_text}
               </div>
               <div class="service-card__img-wrapper round-border round-border round-border--sm">
                  <picture>
                     <source type="image/webp" srcset="{$themeUrl}images/{$row.srv_pic}@2x.webp 2x, {$themeUrl}images/{$row.srv_pic}.webp 1x" />
                     <source srcset="{$themeUrl}images/{$row.srv_pic}@2x.png 2x, {$themeUrl}images/{$row.srv_pic}.png 1x" />
                     <img src="{$themeUrl}images/{$row.srv_pic}.png" alt="{$row.srv_short_title}" width="270" height="270" />
                  </picture>
               </div>
            </div>
         </div>
          {/foreach}
      </div>
   </div>
</section>