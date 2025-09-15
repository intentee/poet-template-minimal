fn template(context, props, content) {
  context.assets.add("resources/css/layout-minimal.css");

  if context.is_watching {
    context.assets.add("resources/ts/global-live-reload.mjs");
  }

  component {
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <link rel="canonical" href={context.reference.canonical_link}>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        {if !context.front_matter.description.is_empty() {
          component {
            <meta name="description" content={context.front_matter.description}>
          }
        }}

        <title>{context.front_matter.title}</title>

        {context.assets.render()}
      </head>
      <body>
        <div class="page">
          <h1 class="page-title">
            Hello, Poet!
          </h1>
        </div>
      </body>
    </html>
  }
}
