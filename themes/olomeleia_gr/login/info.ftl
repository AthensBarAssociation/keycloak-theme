<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4><#if messageHeader??>${messageHeader}<#else>${message.summary}</#if></h4>
    <p class="instruction">
        <#if requiredActions??>
            <#list requiredActions>: <b><#items as reqActionItem>${kcSanitize(msg("requiredAction.${reqActionItem}"))?no_esc}<#sep>, </#items></b></#list>
        <#else>
        </#if>
    </p>
    <#if skipLink??>
    <#else>
        <#if pageRedirectUri?has_content>
            <p>
                <a href="${pageRedirectUri}" class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center">
                    ${kcSanitize(msg("backToApplication"))?no_esc}
                </a>
            </p>
        <#elseif actionUri?has_content>
            <p>
                <a href="${actionUri}" class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center">
                    ${kcSanitize(msg("proceedWithAction"))?no_esc}
                </a>
            </p>
        <#elseif (client.baseUrl)?has_content>
            <p>
                <a href="${client.baseUrl}" class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center">
                    ${kcSanitize(msg("backToApplication"))?no_esc}
                </a>
            </p>
        </#if>
    </#if>
</@layout.registrationLayout>