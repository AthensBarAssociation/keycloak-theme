<#import "template.ftl" as layout>
<#import "password-commons.ftl" as passwordCommons>
<@layout.registrationLayout>
    <h4>${msg("updatePasswordTitle")}</h4>
    <#if messagesPerField.existsError('password','password-confirm')>
        <div class="alert alert-danger ${properties.kcAlertContainerClass!}" role="alert" aria-live="polite">
            <span class="kc-feedback-text">${kcSanitize(messagesPerField.getFirstError('password','password-confirm'))?no_esc}</span>
        </div>
    </#if>
    <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <div class="${properties.kcFormGroupClass!}">
            <input type="password" id="password-new" name="password-new" class="${properties.kcInputClass!}"
                   placeholder="${msg("passwordNew")}" autofocus autocomplete="new-password" />
            <label for="password-new" class="${properties.kcLabelClass!}">${msg("passwordNew")}</label>
        </div>
        <div class="${properties.kcFormGroupClass!}">
            <input type="password" id="password-confirm" name="password-confirm" class="${properties.kcInputClass!}"
                   placeholder="${msg("passwordConfirm")}" autocomplete="new-password" />
            <label for="password-confirm" class="${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
        </div>
        <@passwordCommons.logoutOtherSessions/>

        <div class="${properties.kcFormGroupClassTraditional!}">
            <div id="kc-form-buttons" class="${kcButtonGroupClass!}">
                <#if isAppInitiatedAction??>
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonLightClass!} ${properties.kcButtonLargeClass!}"
                           type="submit" value="${msg("doSubmit")}" />
                    <button class="${properties.kcButtonClass!} ${properties.kcButtonDarkClass!} ${properties.kcButtonLargeClass!} ms-auto"
                            type="submit" name="cancel-aia" value="true" />
                        ${msg("doCancel")}
                    </button>
                <#else>
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcGlobalBlockClass!} ${properties.kcButtonLargeClass!}"
                           type="submit" value="${msg("doSubmit")}" />
                </#if>
            </div>
        </div>
    </form>
</@layout.registrationLayout>
