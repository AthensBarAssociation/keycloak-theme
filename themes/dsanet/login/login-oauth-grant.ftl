<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("oauthGrantRequest")}</h4>
    <ul>
        <#if oauth.clientScopesRequested??>
            <#list oauth.clientScopesRequested as clientScope>
                <li>
                    <span>${advancedMsg(clientScope.consentScreenText)}</span>
                </li>
            </#list>
        </#if>
    </ul>
    <form class="form-actions" action="${url.oauthAction}" method="POST">
        <input type="hidden" name="code" value="${oauth.code}">
        <div class="form-group">
            <div id="kc-form-buttons" class="${kcButtonGroupClass!}">
                <input class="${properties.kcButtonClass!} ${properties.kcButtonLightClass!} ${properties.kcButtonLargeClass!}"
                       name="accept" id="kc-login" type="submit" value="${msg("doAcceptTerms")}" />
                <input class="${properties.kcButtonClass!} ${properties.kcButtonDarkClass!} ${properties.kcButtonLargeClass!} ms-auto"
                       name="cancel" id="kc-cancel" type="submit" value="${msg("doNo")}" />
            </div>
        </div>
    </form>
</@layout.registrationLayout>
