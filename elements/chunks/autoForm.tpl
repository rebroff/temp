<form class="intro-car__frm no-notify">
   <div class="car-number-input form-item">
      <div class="car-number-input__icon-wrapper">
         <svg class="svg-color-icon svg-color-icon_cz" width="21" height="35">
            <use xlink:href="#cz"></use>
         </svg>
      </div>
      <input class="car-number-input__input input text-center js-car-code-source" type="text" placeholder="SPZ / Номер авто" />
   </div>
   <button class="btn primary-btn w100 form-item" type="submit">
     <span>{'calc_btn' | option}</span>
   </button>
   <button class="btn secondary-btn w100 form-item" type="button">
      <span class="btn-icon-wrapper">
         <svg class="svg-icon" width="22" height="14">
            <use xlink:href="assets/template/images/sprite.svg#car"></use>
         </svg>
      </span>
      <span>Новая машина</span>
   </button>
</form>