<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <h4>${msg("confirmLinkIdpTitle")}</h4>
    <form id="kc-register-form" action="${url.loginAction}" method="post">
        <div class="${properties.kcFormGroupClassTraditional!}">
            <div id="kc-form-buttons" class="${kcButtonGroupClass!}">
                <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonLightClass!} ${properties.kcButtonLargeClass!}"
                        name="submitAction" id="updateProfile">
                    ${msg("confirmLinkIdpReviewProfile")}
                </button>
                <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonDarkClass!} ${properties.kcButtonLargeClass!} ms-auto"
                        name="submitAction" id="linkAccount">
                    ${msg("confirmLinkIdpContinue", idpDisplayName)}
                </button>
            </div>
        </div>
    </form>
</@layout.registrationLayout>
