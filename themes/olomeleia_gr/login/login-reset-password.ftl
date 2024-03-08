<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("emailForgotTitle")}</h4>
    <#if messagesPerField.existsError('username')>
        <div class="alert alert-danger ${properties.kcAlertContainerClass!}" role="alert" aria-live="polite">
            <span class="kc-feedback-text">${kcSanitize(messagesPerField.getFirstError('username'))?no_esc}</span>
        </div>
    </#if>
    <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <div class="${properties.kcFormGroupClass!}">
            <input type="text" id="username" name="username" value="${(auth.attemptedUsername!'')}" class="${properties.kcInputClass!}" autofocus tabindex="1"
                   placeholder="
                        <#if !realm.loginWithEmailAllowed>
                            ${msg("username")}
                        <#elseif !realm.registrationEmailAsUsername>
                            ${msg("usernameOrEmail")}
                        <#else>
                            ${msg("email")}
                        </#if>
                   " />
            <label for="username" class="${properties.kcLabelClass!}">
                <#if !realm.loginWithEmailAllowed>
                    ${msg("username")}
                <#elseif !realm.registrationEmailAsUsername>
                    ${msg("usernameOrEmail")}
                <#else>
                    ${msg("email")}
                </#if>
            </label>
        </div>
        <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcGlobalBlockClass!}"
               type="submit" value="${msg("doSubmit")}" tabindex="2" />
        <a href="${url.loginUrl}" class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center" tabindex="3">
            ${kcSanitize(msg("backToLogin"))?no_esc}
        </a>
    </form>
    <#if realm.duplicateEmailsAllowed>
        ${msg("emailInstructionUsername")}
    <#else>
        ${msg("emailInstruction")}
    </#if>
</@layout.registrationLayout>
