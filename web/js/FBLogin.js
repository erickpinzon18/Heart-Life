window.fbAsyncInit = function() {
            FB.init({
                appId      : '3297308237213246',
                cookie     : true,
                xfbml      : true,
                version    : 'v14.0' //checar la v14.0
            });

            FB.AppEvents.logPageView();

        };

        (function(d, s, id){
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {return;}
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));

        function onLogin () {
            FB.login((response) => {
                if (response.authResponse) {
                    FB.api("/me?fields=id, email, name, picture, age_range, birthday", (response) => {
                        //console.log(response);
                        location.href = "validarIdFB?user_name=" + response.name + '&user_id='+ response.id;
                    })
                }
            })
        }
        
        function fbLogoutUser() {
    FB.getLoginStatus(function(response) {
        if (response && response.status === 'connected') {
            FB.logout(function(response) {
                document.location.reload();
            });
        }
    });
}
        
