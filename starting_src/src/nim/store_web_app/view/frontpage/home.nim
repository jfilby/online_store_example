import chronicles, jester, options, strutils
import karax/karax
import store_web_app/view/page/render


proc frontpage*(request: Request,
                webContext: WebContext): string {.gcsafe.} =

  debug "frontPage()"

  let content = "This is a test."

  render(content)

