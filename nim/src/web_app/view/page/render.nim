import chronicles, strutils, tables


proc render*(
       webContext: WebContext,
       content: string) =

  info "render()"

  # Get vars
  var infoMessage = ""

  if request.params.hasKey("infoMessage"):
    infoMessage = request.params["infoMessage"]

  # Copy webContext
  var homepageWebContext = webContext

  homepageWebContext.bulmaPathName = "bulma-0.9.3-frontpage"
  homepageWebContext.metaDescription =
    some("Online Store Example is built with Nexus")

  # Setup PageContext
  var pageContext =
        newPageContext(
          pageTitle = title,
          displayPageHeading = false,
          horizontalCenter = true,
          verticalAlign = true)

  # Setup indexStartContent
  var indexStartContent =
        replace(indexStart,
                "{infoMessage}",
                infoMessage)

  indexStartContent =
    replace(indexStartContent,
            "{pageTitle}",
            title)

  # Debug
  info "render()",
    nexusCmsLaunched = nexusCmsLaunched,
    loggedIn = $webContext.loggedIn

  # Render template page
  templatePage(homepageWebContext,
               pageContext,
               indexStartContent,
               content,
               indexEnd)

