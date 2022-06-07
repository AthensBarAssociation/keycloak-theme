<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("loginProfileTitle")}</h4>
    <form id="kc-update-profile-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <#if user.editUsernameAllowed>
            <div class="${properties.kcFormGroupClass!}">
                <input type="text" id="username" name="username" value="${(user.username!'')}"
                       class="${properties.kcInputClass!} ${messagesPerField.printIfExists('username', properties.kcFormGroupErrorClass!)}"
                       placeholder="${msg("username")}" />
                <label for="username" class="${properties.kcLabelClass!}">${msg("username")}</label>
            </div>
        </#if>
        <div class="${properties.kcFormGroupClass!}">
            <input type="text" id="email" name="email" value="${(user.email!'')}"
                   class="${properties.kcInputClass!} ${messagesPerField.printIfExists('email', properties.kcFormGroupErrorClass!)}"
                   placeholder="${msg("email")}" />
            <label for="email" class="${properties.kcLabelClass!}">${msg("email")}</label>
        </div>
        <div class="${properties.kcFormGroupClass!}">
            <input type="text" id="firstName" name="firstName" value="${(user.firstName!'')}"
                   class="${properties.kcInputClass!} ${messagesPerField.printIfExists('firstName', properties.kcFormGroupErrorClass!)}"
                   placeholder="${msg("firstName")}" />
            <label for="firstName" class="${properties.kcLabelClass!}">${msg("firstName")}</label>
        </div>
        <div class="${properties.kcFormGroupClass!}">
            <input type="text" id="lastName" name="lastName" value="${(user.lastName!'')}"
                   class="${properties.kcInputClass!} ${messagesPerField.printIfExists('lastName', properties.kcFormGroupErrorClass!)}"
                   placeholder="${msg("lastName")}" />
            <label for="lastName" class="${properties.kcLabelClass!}">${msg("lastName")}</label>
        </div>

        <div id="kc-form-options">
            <div></div>
        </div>

        <div class="form-group">
            <div id="kc-form-buttons" class="${kcButtonGroupClass!}">
                <#if isAppInitiatedAction??>
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonLightClass!} ${properties.kcButtonLargeClass!}"
                           type="submit" value="${msg("doSubmit")}" />
                    <button class="${properties.kcButtonClass!} ${properties.kcButtonDarkClass!} ${properties.kcButtonLargeClass!}"
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
