<#macro registrationLayout>
	<!DOCTYPE html>
	<html<#if realm.internationalizationEnabled> lang="${locale.currentLanguageTag}"<#else> lang="el"</#if>>
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
			<link rel="mask-icon" href="${url.resourcesPath}/img/safari-pinned-tab.svg" color="#${properties.kcBaseColor}">
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
		<body class="${properties.kcBodyClass}">
			<#include "header.ftl">
			<main class="${properties.kcMainContentFormClass}">
                <section class="${properties.kcContainerClass}">
                    <#if realm.internationalizationEnabled && locale.supported?size gt 1>
                        <#include "language-switcher.ftl">
                    </#if>
			        <#nested>
			    </section>
			</main>
			<#include "footer.ftl">
		</body>
	</html>
</#macro>
