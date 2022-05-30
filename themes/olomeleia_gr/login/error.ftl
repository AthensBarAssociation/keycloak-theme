<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <main class="${properties.kcMainContentFormClass!}">
        <section class="${properties.kcContainerClass}">
            <h4>${msg("errorTitle")}</h4>
            <p class="instruction">${message.summary}</p>
            <#if client?? && client.baseUrl?has_content>
                <a href="${client.baseUrl}" class="${properties.kcGlobalBlockClass!} ${properties.kcButtonClass!} btn-link text-center">
                    ${kcSanitize(msg("backToApplication"))?no_esc}
                </a>
            </#if>
        </section>
    </main>
</@layout.registrationLayout>