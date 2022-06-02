<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("errorTitle")}</h4>
    <p class="instruction">${message.summary}</p>
    <#if client?? && client.baseUrl?has_content>
        <a href="${client.baseUrl}" class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center">
            ${kcSanitize(msg("backToApplication"))?no_esc}
        </a>
    </#if>
</@layout.registrationLayout>