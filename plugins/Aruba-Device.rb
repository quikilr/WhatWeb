##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Aruba-Device" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-09-17
version "0.1"
description "Aruba network device - web interface for router, access point, switch, etc - Homepage: http://www.arubanetworks.com/"

# Google results as at 2011-09-17 #
# 3 for "Please Login" "System Name" "JavaScript is disabled on your browser." +intitle:Login

# ShodanHQ results as at 2011-09-17 #
# 4,343 for location 4343

# Examples #
examples %w|
120.105.3.235
216.184.65.197
69.80.162.131
203.64.105.1
64.189.61.2
129.8.215.8
200.198.202.132
141.117.171.5
136.224.32.8
158.165.236.20
218.2.65.2
130.212.128.11
71.33.255.10
|

# Matches #
matches [

# System Name
{ :string=>/<\/noscript>[\s]+<div id="system-info">[\s]+<ul>[\s]+<li>System Name : ([^<]+)<\/li>/ },

# Logo HTML
{ :regexp=>/<img src="\/images\/arubalogo\.gif" width="200" height="51"[\s]+alt="Aruba( Wireless)? Networks" title="Aruba( Wireless)? Networks"\/>/ },

# Form
{ :text=>'<form id="login-form" method="post" autocomplete="off" action="/screens/wms/wms.login">' },

# /images/arubalogo.gif
{ :url=>"/images/arubalogo.gif", :md5=>"0edcf58b30fccecb053a6e7d3e9846ad" },
{ :url=>"/images/arubalogo.gif", :md5=>"3dcb2475aa28fc1d685f863e79cc837f" },

]

end

