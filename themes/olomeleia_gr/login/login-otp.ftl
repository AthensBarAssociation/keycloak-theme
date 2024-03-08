<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("doLogIn")}</h4>
    <form id="kc-otp-login-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <#if otpLogin.userOtpCredentials?size gt 1>
            <div class="form-check">
                <#list otpLogin.userOtpCredentials as otpCredential>
                    <input id="kc-otp-credential-${otpCredential?index}" class="${properties.kcInputCheckClass!}" type="radio"
                           name="selectedCredentialId" value="${otpCredential.id}" <#if otpCredential.id == otpLogin.selectedCredentialId>checked="checked"</#if>
                    >
                    <label for="kc-otp-credential-${otpCredential?index}" class="${properties.kcLabelCheckClass!}" tabindex="${otpCredential?index}">
                        <span>${otpCredential.userLabel}</span>
                    </label>
                </#list>
            </div>
        </#if>

        <div class="${properties.kcFormGroupClass!}">
            <input type="text" id="otp" name="otp" class="${properties.kcInputClass!} ${messagesPerField.printIfExists('totp', properties.kcFormGroupErrorClass!)}"
                   placeholder="${msg("loginOtpOneTime")}" autofocus autocomplete="off" />
            <label for="totp" class="${properties.kcLabelClass!}">${msg("loginOtpOneTime")}</label>
            <#if messagesPerField.existsError('totp')>
                <div class="${properties.kcFormInvalidFeedbackClass!}">
                    ${kcSanitize(messagesPerField.get('totp'))?no_esc}
                </div>
            </#if>
        </div>

        <div id="kc-form-options">
            <div></div>
        </div>

        <div class="${properties.kcFormGroupClassTraditional!}">
            <div id="kc-form-buttons" class="${kcButtonGroupClass!}">
                <input class="${properties.kcButtonClass!} ${properties.kcButtonLightClass!} ${properties.kcButtonLargeClass!}"
                       name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                <input class="${properties.kcButtonClass!} ${properties.kcButtonDarkClass!} ${properties.kcButtonLargeClass!} ms-auto"
                       name="cancel" id="kc-cancel" type="submit" value="${msg("doCancel")}"/>
            </div>
        </div>
    </form>
</@layout.registrationLayout>