<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("updatePasswordTitle")}</h4>
    <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <input type="text" id="username" name="username" value="${username}" autocomplete="username" readonly="readonly" style="display:none;"/>
        <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

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
