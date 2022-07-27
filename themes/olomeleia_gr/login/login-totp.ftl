<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("doLogIn")}</h4>
    <form id="kc-totp-login-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <div class="${properties.kcFormGroupClass!}">
            <input type="text" id="totp" name="totp" class="${properties.kcInputClass!}"
                   placeholder="${msg("loginTotpOneTime")}" autofocus autocomplete="off" />
            <label for="totp" class="${properties.kcLabelClass!}">${msg("loginTotpOneTime")}</label>
        </div>

        <div id="kc-form-options">
            <div></div>
        </div>

        <div class="form-group">
            <div id="kc-form-buttons" class="${kcButtonGroupClass!}">
                <input class="${properties.kcButtonClass!} ${properties.kcButtonLightClass!} ${properties.kcButtonLargeClass!}"
                       name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                <input class="${properties.kcButtonClass!} ${properties.kcButtonDarkClass!} ${properties.kcButtonLargeClass!}"
                       name="cancel" id="kc-cancel" type="submit" value="${msg("doCancel")}"/>
            </div>
        </div>
    </form>
</@layout.registrationLayout>