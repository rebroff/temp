{extends 'file:templates/base.tpl'}

{block 'content'}
<div class="page__inner wrapper">
  <div class="page__content page__content--default">
    <div class="content-wrapper panel">
      <h1>{$resource.pagetitle}</h1>
      {$resource.content}
    </div>
  </div>
</div>
{/block}