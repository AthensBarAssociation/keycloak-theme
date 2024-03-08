<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("doLogIn")}</h4>
    <form id="kc-otp-reset-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <div class="${properties.kcFormGroupClassTraditional!}">
            <div class="${properties.kcInputWrapperClass!}">
                <p id="kc-otp-reset-form-description">${msg("otp-reset-description")}</p>
                <#list configuredOtpCredentials.userOtpCredentials as otpCredential>
                    <div class="form-check">
                        <input id="kc-otp-credential-${otpCredential?index}" class="${properties.kcInputCheckClass!}"
                               type="radio" name="selectedCredentialId" value="${otpCredential.id}"
                               <#if otpCredential.id == configuredOtpCredentials.selectedCredentialId>checked="checked"</#if>
                        >
                        <label for="kc-otp-credential-${otpCredential?index}" class="${properties.kcLabelCheckClass!}" tabindex="${otpCredential?index}">
                            <span>${otpCredential.userLabel}</span>
                        </label>
                    </div>
                </#list>

                <div class="${properties.kcFormGroupClassTraditional!}">
                    <div id="kc-form-buttons" class="${properties.kcButtonGroupClass!}">
                        <input id="kc-otp-reset-form-submit" type="submit" value="${msg("doSubmit")}"
                               class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcBlockClass!}
                        />
                    </div>
                </div>
            </div>
        </div>
    </form>
</@layout.registrationLayout>
