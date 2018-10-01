jQuery(function ($) {
	"use strict";

	for (var i = 0; i < SITE_LANGUAGES.length; i++) {
		$("#lang-selector-" + SITE_LANGUAGES[i]).click(function () {
			Cookies.set("lang", $(this).data("lang"), {expires: 365});
		});
	}
});

(function () {
	if (window.location.pathname === "/") {
		var lang = Cookies.get("lang") || navigator.language || navigator.userLanguage;
		if (lang) {
			lang = lang.substr(0, 2).toLowerCase();
			var baseUrl = "/" + lang + "/";
			if (lang !== SITE_LANGUAGE &&
				SITE_LANGUAGES.indexOf(lang) !== -1 &&
				window.location.pathname.indexOf(baseUrl) !== 0) {
				window.location = baseUrl;
			}
		}
	}
})();
