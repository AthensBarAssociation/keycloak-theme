<#import "template.ftl" as layout>
<#import "password-commons.ftl" as passwordCommons>
<@layout.registrationLayout>
    <h4>${msg("loginTotpTitle")}</h4>
    <ol id="kc-totp-settings">
        <li>
            <p>${msg("loginTotpStep1")}</p>
            <ul id="kc-totp-supported-apps">
                <#list totp.supportedApplications as app>
                    <li>${msg(app)}</li>
                </#list>
            </ul>
        </li>
        <#if mode?? && mode = "manual">
            <li>
                <p>${msg("loginTotpManualStep2")}</p>
                <p><span id="kc-totp-secret-key">${totp.totpSecretEncoded}</span></p>
                <p><a href="${totp.qrUrl}" id="mode-barcode">${msg("loginTotpScanBarcode")}</a></p>
            </li>
            <li>
                <p>${msg("loginTotpManualStep3")}</p>
                <p>
                    <ul>
                        <li id="kc-totp-type">${msg("loginTotpType")}: ${msg("loginTotp." + totp.policy.type)}</li>
                        <li id="kc-totp-algorithm">${msg("loginTotpAlgorithm")}: ${totp.policy.getAlgorithmKey()}</li>
                        <li id="kc-totp-digits">${msg("loginTotpDigits")}: ${totp.policy.digits}</li>
                        <#if totp.policy.type = "totp">
                            <li id="kc-totp-period">${msg("loginTotpInterval")}: ${totp.policy.period}</li>
                        <#elseif totp.policy.type = "hotp">
                            <li id="kc-totp-counter">${msg("loginTotpCounter")}: ${totp.policy.initialCounter}</li>
                        </#if>
                    </ul>
                </p>
            </li>
        <#else>
            <li>
                <p>${msg("loginTotpStep2")}</p>
                <img id="kc-totp-secret-qr-code" src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode"><br/>
                <p><a href="${totp.manualUrl}" id="mode-manual">${msg("loginTotpUnableToScan")}</a></p>
            </li>
        </#if>
        <li>
            <p>${msg("loginTotpStep3")}</p>
            <p>${msg("loginTotpStep3DeviceName")}</p>
        </li>
    </ol>

    <form id="kc-totp-settings-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <div class="${properties.kcFormGroupClass!}">
            <input type="text" id="totp" name="totp" autocomplete="off" required
                   class="${properties.kcInputClass!} ${messagesPerField.printIfExists('totp', properties.kcFormGroupErrorClass!)}"
                   aria-invalid="<#if messagesPerField.existsError('totp')>true</#if>"
            />
            <label for="totp" class="${properties.kcLabelClass!}">${msg("authenticatorCode")}</label>
            <#if messagesPerField.existsError('totp')>
                <div class="${properties.kcFormInvalidFeedbackClass!}">
                    ${kcSanitize(messagesPerField.get('totp'))?no_esc}
                </div>
            </#if>
            <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}" />
            <#if mode??><input type="hidden" id="mode" name="mode" value="${mode}"/></#if>
        </div>
        <div class="${properties.kcFormGroupClass!}">
            <input type="text" id="userLabel" name="userLabel" autocomplete="off"<#if totp.otpCredentials?size gte 1> required</#if>
                   class="${properties.kcInputClass!} ${messagesPerField.printIfExists('userLabel', properties.kcFormGroupErrorClass!)}"
                   aria-invalid="<#if messagesPerField.existsError('userLabel')>true</#if>"
            />
            <label for="userLabel" class="${properties.kcLabelClass!}">${msg("loginTotpDeviceName")}</label>
            <#if messagesPerField.existsError('userLabel')>
                <div class="${properties.kcFormInvalidFeedbackClass!}">
                    ${kcSanitize(messagesPerField.get('userLabel'))?no_esc}
                </span>
            </#if>
        </div>
        <@passwordCommons.logoutOtherSessions/>

        <div class="${properties.kcFormGroupClassTraditional!}">
            <div id="kc-form-buttons" class="${kcButtonGroupClass!}">
                <#if isAppInitiatedAction??>
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonLightClass!} ${properties.kcButtonLargeClass!}"
                           type="submit" value="${msg("doSubmit")}" id="saveTOTPBtn" />
                    <button class="${properties.kcButtonClass!} ${properties.kcButtonDarkClass!} ${properties.kcButtonLargeClass!} ms-auto"
                            type="submit" name="cancel-aia" value="true" id="cancelTOTPBtn" />
                        ${msg("doCancel")}
                    </button>
                <#else>
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcGlobalBlockClass!} ${properties.kcButtonLargeClass!}"
                           type="submit" value="${msg("doSubmit")}" id="saveTOTPBtn" />
                </#if>
            </div>
        </div>
    </form>
</@layout.registrationLayout>
