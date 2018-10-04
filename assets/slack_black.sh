#! /bin/bash

# Don't want to interpret variables whilst reading from the HEREDOC - thus the single quotes... potto
#https://cdn.rawgit.com/laCour/slack-night-mode/master/css/raw/black.css
cat << 'EOF' >> /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js
document.addEventListener('DOMContentLoaded', function() {
 $.ajax({
   url: 'https://raw.githubusercontent.com/zoil/env/master/assets/sblack2.css',
   success: function(css) {
     $("<style></style>").appendTo('head').html(css);
   }
 });
});
EOF
echo If Slack.app is already running, refresh with CMD-R
