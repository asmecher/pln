{**
 * plugins/generic/pln/templates/settingsForm.tpl
 *
 * Copyright (c) 2013-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * PLN plugin settings
 *
 *}
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plnplugin SYSTEM "ping.dtd"> 
<plnplugin>
	<ojsInfo>
		<release>{$ojsVersion|escape}</release>
	</ojsInfo>
	<pluginInfo>
		<release>{$pluginVersion.release|escape}</release>
		<releaseDate>{$pluginVersion.date|escape}</releaseDate>
		<current>{$pluginVersion.version->getCurrent()|escape}</current>
		<prerequisites>
			<phpVersion>{$prerequisites.phpVersion|escape}</phpVersion>
			<curlVersion>{$prerequisites.curlVersion|escape}</curlVersion>
			<zipInstalled>{$prerequisites.zipInstalled|escape}</zipInstalled>
			<tarInstalled>{$prerequisites.tarInstalled|escape}</tarInstalled>
			<acron>{$prerequisites.acron|escape}</acron>
			<tasks>{$prerequisites.tasks|escape}</tasks>
		</prerequisites>
		<terms termsAccepted="{$termsAccepted|escape}">
			{iterate from=termsDisplay item=term}
			<term key="{$term.key|escape}" updated="{$term.updated|escape}" accepted="{$term.accepted|escape}">{$term.term|escape}</term>
			{/iterate}
		</terms>
	</pluginInfo>
	<journalInfo>
		<title>{$journal->getLocalizedName()|escape}</title>
		<articles count="{$articles->getCount()|escape}">
			{iterate from=articles item=article}
			<article pubDate="{$article->getDatePublished()|escape}">{$article->getLocalizedTitle()|escape}</article>
			{/iterate}
		</articles>
	</journalInfo>
</plnplugin>
