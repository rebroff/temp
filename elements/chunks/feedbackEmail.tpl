<p>Поступил новый вопрос от клиента.</p>
<h3>Данные клиента</h3>
<p><strong>Телефон: </strong>{$_pls['feedback-phone']}</p>
{set $email = $_pls['feedback-email']}
{if $email}
<p><strong>E-mail: </strong>{$_pls['feedback-email']}</p>
{/if}
{set $msg = $_pls['feedback-msg']}
{if $msg}
<p><strong>Текст вопроса: </strong><br>{$_pls['feedback-msg']}</p>
{/if}