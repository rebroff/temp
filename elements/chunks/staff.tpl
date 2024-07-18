{set $startId = 'site_start' | option}

<section class="page-section staff">
   <header class="page-section__header text-center">
      <h2 class="page-section__title">{$startId | resource : 'staff_title'}</h2>
      <div class="page-section__subtitle">{$startId | resource : 'staff_subtitle'} 🇨🇿  </div>
   </header>
   <div class="staff-carousel splide js-s-carousel">
      <div class="splide__track">
        <div class="splide__list">
          
          <div class="staff-carousel__slide splide__slide">
            <!-- Person 1 -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper"> 
                <picture>
                   <source type="image/webp" srcset="{$themeUrl}images/managers/manager-1@2x.webp 2x, {$themeUrl}images/managers/manager-1.webp 1x" />
                   <source srcset="{$themeUrl}images/managers/manager-1@2x.png 2x, {$themeUrl}images/managers/manager-1.png 1x" />
                   <img src="{$themeUrl}images/managers/manager-1.png" alt="{$startId | resource : 'staff1_name'}" width="360" height="430" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                 <div class="figure__title text-accent">{$startId | resource : 'staff1_name'}</div>
                 {$startId | resource : 'staff1_desc'} &#128522;
              </figcaption>
            </figure>
            
             <!-- Person 2 -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper">  
                <picture>
                   <source type="image/webp" srcset="{$themeUrl}images/managers/manager-2@2x.webp 2x, {$themeUrl}images/managers/manager-2.webp 1x" />
                   <source srcset="{$themeUrl}images/managers/manager-2@2x.png 2x, {$themeUrl}images/managers/manager-2.png 1x" />
                   <img src="{$themeUrl}images/managers/manager-2.png" alt="{$startId | resource : 'staff2_name'}" width="360" height="430" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                 <div class="figure__title text-accent">{$startId | resource : 'staff2_name'}</div>
                 {$startId | resource : 'staff2_desc'}
              </figcaption>
             </figure>
            
             <!-- Person 3 -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper"> 
                <picture>
                   <source type="image/webp" srcset="{$themeUrl}images/managers/manager-3@2x.webp 2x, {$themeUrl}images/managers/manager-3.webp 1x" />
                   <source srcset="{$themeUrl}images/managers/manager-3@2x.png 2x, {$themeUrl}images/managers/manager-3.png 1x" />
                   <img src="{$themeUrl}images/managers/manager-3.png" alt="{$startId | resource : 'staff3_name'}" width="360" height="430" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                 <div class="figure__title text-accent">{$startId | resource : 'staff3_name'}</div>
                 {$startId | resource : 'staff3_desc'} 🐼
              </figcaption>
            </figure>
            
          </div>
          
          <div class="staff-carousel__slide splide__slide">
             <!-- Person 4 -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper">           
                <picture>
                   <source type="image/webp" srcset="{$themeUrl}images/managers/manager-4@2x.webp 2x, {$themeUrl}images/managers/manager-4.webp 1x" />
                   <source srcset="{$themeUrl}images/managers/manager-4@2x.png 2x, {$themeUrl}images/managers/manager-4.png 1x" />
                   <img src="{$themeUrl}images/managers/manager-4.png" alt="{$startId | resource : 'staff4_name'}" width="360" height="430" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                 <div class="figure__title text-accent">{$startId | resource : 'staff4_name'}</div>
                 {$startId | resource : 'staff4_desc'}
              </figcaption>
            </figure>
            
             <!-- Person 5 -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper">  
                <picture>
                   <source type="image/webp" srcset="{$themeUrl}images/managers/manager-5@2x.webp 2x, {$themeUrl}images/managers/manager-5.webp 1x" />
                   <source srcset="{$themeUrl}images/managers/manager-5@2x.png 2x, {$themeUrl}images/managers/manager-5.png 1x" />
                   <img src="{$themeUrl}images/managers/manager-5.png" alt="{$startId | resource : 'staff5_name'}" width="360" height="430" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                 <div class="figure__title text-accent">{$startId | resource : 'staff5_name'}</div>
                 {$startId | resource : 'staff5_desc'}
              </figcaption>
            </figure>
            
             <!-- Person 6 -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper">           
                <picture>
                   <source type="image/webp" srcset="{$themeUrl}images/managers/manager-6@2x.webp 2x, {$themeUrl}images/managers/manager-6.webp 1x" />
                   <source srcset="{$themeUrl}images/managers/manager-6@2x.png 2x, {$themeUrl}images/managers/manager-6.png 1x" />
                   <img src="{$themeUrl}images/managers/manager-6.png" alt="{$startId | resource : 'staff6_name'}" width="360" height="430" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                 <div class="figure__title text-accent">{$startId | resource : 'staff6_name'}</div>
                 {$startId | resource : 'staff6_desc'}
              </figcaption>
            </figure>
          
          </div>
          
          <div class="staff-carousel__slide splide__slide">
             <!-- Person 7 -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper">  
                <picture>
                   <source type="image/webp" srcset="{$themeUrl}images/managers/manager-7@2x.webp 2x, {$themeUrl}images/managers/manager-7.webp 1x" />
                   <source srcset="{$themeUrl}images/managers/manager-7@2x.png 2x, {$themeUrl}images/managers/manager-7.png 1x" />
                   <img src="{$themeUrl}images/managers/manager-7.png" alt="{$startId | resource : 'staff7_name'}" width="360" height="430" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                 <div class="figure__title text-accent">{$startId | resource : 'staff7_name'}</div>
                 {$startId | resource : 'staff7_desc'}
              </figcaption>
            </figure>
            
             <!-- Person 8 -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper"> 
                <picture>
                   <source type="image/webp" srcset="{$themeUrl}images/managers/manager-8@2x.webp 2x, {$themeUrl}images/managers/manager-8.webp 1x" />
                   <source srcset="{$themeUrl}images/managers/manager-8@2x.png 2x, {$themeUrl}images/managers/manager-8.png 1x" />
                   <img src="{$themeUrl}images/managers/manager-8.png" alt="{$startId | resource : 'staff8_name'}" width="360" height="430" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                 <div class="figure__title text-accent">{$startId | resource : 'staff8_name'}</div>
                 {$startId | resource : 'staff8_desc'} &#128522;️
              </figcaption>
            </figure>
            
             <!-- Person 9 -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper"> 
                <picture>
                   <source type="image/webp" srcset="{$themeUrl}images/managers/manager-9@2x.webp 2x, {$themeUrl}images/managers/manager-9.webp 1x" />
                   <source srcset="{$themeUrl}images/managers/manager-9@2x.png 2x, {$themeUrl}images/managers/manager-9.png 1x" />
                   <img src="{$themeUrl}images/managers/manager-9.png" alt="{$startId | resource : 'staff9_name'}" width="360" height="430" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                 <div class="figure__title text-accent">{$startId | resource : 'staff9_name'}</div>
                 {$startId | resource : 'staff9_desc'}
              </figcaption>
            </figure>
          
          </div>
          
          <div class="staff-carousel__slide staff-carousel__slide--single splide__slide">
             <!-- All -->
            <figure class="figure staff-carousel__item">
              <div class="staff-carousel__img-wrapper"> 
                <picture>
                    <source media="(max-width:1000px)" type="image/webp" srcset="{$themeUrl}images/managers/manager-all-mob@2x.webp 2x, {$themeUrl}images/managers/manager-all-mob.webp 1x" />
                    <source media="(max-width:1000px)" srcset="{$themeUrl}images/managers/manager-all-mob@2x.png 2x, {$themeUrl}images/managers/manager-all-mob.png 1x" />
                    <source type="image/webp" srcset="{$themeUrl}images/managers/manager-all@2x.webp 2x, {$themeUrl}images/managers/manager-all.webp 1x" />
                    <source srcset="{$themeUrl}images/managers/manager-all@2x.png 2x, {$themeUrl}images/managers/manager-all.png 1x" />
                    <img src="{$themeUrl}images/managers/manager-all.png" alt="{$startId | resource : 'staff10_name'}" width="770" height="508" />
                </picture>
              </div>
              <figcaption class="figure__caption staff-carousel__caption">
                 <div class="figure__title text-accent">{$startId | resource : 'staff10_name'}</div>
                 {$startId | resource : 'staff10_desc'}
              </figcaption>
            </figure>
          
          </div>      
          
        </div>
      </div> 
   </div>
</section>