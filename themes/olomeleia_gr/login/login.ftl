<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <#if (message?has_content) && (message.type != 'warning' || !isAppInitiatedAction??)>
        <div class="alert alert-${message.type} ${properties.kcAlertContainerClass}">
            <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
        </div>
    </#if>
    <#if realm.password>
        <h4><span>${msg("sloganFirst")}</span><span>${msg("sloganSecond")}</span></h4>
        <form class="${properties.kcFormClass}" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
            <div class="${properties.kcFormGroupClass!}">
                <#if usernameEditDisabled??>
                    <input type="text" tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" disabled />
                <#else>
                    <input type="text" tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}"
                           required autofocus autocomplete="off" placeholder="${msg("username")}"
                           onchange="if (/^[0-9]{8,8}$/.test(this.value)) this.value = 'L' + this.value;" />
                </#if>
                <label for="username">${msg("username")}</label>
            </div>
            <div class="${properties.kcFormGroupClass!}">
                <input type="password" tabindex="2" id="password" class="${properties.kcInputClass!}" name="password"
                       placeholder="${msg("password")}" autocomplete="off" />
                <label for="password">${msg("password")}</label>
            </div>
            <#if realm.rememberMe && !usernameEditDisabled??>
                <div class="form-check">
                    <input type="checkbox" tabindex="3" class="${properties.kcInputCheckClass!}" value="" id="rememberMe"
                           <#if login.rememberMe??> checked</#if> />
                    <label class="${properties.kcLabelCheckClass!}" for="rememberMe">
                        ${msg("rememberMe")}
                    </label>
                </div>
            </#if>
            <input type="submit" tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcGlobalBlockClass!}"
                   name="login" value="${msg("doLogIn")}" />
            <#if realm.resetPasswordAllowed>
                <a class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center" tabindex="5"
                   href="${url.loginResetCredentialsUrl}" target="_blank" rel="noreferrer">
                    ${msg("doForgotPassword")}
                </a>
            </#if>
        </form>
    </#if>
</@layout.registrationLayout>
