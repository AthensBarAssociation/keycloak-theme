<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <main class="${properties.kcMainContentFormClass!}">
        <section class="${properties.kcContainerClass}">
            <h4><#if messageHeader??>${messageHeader}<#else>${message.summary}</#if></h4>
            <p class="instruction">
                ${message.summary}
                <#if requiredActions??>
                    <#list requiredActions>: <b><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></b>
                </#list>
                <#else>
                </#if>
            </p>
            <#if skipLink??>
            <#else>
                <#if pageRedirectUri??>
                    <a href="${pageRedirectUri}" class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center">
                        ${kcSanitize(msg("backToApplication"))?no_esc}
                    </a>
                <#elseif actionUri??>
                    <a href="${actionUri}" class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center">
                        ${kcSanitize(msg("proceedWithAction"))?no_esc}
                    </a>
                <#elseif client.baseUrl??>
                    <a href="${client.baseUrl}" class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center">
                        ${kcSanitize(msg("backToApplication"))?no_esc}
                    </a>
                </#if>
            </#if>
        </section>
    </main>
</@layout.registrationLayout>