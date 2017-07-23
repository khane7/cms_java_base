(
function ( $, window, undefined ) {
    var doc = document;
    var DbsEsmt = function( ) {
        this.isIE = (/MSIE/i).test( navigator.userAgent );
        this.appkey = "" ;
        this.login_form = null ;
        this.client_id = "";
        this.response_type = "token";
        this.scope = "";
        this.redirect_uri = "";
        this.savingToken = true;
        this._access_token = "";
        this._access_token_start = 14;
        this._access_token_end = 43;
        this._access_token_time = null ;
        this._access_token_time_limit = 43195;
        this._loginStatus = false;
        this._checkAccessToken();
		this.swap_key = "";
    };
    DbsEsmt.prototype = {
        versionNumber: '1.1.0',
        SUCCESS_INIT: 100,
        SUCCESS_LOGIN: 101,
        SUCCESS_LOGOUT: 102,
        SUCCESS_API: 200,
        ERROR_INIT: -100 ,
        ERROR_LOGIN: -101 ,
        ERROR_LOGOUT: -102 ,
        ERROR_PARAMETER_MISSING: -201 ,

        init: function ( obj ) {

            var i,
                that = this,
                typeAttr,
                nameAttr,
                valueAttr,
                body = doc.getElementsByTagName( "body" )[0];

            if ( this.login_form === null ){
                if ( !! obj ) {
                    for ( i in obj ) {
                        this[i] = obj[i];
                    }
                }
                this.login_form = doc.createElement( "form" );
                this.login_form.action = "https://api.hanyang.ac.kr/oauth/authorize";
                this.login_form.method = "get";
                jQuery.each( [ "client_id", "response_type", "scope", "redirect_uri" ], function(i, name){
                    node = doc.createElement( "input" );
                    typeAttr = doc.createAttribute( "type" );
                    nameAttr = doc.createAttribute( "name" );
                    valueAttr = doc.createAttribute( "value" );
                    typeAttr.value = "hidden";
                    nameAttr.value = name;
                    valueAttr.value = that[ name ];
                    node.setAttributeNode( typeAttr );
                    node.setAttributeNode( nameAttr );
                    node.setAttributeNode( valueAttr );
                    that.login_form.appendChild( node );
                });
                body.appendChild( this.login_form );
                return this.SUCCESS_INIT;
            }
            else {
                return this.ERROR_INIT;
            }
        },
        login: function ( ) {
            if ( this.login_form !== null ) {
                this.login_form.submit( );
                return this.SUCCESS_LOGIN;
            } else {
                return this.ERROR_LOGIN;
            }
        },
        logout: function ( successCB, failCB ) {

            if ( this.getLoginStatus() === false ) {
                return this.ERROR_LOGOUT;
            }

            $.ajax( {
                beforeSend: function(xhr) {
                    xhr.setRequestHeader( "x-requested-with", "");
                },
                type: "get",
                url: "https://api.hanyang.ac.kr/oauth/expireToken",
                data:  {
                    "client_id": this.client_id,
                    "token": this._getAccessToken( )
                },
                dataType: "json",
                context: this,
                callback: "this.logoutCallback"
            }).done( function ( data ) {
                if ( data.app.result === "success") {
                    this._clearToken();
                    this._loginStatus = false;
                    window.location.hash = '';
                    if ( typeof successCB === 'function') {
                        successCB();
                    }
                    return this.SUCCESS_LOGOUT;
                }
                else {
                    alert( 'response for the logout-request is not success');
                    return this.ERROR_LOGOUT;
                }
            }).fail( function(jqXHR, textStatus, errorThrown){

                if (jqXHR.status === 0) {
                    alert("error 0: Network Problem");
                } else if (jqXHR.status === 401) {
                    alert("error 401: Unauthorized");
                } else if (jqXHR.status === 403) {
                    alert("error 403: Forbidden");
                } else if (jqXHR.status === 404) {
                    alert("error 404: Not Found");
                } else if (jqXHR.status === 406) {
                    alert("error 406: Not acceptable");
                } else if (jqXHR.status === 412) {
                    alert("error 412: Precondition Failed ");
                } else if (jqXHR.status === 500) {
                    alert("error 500: Internal Server Error");
                } else {
                    alert("error " + jqXHR.status );
                }
                if ( typeof failCB === 'function') {
                    failCB();
                }
                return this.ERROR_LOGOUT;
            });
        },
        getLoginStatus: function ( ) {
            return this._loginStatus;
        },
        logoutCallback: function ( data ) {
        },
        _setAppkey: function ( appkey ) {
            this.appkey = appkey;
        },
        _getAppkey: function ( ) {
            return this.appkey;
        },
		_getClientId: function ( ) {
            return this.client_id;
        },
        _saveToken: function ( token ) {
            if ( this.savingToken === false ) {
                return;
            }

            var current_time = new Date();
            this._access_token_time = current_time.getTime() / 1000 ;
            if ( window.localStorage ){
                localStorage.setItem ( "token", token );
                localStorage.setItem ( "tokentime", this._access_token_time );
            }
            else {
                doc.cookie += ("token=" + token + ";" ) ;
                doc.cookie += ( "tokentime="  + this._access_token_time + ";" ) ;
            }
        },

        _loadToken: function ( ){

            if ( this.savingToken === false ) {
                return;
            }

            if ( window.localStorage ){
                this._access_token = localStorage.getItem( "token" );
                this._access_token_time = localStorage.getItem( "tokentime" );

            }

            else {
                var cookieArray = doc.cookie.split( ";" );
                for ( var i in cookieArray ) {
                    if ( cookieArray[i].match( "token=" ) ) {
                        this._access_token = cookieArray[i].substr( cookieArray[i].indexOf( "=" )+1 );
                    } else if ( cookieArray[i].match( "tokentime=" ) ) {
                        this._access_token_time = cookieArray[i].substr( cookieArray[i].indexOf( "=" )+1 );
                    }
                }
            }

            var current_date = new Date();
            current_time = current_date.getTime() / 1000 ;
            if ( !this._access_token || !this._access_token_time || ( this._access_token_time_limit - ( current_time - this._access_token_time ) ) < 0 ) {
                this._clearToken();
                this._loginStatus = false;
            } else if ( !!this._access_token && !!this._access_token_time ) {
                this._loginStatus = true;
            }
        },

        _clearToken: function () {
            this._access_token = "";
            this._access_token_time = "";

            if ( this.savingToken === false ) {
                return;
            }

            if ( window.localStorage ) {
                localStorage.removeItem( "token" );
                localStorage.removeItem( "tokentime" );
            }
            else {
                this._saveToken( "" );
            }
        },
        _checkAccessToken: function () {
            this._loadToken( );
            if ( window.location.hash ) {
                var hashString = window.location.hash.substring(1),
                    pattern = /^access_token/,
                    result = hashString.match( pattern );
                if ( result !== null ) {
					var mHash = window.location.hash;
					var mEndPoint = mHash.indexOf('&');
                    this._access_token = window.location.hash.slice( this._access_token_start, mEndPoint);
					this._saveToken( this._access_token );
                    this._loginStatus = true;
                }
            }
        },
        _getAccessToken: function () {
            return this._access_token;
        },
        _getSwapKey: function () {
            return this.swap_key;
        },
		_getEncodeQueryString: function (pClientId, pQueryData) {
			var sDecodeURI = decodeURI(jQuery.param(pQueryData));
			console.log(sDecodeURI);
			var lMilSenconds = new Date().getTime();
			var ret = "";
			$.ajax({
				type: "post",
				url: "https://api.hanyang.ac.kr/oauth/get_param_enc_key",
				cache: false,
				async: false,
				data: {
					client_id : pClientId,
					swap_key : lMilSenconds
				},
				dataType: "json",
				success: function(data) {
					if (data.message == "success") {
						var oKey = CryptoJS.enc.Latin1.parse(data.body.key);
						var oIv = CryptoJS.enc.Latin1.parse(data.body.iv);
					    var encrypted = CryptoJS.AES.encrypt(sDecodeURI, oKey, { iv: oIv, mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7 });
						console.log(data.body.key);
						console.log(data.body.iv);
						ret =  encrypted.ciphertext.toString(CryptoJS.enc.Hex);
					} else {
						alert("파라미터 암호화키 발급에러");
					}
				},
				error: function(e) {
					alert(e.responseText);
				}
			});
			this.swap_key = lMilSenconds;
			return ret;
		},
        api: function ( queryMethod, queryURL, queryData, successCallback, failCallback, userSetting ) {
            if ( !queryMethod || !queryURL || !queryData || !successCallback ) {
                return this.ERROR_PARAMETER_MISSING;
            }
			var queryAccept = queryURL.substr(queryURL.lastIndexOf('.') + 1);
            var that = this,
                queryObject = {
                    type: queryMethod,
                    url: queryURL,
                    dataType: queryAccept,
					contentType: "application/json;charset=utf-8",
                    data: queryData,
                    success: successCallback,
                    error: failCallback
                };
            var ajaxRequest = function( ) {
                var activeXModes=["Msxml2.XMLHTTP", "Microsoft.XMLHTTP"];
                for ( var i = 0, max = activeXModes.length; i < max; i += 1 ){
                    try{
                        return new ActiveXObject(activeXModes[i]);
                    } catch(e){
                        return null;
                    }
                }
            };
            var myGetRequest;
            if ( !failCallback ) {
                queryObject.error =  function(jqXHR, textStatus, errorThrown){
                    if ( this.isIE ) {
                        alert("Ajax fail callback is called");
                    }
                    if (jqXHR.status === 0 ) {
                        alert("jqXHR.status 0: Network Problem");
                    } else if (jqXHR.status === 401) {
                        alert("jqXHR.status 401: Unauthorized");
                    } else if (jqXHR.status === 403) {
                        alert("jqXHR.status 403: Forbidden");
                    } else if (jqXHR.status === 404) {
                        alert("jqXHR.status 404: Not Found");
                    } else if (jqXHR.status === 406) {
                        alert("jqXHR.status 406: Not Acceptable");
                    } else if (jqXHR.status === 412) {
                        alert("jqXHR.status 412: Precondition Failed ");
                    } else if (jqXHR.status === 500) {
                        alert("jqXHR.status 500: Internal Server Error ");
                    } else {
                        alert("jqXHR.status " + jqXHR.status );
                    }
                };
            }
            var defaultSetting = {
                beforeSend: function(xhr) {
                    xhr.setRequestHeader( "x-requested-with", that._getAppkey() );
					xhr.setRequestHeader( "client_id", that._getClientId());
					xhr.setRequestHeader( "swap_key", that._getSwapKey());
					if ( that._getAccessToken() !== "" ) {
						xhr.setRequestHeader( "access_token", that._getAccessToken());
					}
                },
                data: {
                    //"client_id": this.client_id
                },
                cache: false
            };
            //if ( that._getAccessToken() !== "" ) {
            //    defaultSetting.data.access_token = that._getAccessToken( );
            //}
            $.extend(  true, queryObject, defaultSetting );
            if ( !!userSetting ) {
                $.extend(  true, queryObject, userSetting );
            }
			if (queryObject.type == "post" || queryObject.type == "put") {
				queryObject.data = JSON.stringify(queryObject.data);
			}
			console.log(queryObject.type);
			//if (queryObject.type == "delete"){
			//	queryObject.url += "?" + jQuery.param( queryData );
			//}

			if (queryObject.type == "get" || queryObject.type == "delete") {
				var vEnc = that._getEncodeQueryString(that._getClientId(), queryData);
				queryObject.url += "?enc=" + vEnc;
				queryObject.data = "";
				console.log(vEnc);
			}

			console.log(queryObject);
            if ( this.isIE ) {
                myGetRequest = new ajaxRequest();
                myGetRequest.onreadystatechange = function() {
                    if (myGetRequest.readyState === 4){
                        if ( myGetRequest.status === 200 || window.location.href.indexOf( "http" ) === -1 ){
                            if ( !myGetRequest.responseType || myGetRequest.responseType === "JSON" || myGetRequest.responseType === "json" ) {
                                successCallback( jQuery.parseJSON( myGetRequest.responseText ) );
                            } else if ( myGetRequest.responseType === "XML" || myGetRequest.responseType === "xml" ) {
                                successCallback( jQuery.parseXML( myGetRequest.responseText ) );
                            }
                        } else{
                            if ( failCallback ) {
                               failCallback();
                            }
                        }
                    }
                };
                if ( queryMethod === "GET" || queryMethod === "get") {
                    try {
                        myGetRequest.open( queryMethod, queryURL + "?" + jQuery.param( queryData ), true );
                    } catch (e) {
                        alert( "브라우저가 AJAX를 지원하지 않습니다. !\n인터넷 옵션->보안->사용자 지정 수준->도메인간 데이터 원본 엑세스->확인 혹은 사용으로 활성화해주세요");
                        return false;
                    }
                } else if ( queryMethod === "POST" || queryMethod === "post" ) {
					alert('post');
                    myGetRequest.open( queryMethod, queryURL , true);
                }
                myGetRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                myGetRequest.setRequestHeader('x-requested-with', that._getAppkey() );
                if ( queryMethod === "GET" || queryMethod === "get") {
                    myGetRequest.send(null);
                } else if ( queryMethod === "POST" || queryMethod === "post") {
                    myGetRequest.send( jQuery.param( queryData ) );
                }
            } else {
                $.ajax( queryObject );
            }
            return this.SUCCESS_API;
        }
    };
    window.DbsEsmt = new DbsEsmt( );
}) ( jQuery, window );
