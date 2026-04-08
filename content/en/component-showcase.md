---
title: Component Showcase
sidebar:
  open: false
  exclude: true
---
# Callout Component

A built-in component to show important information to the reader.



> [!NOTE]
> [GitHub-style alerts](../../markdown#alerts) are supported since [v0.9.0](https://github.com/imfing/hextra/releases/tag/v0.9.0).
> It leverages Markdown syntax to render the callout which ensures better portability and readability of the content.

## Examples

{{< callout >}}
  A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

{{< callout type="info" >}}
  A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

{{< callout type="warning" >}}
  A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

{{< callout type="error" >}}
  A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

{{< callout type="important" >}}
  A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

### Default

{{< callout >}}
  A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

```markdown
{{</* callout */>}}
  A **callout** is a short piece of text intended to attract attention.
{{</* /callout */>}}
```

### Info

{{< callout type="info" >}}
  A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

```markdown
{{</* callout type="info" */>}}
  A **callout** is a short piece of text intended to attract attention.
{{</* /callout */>}}
```

### Warning

{{< callout type="warning" >}}
  A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

```markdown
{{</* callout type="warning" */>}}
  A **callout** is a short piece of text intended to attract attention.
{{</* /callout */>}}
```

### Error

{{< callout type="error" >}}
  A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

```markdown
{{</* callout type="error" */>}}
  A **callout** is a short piece of text intended to attract attention.
{{</* /callout */>}}
```

### Important

{{< callout type="important" >}}
  A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

```markdown
{{</* callout type="important" */>}} 
  A **callout** is a short piece of text intended to attract attention.
{{</* /callout */>}}
```

### Custom Icon

{{< callout icon="sparkles" >}}
A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

```markdown
{{</* callout icon="sparkles" */>}}
  A **callout** is a short piece of text intended to attract attention.
{{</* /callout */>}}
```

{{< callout type="important" icon="sparkles" >}}
A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

```markdown
{{</* callout type="important" icon="sparkles" */>}}
  A **callout** is a short piece of text intended to attract attention.
{{</* /callout */>}}
```

### Emoji

{{< callout emoji="🌐" >}}
A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

```markdown
{{</* callout emoji="🌐" */>}}
  A **callout** is a short piece of text intended to attract attention.
{{</* /callout */>}}
```

{{< callout type="info" emoji="ℹ️" >}}
A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

```markdown
{{</* callout type="info" emoji="ℹ️" */>}}
  A **callout** is a short piece of text intended to attract attention.
{{</* /callout */>}}
```

## Options


| Parameter | Description |
| --------- | ------------------------------------------------------------------------------- |
| `type` | The type of callout. (default, `info`, `warning`, `error`, `important`) |
| `emoji` | The emoji to show before the callout. |
| `icon` | The icon to show before the callout. (related to type or can be a custom icon). |


# Cards Component

## Example

{{< cards >}}
{{< card link="../callout" title="Callout" icon="warning" >}}
{{< card link="../callout" title="Card with tag" icon="tag" tag="custom tag">}}
{{< card link="/" title="No Icon" >}}
{{< /cards >}}

{{< cards >}}
{{< card link="/" title="Image Card" image="https://github.com/user-attachments/assets/71b7e3ec-1a8d-4582-b600-5425c6cc0407" subtitle="Internet Image" >}}
{{< card link="/" title="Local Image" image="/images/card-image-unprocessed.jpg" subtitle="Raw image under static directory." >}}
{{< card link="/" title="Local Image" image="images/space.jpg" subtitle="Image under assets directory, processed by Hugo." method="Resize" options="600x q80 webp" >}}
{{< /cards >}}


## Usage

```
{{</* cards */>}}
  {{</* card link="../callout" title="Callout" icon="warning" */>}}
  {{</* card link="../callout" title="Card with tag" icon="tag" tag= "A custom tag" */>}}
  {{</* card link="/" title="No Icon" */>}}
{{</* /cards */>}}
```

```
{{</* cards */>}}
  {{</* card link="/" title="Image Card" image="https://source.unsplash.com/featured/800x600?landscape" subtitle="Unsplash Landscape" */>}}
  {{</* card link="/" title="Local Image" image="/images/card-image-unprocessed.jpg" subtitle="Raw image under static directory." */>}}
  {{</* card link="/" title="Local Image" image="images/space.jpg" subtitle="Image under assets directory, processed by Hugo." method="Resize" options="600x q80 webp" */>}}
  {{</* card link="/" title="Custom Alt Text" image="images/space.jpg" alt="A beautiful view of space with stars and galaxies" subtitle="Image with custom alt text for accessibility." */>}}
{{</* /cards */>}}
```

## Card Parameters


| Parameter | Description |
| ---------- | -------------------------------------------------------------------------- |
| `link` | URL (internal or external). |
| `title` | Title heading for the card. |
| `subtitle` | Subtitle heading (supports Markdown). |
| `icon` | Name of the icon. See [icons]({{% relRef "icon" %}}) for more information. |


## Image Card

Additionally, the card supports adding image and processing through these parameters:


| Parameter | Description |
| ------------ | ------------------------------------------------------------------- |
| `image` | Specifies the image URL for the card. |
| `alt` | Alternative text for the image (defaults to title if not provided). |
| `method` | Sets Hugo's image processing method. |
| `options` | Configures Hugo's image processing options. |
| `imageStyle` | Used to fill the style attribute of the image tag. |


Card supports three kinds of images:

1. Remote image: the full URL in the `image` parameter.
2. Static image: use the relative path in Hugo's `static/` directory.
3. Processed image: use the relative path in Hugo's `assets/` directory.

Hextra auto-detects if image processing is needed during build and applies the `options` parameter or default settings (Resize, 800x, Quality 80, WebP Format).
It currently supports these `method`: `Resize`, `Fit`, `Fill` and `Crop`.

For more on Hugo's built in image processing commands, methods, and options see their [Image Processing Documentation](https://gohugo.io/content-management/image-processing/).

## Tags

Card supports adding tags which could be useful to show extra status information.


| Parameter | Description |
| ----------- | -------------------------------------------------------------- |
| `tag` | Text in tag. |
| `tagColor` | Color of the tag. See [badges](#badges) for more information. |
| `tagIcon` | Icon of the tag. See [badges](#badges) for more information. |
| `tagBorder` | Border of the tag. See [badges](#badges) for more information. |


{{< cards >}}
{{< card link="../callout" title="Card with default tag" tag="tag text" >}}
{{< card link="../callout" title="Card with red tag" tag="tag text" tagColor="red" >}}
{{< card link="../callout" title="Card with blue tag" tag="tag text" tagColor="blue" >}}
{{< card link="../callout" title="Card with yellow tag" tag="tag text" tagColor="yellow" tagIcon="sparkles" tagBorder=false >}}
{{< card link="/" title="Image Card" image="/images/card-image-unprocessed.jpg" subtitle="Image" tag="tag text" tagColor="green" >}}
{{< card link="/" title="Image Card" image="images/space.jpg" subtitle="Image" tag="tag text" tagColor="purple" tagIcon="sparkles" tagBorder=false >}}
{{< /cards >}}

```
{{</* cards */>}}
  {{</* card link="../callout" title="Card with default tag color" tag="tag text" */>}}
  {{</* card link="../callout" title="Card with red tag" tag="tag text" tagColor="red" */>}}
  {{</* card link="../callout" title="Card with blue tag" tag="tag text" tagColor="blue" */>}}
  {{</* card link="../callout" title="Card with yellow tag" tag="tag text" tagColor="yellow" tagIcon="sparkles" tagBorder=false */>}}
  {{</* card link="/" title="Image Card" image="/images/card-image-unprocessed.jpg" subtitle="Image" tag="tag text" tagColor="green" */>}}
  {{</* card link="/" title="Image Card" image="images/space.jpg" subtitle="Image" tag="tag text" tagColor="purple" tagIcon="sparkles" tagBorder=false */>}}
{{</* /cards */>}}
```

## Columns

You can specify the maximum number of columns for cards to span by passing the `cols` parameter to the `cards` shortcode. Note that columns will still be collapsed on smaller screens.

{{< cards cols="1" >}}
{{< card link="/" title="Top Card" >}}
{{< card link="/" title="Bottom Card" >}}
{{< /cards >}}

{{< cards cols="2" >}}
{{< card link="/" title="Left Card" >}}
{{< card link="/" title="Right Card" >}}
{{< /cards >}}

```
{{</* cards cols="1" */>}}
  {{</* card link="/" title="Top Card" */>}}
  {{</* card link="/" title="Bottom Card" */>}}
{{</* /cards */>}}

{{</* cards cols="2" */>}}
  {{</* card link="/" title="Left Card" */>}}
  {{</* card link="/" title="Right Card" */>}}
{{</* /cards */>}}
```

# Details

A built-in component to display a collapsible content.



## Example

{{< details title="Details" >}}

This is the content of the details.

Markdown is **supported**.

{{< /details >}}

{{< details title="Click me to reveal" closed="true" >}}

This will be hidden by default.

{{< /details >}}

## Usage

```markdown
{{</* details title="Details" */>}}

This is the content of the details.

Markdown is **supported**.

{{</* /details */>}}
```

```markdown
{{</* details title="Click me to reveal" closed="true" */>}}

This will be hidden by default.

{{</* /details */>}}
```

# FileTree Component

## Example

{{< filetree/container >}}
  {{< filetree/folder name="content" >}}
    {{< filetree/file name="_index.md" >}}
    {{< filetree/folder name="docs" state="closed" >}}
      {{< filetree/file name="_index.md" >}}
      {{< filetree/file name="introduction.md" >}}
      {{< filetree/file name="introduction.fr.md" >}}
    {{< /filetree/folder >}}
  {{< /filetree/folder >}}
  {{< filetree/file name="hugo.toml" >}}
{{< /filetree/container >}}

## Usage

```text {filename="Markdown"}
{{</* filetree/container */>}}
  {{</* filetree/folder name="content" */>}}
    {{</* filetree/file name="_index.md" */>}}
    {{</* filetree/folder name="docs" state="closed" */>}}
      {{</* filetree/file name="_index.md" */>}}
      {{</* filetree/file name="introduction.md" */>}}
      {{</* filetree/file name="introduction.fr.md" */>}}
    {{</* /filetree/folder */>}}
  {{</* /filetree/folder */>}}
  {{</* filetree/file name="hugo.toml" */>}}
{{</* /filetree/container */>}}
```

## Options

### `filetree/file`


| Parameter | Description |
| --------- | --------------------- |
| `name` | The name of the file. |


### `filetree/folder`


| Parameter | Description |
| --------- | -------------------------------------------------------------------- |
| `name` | The name of the file. |
| `state` | The state of the file. Can be `open` or `closed`. Default is `open`. |


# Icon

To use this shortcode inline, inline shortcode needs to be enabled in the config:

```yaml {filename="hugo.yaml"}
enableInlineShortcodes: true
```

List of available icons can be found in [icons.yml](https://github.com/imfing/hextra/blob/main/data/icons.yaml).

## Example

{{< icon "academic-cap" >}}
{{< icon "cake" >}}
{{< icon "gift" >}}
{{< icon "sparkles" >}}

## Usage

```
{{</* icon "github" */>}}
```

[Heroicons](https://v1.heroicons.com/) v1 outline icons are available out of the box.

### How to add your own icons

Create `data/icons.yaml` file, then add your own SVG icons in the following format:

```yaml {filename="data/icons.yaml"}
your-icon: <svg>your icon svg content</svg>
```

It then can be used in the shortcode like this:

```
{{</* icon "your-icon" */>}}

{{</* card icon="your-icon" */>}}
```

Tip: [Iconify Design](https://iconify.design/) is a great place to find SVG icons for your site.

## Options


| Name | Description |
| ------------ | --------------------------- |
| `name` | Icon name |
| `attributes` | The attributes of the icon. |


# Other Shortcodes

{{< callout type="warning" >}}
  Some of these are Hugo built-in shortcodes.
  These shortcodes are considered less stable and may be changed anytime.
{{< /callout >}}

## Badge

### Examples

{{< badge "default" >}}&nbsp;
{{< badge content="border" border=false >}}&nbsp;
{{< badge content="color" color="green" >}}&nbsp;
{{< badge content="link" link="[https://github.com/imfing/hextra/releases](https://github.com/imfing/hextra/releases)" >}}&nbsp;
{{< badge content="icon" icon="sparkles" >}}&nbsp;

### Usage

#### Default

{{< badge "Badge" >}}&nbsp;

```
{{</* badge "Badge" */>}}
```

#### Colors

{{< badge content="Badge" >}}&nbsp;
{{< badge content="Badge" color="purple" >}}&nbsp;
{{< badge content="Badge" color="indigo" >}}&nbsp;
{{< badge content="Badge" color="blue" >}} &nbsp;
{{< badge content="Badge" color="green" >}} &nbsp;
{{< badge content="Badge" color="yellow" >}} &nbsp;
{{< badge content="Badge" color="amber" >}} &nbsp;
{{< badge content="Badge" color="orange" >}} &nbsp;
{{< badge content="Badge" color="red" >}}&nbsp;

```
{{</* badge content="Badge" */>}}
{{</* badge content="Badge" color="purple" */>}}
{{</* badge content="Badge" color="indigo" */>}}
{{</* badge content="Badge" color="blue" */>}}
{{</* badge content="Badge" color="green" */>}}
{{</* badge content="Badge" color="yellow" */>}}
{{</* badge content="Badge" color="amber" */>}}
{{</* badge content="Badge" color="orange" */>}}
{{</* badge content="Badge" color="red" */>}}
```

{{< badge content="Badge" border=false >}} &nbsp;
{{< badge content="Badge" color="purple" border=false >}} &nbsp;
{{< badge content="Badge" color="indigo" border=false >}} &nbsp;
{{< badge content="Badge" color="blue" border=false >}} &nbsp;
{{< badge content="Badge" color="green" border=false >}} &nbsp;
{{< badge content="Badge" color="yellow" border=false >}} &nbsp;
{{< badge content="Badge" color="amber" border=false >}} &nbsp;
{{< badge content="Badge" color="orange" border=false >}}&nbsp;
{{< badge content="Badge" color="red" border=false >}}&nbsp;

```
{{</* badge content="Badge" border=false */>}}
{{</* badge content="Badge" color="purple" border=false */>}}
{{</* badge content="Badge" color="indigo" border=false */>}}
{{</* badge content="Badge" color="blue" border=false */>}}
{{</* badge content="Badge" color="green" border=false */>}}
{{</* badge content="Badge" color="yellow" border=false */>}}
{{</* badge content="Badge" color="amber" border=false */>}}
{{</* badge content="Badge" color="orange" border=false */>}}
{{</* badge content="Badge" color="red" border=false */>}}
```

#### Variants

{{< badge content="Badge" icon="sparkles" >}}&nbsp;
{{< badge content="Releases" link="[https://github.com/imfing/hextra/releases](https://github.com/imfing/hextra/releases)" icon="github" >}}&nbsp;

```
{{</* badge content="Badge" icon="sparkles" */>}}
{{</* badge content="Releases" link="https://github.com/imfing/hextra/releases" icon="github" */>}}
```

### Options


| Name | Description |
| --------- | ------------------------------------------------------------------------------------------------------------------ |
| `content` | The text of the badge. |
| `link` | The link of the badge. |
| `icon` | The icon of the badge. |
| `color` | The color of the badge. `gray` (default), `purple`, `indigo`, `blue`, `green`, `yellow`, `amber`, `orange`, `red`. |
| `class` | The class of the badge. |
| `border` | Adds or removes the border (default: true). |


## YouTube

Embed a YouTube video.

```
{{</* youtube VIDEO_ID */>}}
```

Result:

{{< youtube id=dQw4w9WgXcQ loading=lazy >}}

For more information, see [Hugo's YouTube Shortcode](https://gohugo.io/content-management/shortcodes/#youtube).

## PDF

With PDF shortcode, you can embed a PDF file in your content.

```
{{</* pdf "https://example.com/sample.pdf" */>}}
```

You can also place the PDF file in your project directory and use the relative path.

```
{{</* pdf "path/to/file.pdf" */>}}
```

Example:

{{< pdf "https://upload.wikimedia.org/wikipedia/commons/1/13/Example.pdf" >}}

# Steps

A built-in component to display a series of steps.

You can use the Markdown attribute `{class="no-step-marker"}` to prevent a heading from being counted as a step.

## Example

{{% steps %}}

### Step 1

This is the first step.

### Step 2

This is the second step.

#### Step subheading {class="no-step-marker"}

This will not be counted as a step.

### Step 3

This is the third step.

{{% /steps %}}

## Usage

{{< callout type="warning" >}}
  Please note that this shortcode is intended **only for Markdown content**.
  If you put HTML content or other shortcodes as step content, it may not render as expected.
{{< /callout >}}

Put Markdown h3 header within `steps` shortcode.

```
{{%/* steps */%}}

### Step 1

This is the first step.

### Step 2

This is the second step.

#### Step subheading {class="no-step-marker"}

This will not be counted as a step.

{{%/* /steps */%}}
```

# Tabs

## Example

{{< tabs >}}
  {{< tab name="JSON" >}}**JSON**: JavaScript Object Notation (JSON) is a standard text-based format for representing structured data based on JavaScript object syntax.{{< /tab >}}
  {{< tab name="YAML" >}}**YAML**: YAML is a human-readable data serialization language.{{< /tab >}}
  {{< tab name="TOML" >}}**TOML**: TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.{{< /tab >}}
{{< /tabs >}}

## Usage

### Default

```
{{</* tabs */>}}

  {{</* tab name="JSON" */>}}**JSON**: JavaScript Object Notation (JSON) is a standard text-based format for representing structured data based on JavaScript object syntax.{{</* /tab */>}}
  {{</* tab name="YAML" */>}}**YAML**: YAML is a human-readable data serialization language.{{</* /tab */>}}
  {{</* tab name="TOML" */>}}**TOML**: TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.{{</* /tab */>}}

{{</* /tabs */>}}
```

### Specify Selected Tab

Use `selected` property to specify the selected tab.

```
{{</* tabs */>}}

  {{</* tab name="JSON" */>}}**JSON**: JavaScript Object Notation (JSON) is a standard text-based format for representing structured data based on JavaScript object syntax.{{</* /tab */>}}
  {{</* tab name="YAML" selected=true */>}}**YAML**: YAML is a human-readable data serialization language.{{</* /tab */>}}
  {{</* tab name="TOML" */>}}**TOML**: TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.{{</* /tab */>}}

{{</* /tabs */>}}
```

The `YAML` tab will be selected by default.

{{< tabs >}}
  {{< tab name="JSON" >}}**JSON**: JavaScript Object Notation (JSON) is a standard text-based format for representing structured data based on JavaScript object syntax.{{< /tab >}}
  {{< tab name="YAML" selected=true >}}**YAML**: YAML is a human-readable data serialization language.{{< /tab >}}
  {{< tab name="TOML" >}}**TOML**: TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.{{< /tab >}}
{{< /tabs >}}

### Add Icons

Use the `icon` property on each `tab` to display an icon before the label.
See the [Icon shortcode](../icon) page for the list of available icons.

```
{{</* tabs */>}}

  {{</* tab name="Photos" icon="photograph" */>}}Manage and organize your photo library.{{</* /tab */>}}
  {{</* tab name="Music" icon="music-note" */>}}Browse and play your favorite tracks.{{</* /tab */>}}
  {{</* tab name="Videos" icon="film" */>}}Watch and stream video content.{{</* /tab */>}}

{{</* /tabs */>}}
```

{{< tabs >}}
  {{< tab name="Photos" icon="photograph" >}}Manage and organize your photo library.{{< /tab >}}
  {{< tab name="Music" icon="music-note" >}}Browse and play your favorite tracks.{{< /tab >}}
  {{< tab name="Videos" icon="film" >}}Watch and stream video content.{{< /tab >}}
{{< /tabs >}}

### Use Markdown

Markdown syntax including code block is also supported:

```
{{</* tabs */>}}

  {{</* tab name="JSON" */>}}
  ```json
  { "hello": "world" }
```

  {{</* /tab */>}}

  ... add other tabs similarly

{{</* /tabs */>}}

```

{{< tabs >}}

  {{< tab name="JSON" >}}

  {{< /tab >}}

  {{< tab name="YAML" >}}

  {{< /tab >}}

  {{< tab name="TOML" >}}

  {{< /tab >}}

{{< /tabs >}}

### Sync Tabs

Tabs with the same list of `items` can be synchronized. When enabled, selecting a tab updates all other tabs with the same `items` and remembers the selection across pages.

Enable/disable globally in your `hugo.yaml` under the `page` section:

```yaml {filename="hugo.yaml"}
params:
  page:
    tabs:
      sync: true
```

Enable/disable per page inside the front matter:

```yaml {filename="my_page.md"}
---
title: My page
params:
  tabs:
    sync: true
---

Example content.
```

With this enabled, the following two tab blocks will always display the same selected item:

```markdown
{{</* tabs */>}}

  {{</* tab name="A" */>}}A content{{</* /tab */>}}
  {{</* tab name="B" */>}}B content{{</* /tab */>}}

{{</* /tabs */>}}

{{</* tabs */>}}

  {{</* tab name="A" */>}}Second A content{{</* /tab */>}}
  {{</* tab name="B" */>}}Second B content{{</* /tab */>}}

{{</* /tabs */>}}
```

# Term

A built-in component to display a terminology definition.

Glossary definition is maintained in a structured YAML [data file](/docs/advanced/additional-pages/#glossary),
with one file defined per supported language.

## Example

- {{< term "static site generator" >}}
- {{< term "SEO" >}}

## Usage

```
{{</* term "SEO" */>}}
```

If a term is not found in the glossary, it is returned as-is.

## Options


| Name | Description |
| ------- | ------------- |
| `entry` | Glossary term |


