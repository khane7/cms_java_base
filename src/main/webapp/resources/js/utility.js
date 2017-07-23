
var sleep = function(milliseconds) {
	var start = new Date().getTime();
	for (var i = 0; i < 1e7; i++) {
		if ((new Date().getTime() - start) > milliseconds){
			break;
		}
	}
}


//실제 페이지 이동
var goPage = function (pageUrl) {

	//showLoading();
	location.href = pageUrl;
	//hideLoading();
}

/**
 * GET 방식으로 넘어온 Parameter 가져오기
 * @returns {String}
 */
var getURLParams = function () {
	var thisUrl = unescape(location.href);
	var params = "";
	if (thisUrl.indexOf("?") > -1 ) {
		params = thisUrl.split("?")[1];
	} else {
		params = "";
	}
	return (params != "") ? "&" + params : "";
}

var getParameter = function(strParamName) {
	var arrResult = null;
	if (strParamName) {
		arrResult = location.search.match(new RegExp("[&?]" + strParamName + "=(.*?)(&|$)"));
	}
	return arrResult && arrResult[1] ? arrResult[1] : "";
}

var removeParameter = function (url, parameter) {
	//prefer to use l.search if you have a location/link object
	var urlparts = url.split('?');
	if (urlparts.length >= 2) {

		var prefix = encodeURIComponent(parameter) + '=';
		var pars = urlparts[1].split(/&/g);

		//reverse iteration as may be destructive
		for (var i = pars.length-1; i >= 0; i-- ) {
			//idiom for string.startsWith
			if (pars[i].lastIndexOf(prefix, 0) !== -1) {
				pars.splice(i, 1);
			}
		}

		url = pars.join('&');
		return url;
	} else {
		return "";
	}
}

var removeURLParameter = function(url, parameter) {
	//prefer to use l.search if you have a location/link object
	var urlparts = url.split('?');
	if (urlparts.length >= 2) {

		var prefix = encodeURIComponent(parameter) + '=';
		var pars = urlparts[1].split(/[&;]/g);

		//reverse iteration as may be destructive
		for (var i = pars.length-1; i > 0; i--) {
			//idiom for string.startsWith
			if (pars[i].lastIndexOf(prefix, 0) !== -1) {
				pars.splice(i, 1);
			}
		}

		url = urlparts[0] + '?' + pars.join('&');
		return url;
	} else {
		return url + "?";
	}
}


var getJavaInfo = function() {
	
	var link = location.href;
	
	var temp;
	if ( link.indexOf("?") > -1 ) {
		temp = link.split("?")[0];
	} else {
		temp = link;
	}
	
	
	link = temp.split("/");;
	var result = new Array();
	if ( link[4] == "admin" ) {
		result['controller'] = link[5];
		result['action'] = link[6];
	} else {
		result['controller'] = link[4];
		result['action'] = link[5];
	}
	
	return result;
}


var encodeImageFileAsURL = function ( fileTag ){

	var previewTag = fileTag + "_preview";
	var saveTag = fileTag + "_data";

	var filesSelected = document.getElementById( fileTag ).files;
	if (filesSelected.length > 0)
	{
		var fileToLoad = filesSelected[0];

		var arrMime = Array(
			"image/jpeg",
			"image/gif",
			"image/png"
		);

		if ( fileToLoad.type == "" || arrMime.indexOf( fileToLoad.type ) < -1 ) {
			return;
		}

		var fileReader = new FileReader();

		fileReader.onload = function(fileLoadedEvent) {
			var srcData = fileLoadedEvent.target.result; // <--- data: base64

			if ( srcData.length > 1024 * 1 * 1800 ) {
				alert("해당 파일의 용량이 1MB 가 넘습니다");
				return;
			}

			var newImage = document.createElement('img');
			newImage.src = srcData;
			document.getElementById( saveTag ).value = srcData;

			document.getElementById( previewTag ).innerHTML = newImage.outerHTML;
			//alert("Converted Base64 version is "+document.getElementById( previewTag ).innerHTML);
			console.log("Converted Base64 version is "+document.getElementById( previewTag ).innerHTML);
		};
		fileReader.readAsDataURL(fileToLoad);
	}
}



