Create Project
===

Verify that Nexus is setup
====

Nexus should be installed with its bin path in the system path. The cmd command
should be compiled and copied to the Nexus bin path.


Create the web app project
====

Create a web application by running the nexus command as follows:

```
nexus gen web-app
```

You will be prompted for some basic information:

```
Application name
> Online Store Example
```

The initial directory structure and some basic files will be generated. The
application name entered is also used to create the project directory, which
in this case is online_store.

```
Module name
> Web App
```

An application has one or more modules, each with a specific purpose. If you
are creating a web application, then the first module should be a web app. You
can later add web-services and console modules as required.

