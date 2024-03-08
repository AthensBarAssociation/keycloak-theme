<#macro logoutOtherSessions>
    <div class="form-check">
        <input type="checkbox" class="${properties.kcInputCheckClass!}" id="logout-sessions" name="logout-sessions" value="on" checked>
        <label class="${properties.kcLabelCheckClass!}" for="logout-sessions">
            ${msg("logoutOtherSessions")}
        </label>
    </div>
</#macro>
