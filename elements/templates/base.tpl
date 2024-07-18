{$_modx->lexicon->load('babel:translate')}

<!DOCTYPE html>
<html lang="ru">
    <head>
        {set $startId = 'site_start' | option}
        {set $resource = $_modx->resource}
        {set $pagetitle = $resource.pagetitle}
        {set $title = $resource.longtitle ?: $pagetitle}
        {set $description = $resource.description | replace :' "':' «' | replace :'"':'»'}
        {set $page_url = $_modx->makeUrl($_modx->resource.id,'','','full')}
        {set $site_url = 'site_url' | config}
        {set $assets_url = 'assets_url' | option}
        {set $themeUrl = $assets_url~'template/'}
        {set $imagesUrl = $themeUrl~'{$themeUrl}images/'}
    
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, initial-scale=1.0">
        <title>{$title}</title>
        <base href="{$site_url}">
        <link rel="canonical" href="{$page_url}" />
        <meta name="keywords" content="{$_modx->getPlaceholder('seoPro.keywords')}">
        <meta name="description" content="{$description? : $pagetitle}">
        <meta name="robots" content="{$_modx->getPlaceholder('seoTab.robotsTag')}">
    
        <!-- Facebook Open Graph -->
        <meta property="og:title" content="{$_modx->resource.og_title?:$pagetitle}"/>
        <meta property="og:description" content="{$_modx->resource.og_desc?:$description}"/>
        <meta property="og:image" content="{$_modx->resource.og_image}"/>
        <meta property="og:type" content="{$_modx->resource.og_type?:'website'}"/>
        <meta property="og:url" content= "{$page_url}" />
    
        <!-- Twitter Card -->
        <meta name="twitter:card" content="summary">
        <meta name="twitter:site" content="@site_account">
        <meta name="twitter:creator" content="@individual_account">
        <meta name="twitter:url" content="{$page_url}">
        <meta name="twitter:title" content="{$_modx->resource.twitter_title?:$title}">
        <meta name="twitter:description" content="{$_modx->resource.twitter_desc?:$description}">
        <meta name="twitter:image" content="{$_modx->resource.twitter_image}">
    
        <!-- Schema.org -->
        <meta itemprop="name" content="{$_modx->resource.schema_name?:$title}">
        <meta itemprop="description" content="{$_modx->resource.schema_desc?:$description}">
        <meta itemprop="image" content="{$_modx->resource.schema_image}">
    
        <link rel="icon" href="{$themeUrl}favicon.ico" sizes="any">
        <link rel="icon" href="{$themeUrl}icon.svg" type="image/svg+xml">
        <link rel="apple-touch-icon" href="{$themeUrl}apple-touch-icon.png">
        <link rel="manifest" href="{$themeUrl}manifest.webmanifest">
        <link rel="stylesheet" href="{$themeUrl}css/style.min.css?v=4">
    </head>
    <body>
        
        <div class="page">
            <!-- begin .page-header-->
            <header class="page-header">
              <div class="page-header__inner wrapper">
                <a class="page-header__logo" href="{$site_url}">
                  <img src="{$themeUrl}images/logo.svg" width="163" height="44" alt="панда страхование">
                </a>
                
                <nav class="main-menu js-main-menu">
                  {'!pdoMenu' | snippet : [
        						'parents' => 0,
        						'level' => 1,
        						'includeTVs' => 'tab_num,menu_icon',
        						'tpl' => '@FILE chunks/menu-item.tpl',
        						'tplOuter' => '@INLINE {$wrapper}',
        						'hereClass' => '_current'
        					]}
                </nav>
                
                <a class="phone-link page-header__phone" href="tel:+420220770002">
                  <div class="icon-wrapper">
                    <svg class="svg-icon" width="22" height="22">
                      <use xlink:href="{$themeUrl}images/sprite.svg#phone"></use>
                    </svg>
                  </div>
                  <span>+420 220 770 002</span>
                </a>
                
                <div class="page-header__lng lng">
                  {'!BabelLinks' | snippet : [
                    'ignoreSiteStatus'=>1,
                    'tpl'=>'lngTpl',
                    'showCurrent'=>1,
                    'activeCls' => '_current'
                  ]}
                </div>                
                
                <button class="btn open-mobile-menu-btn js-toggle-mobile-menu" type="button">
                  <div class="icon-wrapper">
                    <svg class="svg-icon" width="22" height="14">
                      <use xlink:href="{$themeUrl}images/sprite.svg#menu"></use>
                    </svg>
                  </div>
                </button>
              </div>
            </header>
            <!-- end .page-header-->
            
            {block 'content'}
            {/block}
            

            <!-- begin .page-footer-->
            <footer class="page-footer">
              <div class="page-footer__inner wrapper">
                <div class="page-footer__row">
                  <div class="page-footer__col">
                    <p>
                      <strong>Red Panda s.r.o. – zajišťuje služby a servis klientům</strong>
                    </p>
                    <p>IČO: 08569258</p>
                    <p>
                      <a href="tel:+420220770001">+420 220 770 001</a>
                    </p>
                    <p>
                      <a href="mailto:info@redpanda.cz">info@redpanda.cz</a>
                    </p>
                    <p>
                    <address>Václavské náměstí 808/66, Praha 1, Office: 214, 215</address>
                    </p>
                  </div>
                  <div class="page-footer__col">
                    <p>
                      <strong>Isakov Nikolay — zajišťuje zprostředkování bankovních služeb</strong>
                    </p>
                    <p>jako Vázaný zástupce IČO:02384957</p>
                    <p>Zastoupený: BEplan finanční plánování s.r.o.</p>
                    <p>IČO:28623151</p>
                  </div>
                  <div class="page-footer__col">
                    <div class="secondary-menu">
                      {set $infoParentId = '!BabelTranslation' | snippet : ['resourceId' => 77, 'contextKey' => '!getContext' | snippet]}
                      {'!pdoMenu' | snippet : [
                    		'parents' => $infoParentId,
                    		'tpl' => '@INLINE  <a class="secondary-menu__link" href="{$link}">{$menutitle}</a>',
                    		'tplOuter' => '@INLINE {$wrapper}',
                    		'hereClass' => '_current',
                    		'showHidden' => 1
                    	]}
                    </div>
                  </div>
                </div>
                <div class="page-footer__bottom">
                  <div class="copy">
                    <strong>© 2022-{'!getCurrentYear' | snippet} RedPanda</strong>
                  </div>
                  <div class="created">
                    <strong>design by @mmetrin</strong>
                  </div>
                </div>
              </div>
            </footer>
            <!-- end .page-footer-->
        </div>
        
        <!-- start .mobile-menu-->
        <div class="mobile-menu js-mobile-menu">
          {'!pdoMenu' | snippet : [
        		'parents' => 0,
        		'level' => 1,
        		'includeTVs' => 'tab_num,menu_icon',
        		'tpl' => '@FILE chunks/mobile-menu-item.tpl',
        		'tplOuter' => '@INLINE {$wrapper}',
        		'hereClass' => '_current'
        	]}

            <a class="phone-link" href="tel:+420220770002">
              <div class="icon-wrapper">
                <svg class="svg-icon" width="22" height="22">
                  <use xlink:href="{$themeUrl}images/sprite.svg#phone"></use>
                </svg>
              </div>
              <span>+420 220 770 002</span>
            </a>
            <div class="lng page-footer__lng">
              {'!BabelLinks' | snippet : [
                'ignoreSiteStatus'=>1,
                'tpl'=>'lngTpl',
                'showCurrent'=>1,
                'activeCls' => '_current'
              ]}
            </div>
            <button class="mobile-menu__close-btn btn js-toggle-mobile-menu" type="button">
              <svg class="svg-icon" width="14" height="14">
                <use xlink:href="{$themeUrl}images/sprite.svg#close"></use>
              </svg>
            </button>
        </div>
        <!-- end .mobile-menu-->
         
        <!-- begin .popups-->
        <div class="popup popup--feedback js-popup js-feedback-popup" id="order-car">
            <div class="popup__inner">
              <div class="stages js-stages">
                <div class="stage _visible" id="stage-1">
                  <div class="popup__title text-center">{'car_popup_title' | option}</div>
                  <div class="feedback-list">
                    
                    <!-- WhatsApp -->
                    <div class="feedback-list__item">
                      {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/whatsappForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'WhatsApp',
                      	'formFields'=>'car-code,ip-code,order-code,feedback-type',
                      	'fieldNames'=>'car-code==Номер машины,ip-code=ip,order-code==Номер заказа',
                      
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validationErrorMessage'=>$_modx->getPlaceholder('+error_message'),
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List1'
                      ])}
                    </div>
                    
                    <!-- Telegram -->
                    <div class="feedback-list__item">
                      {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/telegramForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'Telegram',
                      	'formFields'=>'car-code,ip-code,order-code,feedback-type',
                      	'fieldNames'=>'car-code==Номер машины,ip-code=ip,order-code==Номер заказа',
                      
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validationErrorMessage'=>$_modx->getPlaceholder('+error_message'),
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List1'
                      ])}
                    </div>
                    
                    <!-- Phone btn-->
                    {include 'file:chunks/feedback/phone.tpl'}
                    
                    <!-- Email btn -->
                    {include 'file:chunks/feedback/email.tpl'}
                    
                  </div>
                </div>
                
                <div class="stage" id="stage-2">
                  <div class="popup__title text-center">{'car_popup_phone_title' | option}</div>
                  <div class="feedback-option">
                    
                    <!-- Phone pic-->
                    {include 'file:chunks/feedback/phonePicture.tpl'}
                    
                    {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/phoneForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'Phone',
                      	'formFields'=>'car-code,ip-code,order-code,feedback-type,order-phone',
                      	'fieldNames'=>'car-code==Номер машины,ip-code=ip,order-code==Номер заказа,feedback-type==Тип связи,order-phone==Телефон',
                        'validate' => 'order-phone:required', 
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validationErrorMessage'=>$_modx->getPlaceholder('+error_message'),
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List1'
                    ])}
                    
                  </div>
                  
                  {include 'file:chunks/feedback/backLink.tpl'}
                  
                </div>
                <div class="stage" id="stage-3">
                  <div class="popup__title text-center">{'car_popup_email_title' | option}</div>
                  <div class="feedback-option">
                    
                    <!-- Email pic-->
                    {include 'file:chunks/feedback/emailPicture.tpl'} 
                    
                    {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/emailForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'Email',
                      	'formFields'=>'car-code,ip-code,order-code,feedback-type,order-email',
                      	'fieldNames'=>'car-code==Номер машины,ip-code=ip,order-code==Номер заказа,feedback-type==Тип связи,order-email==Email',
                        'validate' => 'order-email:required', 
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                        'validationErrorMessage'=>$_modx->getPlaceholder('+error_message'),
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List1'
                    ])}
                    
                  </div>
                  
                  {include 'file:chunks/feedback/backLink.tpl'}
                  
                </div>
              </div>
              
              {include 'file:chunks/feedback/privacy.tpl'}
              
              <button class="popup__close-btn btn icon-btn js-close-popup" type="button">
                <svg class="svg-icon" width="14" height="14">
                  <use xlink:href="{$themeUrl}images/sprite.svg#close"></use>
                </svg>
              </button>
              
            </div>
        </div>
        
        <div class="popup popup--feedback js-popup js-feedback-popup" id="order-credit">
            <div class="popup__inner">
              <div class="stages js-stages">
                <div class="stage _visible" id="stage-1">
                  <div class="popup__title text-center">{'credit_popup_title' | option}</div>
                  <div class="feedback-list">
                    
                    <!-- WhatsApp -->
                    <div class="feedback-list__item">
                      {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/whatsappForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'WhatsApp',
                      	'formFields'=>'credit-sum,credit-term,ip-code,order-code,feedback-type',
                      	'fieldNames'=>'credit-sum==Сумма кредита,credit-term==Срок кредита,ip-code=ip,order-code==Номер заказа',
                      	'validate'=>'credit-sum:required,credit-term:required,order-code:required,feedback-type:required',
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validationErrorMessage'=>$_modx->getPlaceholder('+error_message'),
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List2',
                        'gsFields' => 'credit-sum,credit-term,ip-code,order-code,feedback-type'
                      ])}
                    </div>
                    
                    <!-- Telegram -->
                    <div class="feedback-list__item">
                      {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/telegramForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'Telegram',
                      	'formFields'=>'credit-sum,credit-term,ip-code,order-code,feedback-type',
                      	'fieldNames'=>'credit-sum==Сумма кредита,credit-term==Срок кредита,ip-code=ip,order-code==Номер заказа',
                      	'validate'=>'credit-sum:required,credit-term:required,order-code:required,feedback-type:required',
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validationErrorMessage'=>$_modx->getPlaceholder('+error_message'),
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List2',
                        'gsFields' => 'credit-sum,credit-term,ip-code,order-code,feedback-type'
                      ])}
                    </div>
                    
                    <!-- Phone btn-->
                    {include 'file:chunks/feedback/phone.tpl'}
                    
                    <!-- Email btn -->
                    {include 'file:chunks/feedback/email.tpl'}
                    
                  </div>
                </div>
                
                <div class="stage" id="stage-2">
                  <div class="popup__title text-center">{'credit_popup_phone_title' | option}</div>
                  <div class="feedback-option">
                    
                    <!-- Phone pic-->
                    {include 'file:chunks/feedback/phonePicture.tpl'}
                    
                    {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/phoneForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'Phone',
                      	'formFields'=>'credit-sum,credit-term,ip-code,order-code,feedback-type,order-phone',
                      	'fieldNames'=>'credit-sum==Сумма кредита,credit-term==Срок кредита,ip-code=ip,order-code==Номер заказа,order-phone==Телефон',
                      	'validate'=>'credit-sum:required,credit-term:required,order-code:required,feedback-type:required,order-phone:required',
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validate' => 'order-phone:required', 
                      	'validationErrorMessage'=>$_modx->getPlaceholder('+error_message'),
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List2',
                        'gsFields' => 'credit-sum,credit-term,ip-code,order-code,feedback-type,order-phone'
                    ])}
                    
                  </div>
                  
                  {include 'file:chunks/feedback/backLink.tpl'}
                  
                </div>
                
                <div class="stage" id="stage-3">
                  <div class="popup__title text-center">{'credit_popup_email_title' | option}</div>
                  <div class="feedback-option">
                    
                    <!-- Email pic-->
                    {include 'file:chunks/feedback/emailPicture.tpl'}
                    
                    {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/emailForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'Email',
                      	'formFields'=>'credit-sum,credit-term,ip-code,order-code,feedback-type,order-email',
                      	'fieldNames'=>'credit-sum==Сумма кредита,credit-term==Срок кредита,ip-code=ip,order-code==Номер заказа,order-emal==Email',
                      	'validate'=>'credit-sum:required,credit-term:required,order-code:required,feedback-type:required,order-email:required:email',
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validate' => 'order-email:required:email', 
                      	'validationErrorMessage'=>$_modx->getPlaceholder('+error_message'),
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List2',
                        'gsFields' => 'credit-sum,credit-term,ip-code,order-code,feedback-type,ignore,order-email'
                    ])}

                  </div>
                  
                  {include 'file:chunks/feedback/backLink.tpl'}
                  
                </div>
              </div>
              
              {include 'file:chunks/feedback/privacy.tpl'}
              
              <button class="popup__close-btn btn icon-btn js-close-popup" type="button">
                <svg class="svg-icon" width="14" height="14">
                  <use xlink:href="{$themeUrl}images/sprite.svg#close"></use>
                </svg>
              </button>
            </div>
        </div>
        
        <div class="popup popup--feedback js-popup js-feedback-popup" id="order-service">
            <div class="popup__inner">
              <div class="stages js-stages">
                <div class="stage _visible" id="stage-1">
                  <div class="popup__title text-center">{'car_popup_title' | option}</div>
                  <div class="feedback-list">
                    
                    <!-- WhatsApp -->
                    <div class="feedback-list__item">
                      {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/whatsappForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'WhatsApp',
                      	'formFields'=>'order-service,ip-code,order-code,feedback-type',
                      	'fieldNames'=>'order-service==Вид страхования,ip-code=ip,order-code==Номер заказа',
                      
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validationErrorMessage'=>'Форма заполнена с ошибками!',
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List3',
                        'gsFields' => 'order-service,ip-code,order-code,feedback-type'
                      ])}
                    </div>
                    
                    <!-- Telegram -->
                    <div class="feedback-list__item">
                      {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/telegramForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'Telegram',
                      	'formFields'=>'order-service,ip-code,order-code,feedback-type',
                      	'fieldNames'=>'order-service==Вид страхования,ip-code=ip,order-code==Номер заказа',
                      
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validationErrorMessage'=>'Форма заполнена с ошибками!',
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List3',
                        'gsFields' => 'order-service,ip-code,order-code,feedback-type'
                      ])}
                    </div>
                    
                    <!-- Phone btn-->
                    {include 'file:chunks/feedback/phone.tpl'}
                    
                    <!-- Email btn -->
                    {include 'file:chunks/feedback/email.tpl'}
                    
                  </div>
                </div>
                <div class="stage" id="stage-2">
                  <div class="popup__title text-center">{'car_popup_phone_title' | option}</div>
                  <div class="feedback-option">
                    
                     <!-- Phone pic-->
                    {include 'file:chunks/feedback/phonePicture.tpl'}
                    
                    {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/phoneForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'Phone',
                      	'formFields'=>'order-service,ip-code,order-code,feedback-type,order-phone',
                      	'fieldNames'=>'order-service==Вид страхования,ip-code=ip,order-code==Номер заказа,order-phone==Телефон',
                        'validate' => 'order-phone:required', 
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validationErrorMessage'=>'Форма заполнена с ошибками!',
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List3',
                        'gsFields' => 'order-service,ip-code,order-code,feedback-type,order-phone'
                    ])}
                    
                  </div>
                  
                  {include 'file:chunks/feedback/backLink.tpl'}
                  
                </div>
                <div class="stage" id="stage-3">
                  <div class="popup__title text-center">{'car_popup_email_title' | option}</div>
                  <div class="feedback-option">
                    
                     <!-- Email pic-->
                    {include 'file:chunks/feedback/emailPicture.tpl'}
                    
                    {$_modx->runSnippet('!FetchIt', [
                        'snippet'=>'FormIt',
                      	'form'=>'@FILE chunks/emailForm.tpl',
                      	'hooks'=>'FormItSaveForm,GoogleSheetsSaveForm,setOrderIdCounter',
                      	'emailTpl'=>'@FILE chunks/email.tpl',
                      	'emailSubject'=>'Поступила новая заявка',
                      	'emailTo'=>$_modx->getPlaceholder('+order_email'),
                        'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
                        'emailFromName'=>$_modx->getPlaceholder('+site_name'),
                      	'emailUseFieldForSubject'=>'1',
                      	'formName'=>'Email',
                      	'formFields'=>'order-service,ip-code,order-code,feedback-type,order-email',
                      	'fieldNames'=>'order-service==Вид страхования,ip-code=ip,order-code==Номер заказа,order-emal==Email',
                        'validate' => 'order-email:required:email', 
                      	'successMessage'=>$_modx->getPlaceholder('+car_success'),
                      	'validationErrorMessage'=>'Форма заполнена с ошибками!',
                      	'gsUri' => 'https://docs.google.com/spreadsheets/d/1RaxhRE0xH-JwxUVf4vnq0xOn9vpzpT4QkNAH7N5oTJE/edit#gid=0',
                        'gsRange' => 'List3',
                        'gsFields' => 'order-service,ip-code,order-code,feedback-type,ignore,order-email'
                    ])}
                    
                    
                  </div>
                  
                  {include 'file:chunks/feedback/backLink.tpl'}
                  
                </div>
              </div>
              
              {include 'file:chunks/feedback/privacy.tpl'}
              
              <button class="popup__close-btn btn icon-btn js-close-popup" type="button">
                <svg class="svg-icon" width="14" height="14">
                  <use xlink:href="{$themeUrl}images/sprite.svg#close"></use>
                </svg>
              </button>
            </div>
        </div>
        
        <div class="popup popup--sm js-popup" id="success">
          <div class="popup__inner">
            <div class="popup__title text-center">{'car_success_title' | option}</div>
            <figure class="figure">
              <picture>
                <source type="image/webp" srcset="{$themeUrl}images/panda-success@2x.webp 2x, {$themeUrl}images/panda-success.webp 1x">
                <source srcset="{$themeUrl}images/panda-success@2x.png 2x, {$themeUrl}images/panda-success.png 1x">
                <img src="{$themeUrl}images/panda-success.png" role="decorate" width="280" height="280">
              </picture>
              <figcaption class="figure__caption staff-carousel__caption">
                {'car_success' | option}
              </figcaption>
            </figure>
            <button class="popup__close-btn btn icon-btn js-close-popup" type="button">
              <svg class="svg-icon" width="14" height="14">
                <use xlink:href="{$themeUrl}images/sprite.svg#close"></use>
              </svg>
            </button>
          </div>
        </div>
        <!-- end .popups-->  
        
        <script>
          const lng = '{'cultureKey' | option}';
          window.MODXContextKey = '{$resource.context_key}';
        </script>
        <script src="{$themeUrl}js/bundle.min.js?v=3.1"></script>
<!--         <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script> -->
        </script>
        

        {block 'custom-scripts'}
        
        {/block}
        
    </body>
</html>