var setCookie = function(name, value, expiredays) {
	var todayDate = new Date();
	todayDate.setDate(todayDate.getDate() + expiredays);
	document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

var getCookie = function(name) {
	var nameOfCookie = name + "=";
	var x = 0;
	while (x <= document.cookie.length) {
		var y = (x + nameOfCookie.length);
		if (document.cookie.substring(x, y) == nameOfCookie) {
			if (( endOfCookie = document.cookie.indexOf(";", y)) == -1)
				endOfCookie = document.cookie.length;
			return unescape(document.cookie.substring(y, endOfCookie));
		}
		x = document.cookie.indexOf(" ", x) + 1;
		if (x == 0)
			break;
	}
	return "";
}


var convertTimestamp = function ( milliseconds ) {
	var date = new Date(milliseconds);

	return date.getFullYear() + "-" + (((date.getMonth()+1) < 10) ? "0" : "") + (date.getMonth()+1) + "-" + (((date.getDate()) < 10) ? "0" : "") + date.getDate();
}


var doProcess = function (url_, data_, callback_) {

	$.ajax({
		url: url_,
		global: false,
		type: "POST",
		data: data_,
		dataType: "json",
		async: true,
		clearForm: true,
		resetForm: true,
		timeout : 30000,
		success: callback_,
		beforeSend: function () {
			showLoading();
		}, complete: function () {
			hideLoading();
		}
		, error: function (response, textStatus, errorThrown) {
			showAlert(textStatus, errorThrown + "<br>" + response.responseText, false);
		}
	});

}

var getProcess = function (url_, data_, callback_) {

	$.ajax({
		url: url_,
		global: false,
		type: "POST",
		data: data_,
		dataType: "json",
		async: true,
		clearForm: true,
		resetForm: true,
		timeout : 30000,
		success: callback_,
		beforeSend: function () {
			showLoading();
		}, complete: function () {
			hideLoading();
		}
		, error: function (response, textStatus, errorThrown) {
			showAlert(textStatus, errorThrown + "<br>" + response.responseText, false);
		}
	});

}


var getProcess4Page = function (url_, data_, callback_) {

	$.ajax({
		url: url_,
		global: false,
		type: "POST",
		data: data_,
		dataType: "html",
		async: true,
		clearForm: true,
		resetForm: true,
		timeout : 30000,
		success: callback_,
		beforeSend: function () {
			if ( $('#ajax-loading') != undefined ) {
				$('#ajax-loading').show();
			}
		}, complete: function () {
			if ( $('#ajax-loading') != undefined ) {
				$('#ajax-loading').hide();
			}
		}
		, error: function (response, textStatus, errorThrown) {
			console.log( errorThrown + "::::::" + response.responseText );
			//alert( errorThrown + "<br>" + response.responseText );
			//showAlert(textStatus, errorThrown + "<br>" + response.responseText, false);
		}
	});

}


var getProcess4Front = function (url_, data_, callback_) {

	$.ajax({
		url: url_,
		global: false,
		type: "POST",
		data: data_,
		dataType: "json",
		async: true,
		clearForm: true,
		resetForm: true,
		//enctype : "multipart/form-data",
		timeout : 30000,
		success: callback_,
		beforeSend: function () {
			if ( $('#ajax-loading') != undefined ) {
				$('#ajax-loading').show();
			}
		}, complete: function () {
			if ( $('#ajax-loading') != undefined ) {
				$('#ajax-loading').hide();
			}
		}
		, error: function (response, textStatus, errorThrown) {
			console.log( errorThrown + "::::::" + response.responseText );
			//alert( errorThrown + "<br>" + response.responseText );
			//showAlert(textStatus, errorThrown + "<br>" + response.responseText, false);
		}
	});

}


var getProcess4Main = function (url_, data_, callback_) {

    $.ajax({
        url: url_,
        global: false,
        type: "POST",
        data: data_,
        dataType: "json",
        async: false,
        clearForm: true,
        resetForm: true,
        //enctype : "multipart/form-data",
        timeout : 30000,
        success: callback_,
        beforeSend: function () {
            if ( $('#ajax-loading') != undefined ) {
                $('#ajax-loading').show();
            }
        }, complete: function () {
            if ( $('#ajax-loading') != undefined ) {
                $('#ajax-loading').hide();
            }
        }
        , error: function (response, textStatus, errorThrown) {
            console.log( errorThrown + "::::::" + response.responseText );
            //alert( errorThrown + "<br>" + response.responseText );
            //showAlert(textStatus, errorThrown + "<br>" + response.responseText, false);
        }
    });

}


var goPageNum = function (pageNum) {

	var params = "";
	params = removeURLParameter(location.href, "pageNum");
	params = removeParameter(params, "idx");

	goPage(removeURLParameter(location.href, "pageNum") + "&pageNum=" + pageNum);
	
	/*
	if (params != "") {
		goPage("./?" + params + "&pageNum=" + pageNum);
	} else {
		goPage("./?" + "pageNum=" + pageNum);
	}
	*/
}