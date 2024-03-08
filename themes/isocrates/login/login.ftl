<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <#if messagesPerField.existsError('username','password')>
        <div class="alert alert-danger ${properties.kcAlertContainerClass!}" aria-live="polite">
            <span class="kc-feedback-text">${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}</span>
        </div>
    </#if>
    <#if realm.password>
        <h4><span>${msg("sloganFirst")}</span><span>${msg("sloganSecond")}</span></h4>
        <form class="${properties.kcFormClass}" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
            <#if !usernameHidden??>
                <div class="${properties.kcFormGroupClass!}">
                    <input type="text" tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}"
                           required autofocus autocomplete="off" placeholder="${msg("username")}"
                           onchange="if (/^[0-9]{8,8}$/.test(this.value)) this.value = 'L' + this.value;" />
                    <label for="username">${msg("username")}</label>
                </div>
            </#if>
            <div class="${properties.kcFormGroupClass!}">
                <input type="password" tabindex="2" id="password" class="${properties.kcInputClass!}" name="password"
                       placeholder="${msg("password")}" autocomplete="off" />
                <label for="password">${msg("password")}</label>
            </div>
            <#if realm.rememberMe && !usernameHidden??>
                <div class="form-check">
                    <input type="checkbox" tabindex="3" class="${properties.kcInputCheckClass!}" name="rememberMe" id="rememberMe"
                           <#if login.rememberMe??> checked</#if> />
                    <label class="${properties.kcLabelCheckClass!}" for="rememberMe">
                        ${msg("rememberMe")}
                    </label>
                </div>
            </#if>
            <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
            <input type="submit" tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcGlobalBlockClass!}"
                   name="login" value="${msg("doLogIn")}" />
            <#if realm.resetPasswordAllowed>
                <a class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center" tabindex="5"
                   href="${url.loginResetCredentialsUrl}">
                    ${msg("doForgotPassword")}
                </a>
            </#if>
        </form>
    </#if>
</@layout.registrationLayout>
