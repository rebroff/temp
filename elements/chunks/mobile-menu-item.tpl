<div class="mobile-menu__item {$classnames}">
  {if $template == 7}
  <a class="mobile-menu__link js-scroll-to" href="{$content}" data-tab="{$tab_num}">
    <span class="mobile-menu__icon-wrapper">{$menu_icon}</span>
    <span class="mobile-menu__caption">{$menutitle}</span>
  </a>
  {elseif $template == 8}
  <a class="mobile-menu__link" href="{$content}" target="_blank">
     <span class="mobile-menu__icon-wrapper">{$menu_icon}</span>
      <span class="mobile-menu__caption">{$menutitle}</span>
  </a>
  {else}
  <a class="mobile-menu__link" href="{$link}">
    <span class="mobile-menu__icon-wrapper">{$menu_icon}</span>
    <span class="mobile-menu__caption">{$menutitle}</span>
  </a>
  {/if}
</div>
