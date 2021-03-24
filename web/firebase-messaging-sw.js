importScripts("https://www.gstatic.com/firebasejs/7.20.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/7.20.0/firebase-messaging.js");

firebase.initializeApp({
    apiKey: "AIzaSyD6KKGF75ykMzaFmCfo750-uyN4VCshSmQ",
    authDomain: "pro-eye-9bfb4.firebaseapp.com",
    projectId: "pro-eye-9bfb4",
    storageBucket: "pro-eye-9bfb4.appspot.com",
    messagingSenderId: "1036662807132",
    appId: "1:1036662807132:web:0fa1ad71cd34825a312499"
});

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
    console.log("onBackgroundMessage", message);
});