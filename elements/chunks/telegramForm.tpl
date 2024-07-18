<form class="feedback-frm">
   <input type="hidden" name="car-code" class="js-car-code-target">
   <input type="hidden" name="ip-code" class="js-ip-code">
   <input type="hidden" name="order-code" class="js-order-code">
   <input type="hidden" name="credit-sum" class="js-sum-target">
   <input type="hidden" name="credit-term" class="js-term-target">
   <input type="hidden" name="order-service" class="js-service-target"> 
<!--    <input type="hidden" name="order-type" class="js-order-type"> -->
   <input type="hidden" name="feedback-type" value="Telegram">
   
  <button class="feedback-frm__btn btn js-feedback-btn" type="submit">
    <div class="feedback-card feedback-card feedback-card--telegram">
      <div class="feedback-card__icon-wrapper">
         <svg class="svg-icon" width="54" height="46">
            <use xlink:href="assets/template/images/sprite.svg#telegram"></use>
         </svg>
         
         <svg class="spinner" width="24" height="24" viewbox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <g class="spinner__inner">
                          <circle cx="12" cy="2.5" r="1.5" opacity=".14"></circle>
                          <circle cx="16.75" cy="3.77" r="1.5" opacity=".29"></circle>
                          <circle cx="20.23" cy="7.25" r="1.5" opacity=".43"></circle>
                          <circle cx="21.50" cy="12.00" r="1.5" opacity=".57"></circle>
                          <circle cx="20.23" cy="16.75" r="1.5" opacity=".71"></circle>
                          <circle cx="16.75" cy="20.23" r="1.5" opacity=".86"></circle>
                          <circle cx="12" cy="21.5" r="1.5"></circle>
                        </g>
                      </svg>
         
      </div>
      <div class="feedback-card__title">Telegram
      </div>
    </div>
    
    <span class="btn secondary-btn check-btn">
      <span class="btn-icon-wrapper">
         <svg class="svg-icon" width="17" height="13">
            <use xlink:href="assets/template/images/sprite.svg#check"></use>
         </svg>
      </span>
      <span>Telegram</span>
    </span> 
  </button>
</form>