<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <main class="${properties.kcMainContentFormClass!}">
        <section class="${properties.kcContainerClass}">
            <h4>${msg("pageExpiredTitle")}</h4>
            <p class="instruction">
                ${msg("pageExpiredMsg1")} <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a>.<br/>
                ${msg("pageExpiredMsg2")} <a id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a>.
            </p>
        </section>
    </main>
</@layout.registrationLayout>
