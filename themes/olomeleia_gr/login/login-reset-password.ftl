<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("emailForgotTitle")}</h4>
    <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <div class="${properties.kcFormGroupClass!}">
            <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus tabindex="1"
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
    <p>${msg("emailInstruction")}</p>
</@layout.registrationLayout>
