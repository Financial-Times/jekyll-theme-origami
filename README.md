
# jekyll-theme-origami

This is an experiment, please don't use it yet.

I came up with this list of requirements for page types, based on the Origami and Engineering Progression websites, as well as looking at things like SOS which use more custom layouts:

  - Site-wide
    - Page head
      - **Requirement:** Favicon must be editable
      - **Requirement:** Must be possible to add additional things to the `<head>`
    - Header
      - **Requirement:** Logo must be editable
      - **Requirement:** Site name must be editable
      - **Requirement:** Site tagline must be editable
      - **Requirement:** Site tagline must be optional
      - **Requirement:** Navigation must be editable
      - **Requirement:** Navigation must be optional
    - Footer
      - **Requirement:** GitHub URL must be editable
      - **Requirement:** GitHub URL must be optional
      - **Requirement:** Slack URL and name must be editable
      - **Requirement:** Slack URL and name must be optional
  - Landing layout
    - Used for home pages
      - **Requirement:** Hero content must be editable
      - **Requirement:** Hero image must be editable
    - Used for documentation overview
      - **Requirement:** Hero must be muteable (see `o-layout__hero--muted`)
    - For custom layouts (e.g. SOS pages):
      - **Requirement:** Hero must be optional
  - Documentation layout
    - Used mostly for general content pages
      - **Requirement:** Sidebar auto-generation must be optional
  - Query layout
    - Not really used by these sites, making some assumptions
      - **Requirement:** Heading content must be editable
      - **Requirement:** Sidebar content must be editable
      - **Requirement:** RHS sidebar content must be editable
      - **Requirement:** RHS sidebar must be optional

I've managed to do all of these except the navigation so far, which will be more work I think.

## Configuration (WIP)

Site-wide config example:

```yaml
# Set the theme!
theme: jekyll-theme-origami # Local development
remote_theme: Financial-Times/jekyll-theme-origami # GitHub pages
```

Example Gemfile:

```ruby
gem 'github-pages', group: :jekyll_plugins
gem 'jekyll-theme-origami', git: 'https://github.com/Financial-Times/jekyll-theme-origami.git'
```

Landing Layout frontmatter example:

```yaml
hero:
  content_include: example.html
  is_muted: false
  extra_classes: example-class
  image_url: example.jpg
```

Documentation Layout frontmatter example:

```yaml
sidebar:
  content_include: example.html
  extra_classes: example-class
```

Query Layout frontmatter example:

```yaml
heading:
  content_include: example.html
  extra_classes: example-class
sidebar:
  content_include: example.html
  extra_classes: example-class
aside:
  content_include: example.html
  extra_classes: example-class
```

## Changes?

  - Prefix layouts (and maybe some partials) with `origami-theme-`?
  - Convention of using `-override`. Example: `_includes/origami-theme-navigation`, used by `_includes/origami-theme-navgation-override`
