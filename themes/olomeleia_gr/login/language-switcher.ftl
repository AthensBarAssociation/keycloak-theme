<div class="login-language">
    <div class="dropdown">
        <input type="checkbox" id="languageSelect">
        <label class="${properties.kcButtonClass!} btn-link dropdown-toggle" type="button" for="languageSelect">
            ${msg("selectLanguage")}
        </label>
        <ul class="dropdown-menu" aria-labelledby="languageSelect">
            <#list locale.supported as l>
                <li class="${properties.kcDropdownItemClass!}"><a href="${l.url}">${l.label}</a></li>
            </#list>
        </ul>
    </div>
</div>