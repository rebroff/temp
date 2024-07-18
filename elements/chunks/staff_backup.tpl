<section class="page-section staff">
   <header class="page-section__header text-center">
      <h2 class="page-section__title">{$resource.staff_title}</h2>
      <div class="page-section__subtitle">{$resource.staff_subtitle}🇨🇿</div>
   </header>

   <div class="staff-carousel splide js-s-carousel">
      <div class="splide__track">
        <div class="splide__list">
          {set $rows3 = $resource.staff_list | fromJSON}
          {foreach $rows3 as $index => $row}
          {set $num = $index != 9 ? $index + 1 : 'all'}
          {if $index | in : [0,3,6,9]}
          <div class="staff-carousel__slide splide__slide {$index == 9 ? 'staff-carousel__slide--single' : ''}">
          {/if}  
            <!-- Person {$num} -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper"> 
                <picture>
                  {if $index == 9}
                  <source 
                    media="(max-width:1000px)" 
                    type="image/webp" 
                    srcset="{$themeUrl}images/managers/manager-all-mob@2x.webp 2x, 
                            {$themeUrl}images/managers/manager-all-mob.webp 1x" />
                  <source 
                    media="(max-width:1000px)" 
                    srcset="{$themeUrl}images/managers/manager-all-mob@2x.png 2x, 
                            {$themeUrl}images/managers/manager-all-mob.png 1x" />
                  {/if}
                  <source 
                    type="image/webp" 
                    srcset="{$themeUrl}images/managers/manager-{$num}@2x.webp 2x, 
                            {$themeUrl}images/managers/manager-{$num}.webp 1x" />
                  <source 
                    srcset="{$themeUrl}images/managers/manager-{$num}@2x.png 2x, 
                            {$themeUrl}images/managers/manager-{$num}.png 1x" />
                  <img 
                    src="{$themeUrl}images/managers/manager-{$num}.png" 
                    alt="{$row.staff_name}" 
                    width="{$index != 9 ? '360' : '770'}" 
                    height="{$index != 9 ? '430' : '508'}" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                <div class="figure__title text-accent">{$row.staff_name}</div>
                {$row.staff_desc} 
              </figcaption>
            </figure>

          {if $index | in : [2,5,8,9]}  
          </div>
          {/if}
          {/foreach}
        </div>
      </div> 
   </div>
</section>