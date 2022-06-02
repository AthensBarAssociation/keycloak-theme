<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("pageExpiredTitle")}</h4>
    <p class="instruction">
        ${msg("pageExpiredMsg1")} <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a>.<br/>
        ${msg("pageExpiredMsg2")} <a id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a>.
    </p>
</@layout.registrationLayout>
