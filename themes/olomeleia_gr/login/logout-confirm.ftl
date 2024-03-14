<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("logoutConfirmTitle")}</h4>
    <div id="kc-logout-confirm" class="content-area">
        <p class="instruction">${msg("logoutConfirmHeader")}</p>
        <form class="form-actions" action="${url.logoutConfirmAction}" method="POST">
            <input type="hidden" name="session_code" value="${logoutConfirm.code}">
            <div class="${properties.kcFormGroupClassTraditional!}">

                <div id="kc-form-options">
                    <div></div>
                </div>

                <div id="kc-form-buttons" class="${kcButtonGroupClass!}">
                    <input tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcGlobalBlockClass!}"
                           name="confirmLogout" id="kc-logout" type="submit" value="${msg("doLogout")}"/>
                </div>
            </div>
        </form>
        <div id="kc-info-message">
            <#if logoutConfirm.skipLink>
            <#else>
                <#if (client.baseUrl)?has_content>
                    <p><a href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
                </#if>
            </#if>
        </div>
    </div>
</@layout.registrationLayout>
