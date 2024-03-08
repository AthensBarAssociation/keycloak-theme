<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("emailVerifyTitle")}</h4>
    <p class="instruction">
        ${msg("emailVerifyInstruction1",user.email)}
    </p>
    <p class="instruction">
        ${msg("emailVerifyInstruction2")}<br/>
        <a href="${url.loginAction}">${msg("doClickHere")}</a>
        ${msg("emailVerifyInstruction3")}
    </p>
</@layout.registrationLayout>