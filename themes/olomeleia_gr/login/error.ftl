<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${kcSanitize(msg("errorTitle"))?no_esc}</h4>
    <p class="instruction">${kcSanitize(message.summary)?no_esc}</p>
    <#if skipLink??>
    <#else>
        <#if client?? && client.baseUrl?has_content>
            <a href="${client.baseUrl}" class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center">
                ${kcSanitize(msg("backToApplication"))?no_esc}
            </a>
        </#if>
    </#if>
</@layout.registrationLayout>