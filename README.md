DirectAdmin plugin Asset - jQuery
=================================

A [DirectAdmin] plugin providing panel-wide access to [jQuery] in plugins
and skins. Use this plugin when your other plugins and|or skins require
[jQuery].


Building
--------

### Building with Ant

~~~~ shell
git clone https://github.com/websafe/dap-asset-jquery.git
cd dap-asset-jquery
ant clean
ant setup
ant build
sudo ant release
~~~~


### Building without Ant

~~~~ shell
git clone https://github.com/websafe/dap-asset-jquery.git
cd dap-asset-jquery
npm install
node_modules/.bin/bower update
node_modules/.bin/grunt
~~~~



Using in plugins and skins
--------------------------

Embed jQuery 2.x:

~~~~ html
<script src="/CMD_PLUGINS/websafe-dap-asset-jquery/jquery.raw"></script>
~~~~


Embed jQuery 1.x:

~~~~ html
<script src="/CMD_PLUGINS/websafe-dap-asset-jquery/jquery.raw?version=legacy"></script>
~~~~



----
[Directadmin] is a registered trademark of [JBMC Software].


[DirectAdmin]: http://www.directadmin.com/
[JBMC Software]: http://www.jbmc-software.com/
[jQuery]: https://jquery.com/
