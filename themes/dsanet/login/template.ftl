<#import "template.ftl" as baseTemplate>

<#macro bsPageHeader>
	<header class="header">
	    <div class="${properties.kcContainerClass!}">
			<div class="logo">
				<a href="#">
					<img src="${url.resourcesPath}/img/logo.png" class="emblem" width="240" height="266" alt="ΟΔΣΕ">
					<h1 class="text">
					    <img src="${url.resourcesPath}/img/odse_OD.png" alt="ΟΛΟΜΕΛΕΙΑ ΔΙΚΗΓΟΡΙΚΩΝ">
					    <img src="${url.resourcesPath}/img/odse_SE.png" alt="ΣΥΛΛΟΓΩΝ ΕΛΛΑΔΟΣ">
					    <small>Ηλεκτρονικές Υπηρεσίες Προδικασίας</small>
					</h1>
				</a>
			</div>
	    </div>
	</header>
</#macro>

<#macro bsPageFooter>
	<footer>
		<div class="${properties.kcContainerClass!}">
			<div class="ds-logos d-flex align-items-center my-3">
				<a href="https://apps.olomeleia.gr/" target="_blank" class="logo_o">
					<img src="${url.resourcesPath}/img/logo.png" alt="Ολομέλεια Δικηγορικών Συλλόγων Ελλάδας">
				</a>
				<a href="https://apps.olomeleia.gr/" target="_blank">
					<img src="${url.resourcesPath}/img/dsa_dikografo.png" alt="ΗΛΕΚΤΡΟΝΙΚΕΣ ΥΠΗΡΕΣΙΕΣ ΔΙΚΗΓΟΡΟΥ">
				</a>
				<a href="http://www.dsanet.gr/" target="_blank">
					<img src="${url.resourcesPath}/img/ds_isokratis.png" alt="ΤΡΑΠΕΖΑ ΝΟΜΙΚΩΝ ΠΛΗΡΟΦΟΡΙΩΝ 'ΙΣΟΚΡΑΤΗΣ'">
				</a>
				<a href="http://www.dsalib.gr/" target="_blank">
					<img src="${url.resourcesPath}/img/dsa_library.png" alt="ΗΛΕΚΤΡΟΝΙΚΗ ΒΙΒΛΙΟΘΗΚΗ Δ.Σ.Α.">
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
</#macro>

<#macro registrationLayout>
	<!DOCTYPE html>
	<html lang="${.lang}">
		<head>
			<meta charset="utf-8">
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<#if properties.meta?has_content>
				<#list properties.meta?split(' ') as meta>
					<meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
				</#list>
			</#if>
			<title>${msg("loginTitle", (realm.displayName!''))}</title>
			<link rel="apple-touch-icon" sizes="180x180" href="${url.resourcesPath}/img/apple-touch-icon.png">
			<link rel="icon" type="image/png" sizes="32x32" href="${url.resourcesPath}/img/favicon-32x32.png">
			<link rel="icon" type="image/png" sizes="16x16" href="${url.resourcesPath}/img/favicon-16x16.png">
			<link rel="manifest" href="${url.resourcesPath}/site.webmanifest">
			<link rel="mask-icon" href="${url.resourcesPath}/img/safari-pinned-tab.svg" color="#1e5651">
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
			<#if properties.styles?has_content>
				<#list properties.styles?split(' ') as style>
					<link href="${url.resourcesPath}/${style}" rel="stylesheet" />
				</#list>
			</#if>
			<#if properties.scripts?has_content>
				<#list properties.scripts?split(' ') as script>
					<script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
				</#list>
			</#if>
			<#if scripts??>
				<#list scripts as script>
					<script src="${script}" type="text/javascript"></script>
				</#list>
			</#if>
		</head>
		<body class="${properties.kcBodyClass!}">
			<@bsPageHeader/>
			<#nested>
			<@bsPageFooter/>
		</body>
	</html>
</#macro>
