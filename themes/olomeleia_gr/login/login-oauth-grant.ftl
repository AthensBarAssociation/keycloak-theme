<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <p>
    <#if client.name?has_content>
        ${msg("oauthGrantTitle",advancedMsg(client.name))}
    <#else>
        ${msg("oauthGrantTitle",client.clientId)}
    </#if>
    </p>
    <h4>${msg("oauthGrantRequest")}</h4>
    <ul>
        <#if oauth.clientScopesRequested??>
            <#list oauth.clientScopesRequested as clientScope>
                <li>
                    <span>
                    <#if !clientScope.dynamicScopeParameter??>
                        ${advancedMsg(clientScope.consentScreenText)}
                    <#else>
                        ${advancedMsg(clientScope.consentScreenText)}: <b>${clientScope.dynamicScopeParameter}</b>
                    </#if>
                    </span>
                </li>
            </#list>
        </#if>
    </ul>
    <#if client.attributes.policyUri?? || client.attributes.tosUri??>
        <h4>
            <#if client.name?has_content>
                ${msg("oauthGrantInformation",advancedMsg(client.name))}
            <#else>
                ${msg("oauthGrantInformation",client.clientId)}
            </#if>
            <#if client.attributes.tosUri??>
                ${msg("oauthGrantReview")}
                <a href="${client.attributes.tosUri}" target="_blank">${msg("oauthGrantTos")}</a>
            </#if>
            <#if client.attributes.policyUri??>
                ${msg("oauthGrantReview")}
                <a href="${client.attributes.policyUri}" target="_blank">${msg("oauthGrantPolicy")}</a>
            </#if>
        </h4>
    </#if>

    <form class="form-actions" action="${url.oauthAction}" method="POST">
        <input type="hidden" name="code" value="${oauth.code}">
        <div class="${properties.kcFormGroupClassTraditional!}">
            <div id="kc-form-buttons" class="${kcButtonGroupClass!}">
                <input class="${properties.kcButtonClass!} ${properties.kcButtonLightClass!} ${properties.kcButtonLargeClass!}"
                       name="accept" id="kc-login" type="submit" value="${msg("doAcceptTerms")}" />
                <input class="${properties.kcButtonClass!} ${properties.kcButtonDarkClass!} ${properties.kcButtonLargeClass!} ms-auto"
                       name="cancel" id="kc-cancel" type="submit" value="${msg("doNo")}" />
            </div>
        </div>
    </form>
</@layout.registrationLayout>
