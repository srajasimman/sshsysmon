{{!-- Generate a simple HTML report --}}
<html>
<head>
	<title>System Summary</title>
	<style type="text/css">
	body {
		font-family: "Courier New", Courier, monospace;
	}
	</style>
</head>
<body>
<h1>System Summary</h1>
<p>Generated at {{ctime}}</p>

{{#servers}}
	<h2>{{name}}</h2>
	{{#inspectors}}
		<h3>{{name}}</h3>
		<p>Type: {{type}}</p>

		<p>{{{replace text "\n" '<br />'}}}</p>
	{{/inspectors}}
	<hr />
{{/servers}}

<p>
	Generated by <a href="http://sshsysmon.zdyn.net/">SshSysMon</a>
</p>

</body>
</html>