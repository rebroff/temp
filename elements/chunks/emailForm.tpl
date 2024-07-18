<form class="feedback-option__frm">
  <input type="hidden" name="car-code" class="js-car-code-target">
  <input type="hidden" name="ip-code" class="js-ip-code">
  <input type="hidden" name="order-code" class="js-order-code">
  <input type="hidden" name="credit-sum" class="js-sum-target">
   <input type="hidden" name="credit-term" class="js-term-target">
  <input type="hidden" name="order-service" class="js-service-target"> 
  <input type="hidden" name="feedback-type" value="Email">
  <div class="form-item form-item--sm-b-margin feedback-option__img">
      <picture>
         <source media="(min-width: 481px)" type="image/webp" srcset="assets/template/images/panda-phone-2@2x.webp 2x, assets/template/images/panda-phone-2.webp 1x">
         <source media="(min-width: 481px)" srcset="assets/template/images/panda-phone-2@2x.png 2x, assets/template/images/panda-phone-2.png 1x">
         <img src="">
      </picture>
   </div>
   <div class="form-item form-item--sm-b-margin">
      <input class="input" type="email" placeholder="Email" name="order-email">
   </div>
   <button class="btn btn primary-btn w100" type="submit">
     <span>{'calc_btn' | option}</span>
   </button>
</form>