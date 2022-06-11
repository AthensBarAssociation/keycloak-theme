<footer>
    <div class="${properties.kcContainerClass!}">
        <div class="ds-logos d-flex align-items-center my-3">
            <a href="https://apps.olomeleia.gr/" target="_blank">
                <img src="${url.resourcesPath}/img/logo.png" alt="ΟΔΣΕ">
            </a>
            <a href="https://ktimatologio.gov.gr/Professionals/Account/LoginLawyer" target="_blank">
                <img src="${url.resourcesPath}/img/kthma.png" alt="Ελληνικό Κτηματολόγιο">
            </a>
        </div>
        <div class="copy">
            <#assign currentDate = .now>
            &copy; ${currentDate?string.yyyy} ΟΛΟΜΕΛΕΙΑ ΔΙΚΗΓΟΡΙΚΩΝ ΣΥΛΛΟΓΩΝ ΕΛΛΑΔΑΣ
        </div>
    </div>
</footer>