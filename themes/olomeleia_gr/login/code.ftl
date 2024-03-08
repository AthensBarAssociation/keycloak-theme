<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <#if code.success>
        <h4>${msg("codeSuccessTitle")}</h4>
    <#else>
        <h4>${kcSanitize(msg("codeErrorTitle", code.error))}</h4>
    </#if>
    <div id="kc-code">
        <#if code.success>
            <p>${msg("copyCodeInstruction")}</p>
            <input id="code" class="${properties.kcTextareaClass!}" value="${code.code}"/>
        <#else>
            <p id="error">${kcSanitize(code.error)}</p>
        </#if>
    </div>
</@layout.registrationLayout>
