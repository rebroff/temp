<div class="card card--feedback polygon-3">
    <div class="card__main">
      <div class="card__title">{'feedback_title' | option}</div>
      {$_modx->runSnippet('!AjaxForm', [
            'snippet'=>'FormIt',
        	'form'=>'@FILE chunks/feedbackForm.tpl',
        	'hooks'=>'setFeedbackCounter,email,FormItSaveForm',
        	'frontend_js'=>'assets/template/js/ajax.js',
        	'frontend_css'=>'',
        	'emailTpl'=>'@FILE chunks/feedbackEmail.tpl',
        	'emailSubject'=>'Поступил новый вопрос от клиента',
        	'emailTo'=>$_modx->getPlaceholder('+order_email'),
            'emailFrom'=>$_modx->getPlaceholder('+emailsender'),
            'emailFromName'=>$_modx->getPlaceholder('+site_name'),
        	'emailUseFieldForSubject'=>'1',
        	'formName'=>'Форма с вопросом',
        	'formFields'=>'feedback-phone,feedback-email,feedback-msg',
        	'fieldNames'=>'feedback-phone==Телефон,feedback-email=E-mail,feedback-msg==Сообщение',
        	'validate'=>'feedback-phone:required,feedback-email:email,feedback-msg:required',
        	'successMessage'=>$_modx->getPlaceholder('+feedback_success'),
        	'validationErrorMessage'=>'Форма заполнена с ошибками!'
        ])}
      
    </div>
    <div class="card__media">
      <picture>
        <source srcset="{'assets_url' | option}template/images/feedback/feedback_360.jpg" media="(max-width: 360px)">
        <source srcset="{'assets_url' | option}template/images/feedback/feedback_440.jpg" media="(max-width: 480px)">
        <source srcset="{'assets_url' | option}template/images/feedback/feedback_768.jpg" media="(max-width: 768px)">
        <img class="lazy" src="{'assets_url' | option}template/images/feedback/feedback.jpg" alt="Задать вопрос">
      </picture>
    </div>
    <div class="glow glow--green"></div>
</div>