<div class="main-menu__item {$classnames}">
  {if $template == 7}
  <a class="main-menu__link js-scroll-to" href="{$content}" data-tab="{$tab_num}">
    <span class="main-menu__icon-wrapper">{$menu_icon}</span>
    <span class="main-menu__caption">{$menutitle}</span>
  </a>
  {elseif $template == 8}
  <a class="main-menu__link" href="{$content}" target="_blank">
     <span class="main-menu__icon-wrapper">{$menu_icon}</span>
      <span class="main-menu__caption">{$menutitle}</span>
  </a>
  {else}
  <a class="main-menu__link" href="{$link}">
    <span class="main-menu__icon-wrapper">{$menu_icon}</span>
    <span class="main-menu__caption">{$menutitle}</span>
  </a>
  {/if}
</div>