<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("oauth2DeviceVerificationTitle")}</h4>
    <form id="kc-user-verify-device-user-code-form" class="${properties.kcFormClass!}" action="${url.oauth2DeviceVerificationAction}" method="post">
        <div class="${properties.kcFormGroupClass!}">
            <input id="device-user-code" name="device_user_code" autocomplete="off" type="text" class="${properties.kcInputClass!}" autofocus />
            <label for="device-user-code" class="${properties.kcLabelClass!}">${msg("verifyOAuth2DeviceUserCode")}</label>
        </div>

        <div id="kc-form-options">
            <div></div>
        </div>

        <div class="${properties.kcFormGroupClassTraditional!}">
            <div id="kc-form-buttons" class="${kcButtonGroupClass!}">
                <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>
            </div>
        </div>
    </form>
</@layout.registrationLayout>