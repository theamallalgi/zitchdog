<!-- tests/fixtures/sample.md -->
# Zitchdog Theme

A colorscheme built for **clarity** and *contrast*.

## Features

- Recursive group loader
- Per-plugin highlight files
- Multiple variants

## Comparison

| Variant | Style     | Default |
|---------|-----------|---------|
| grape   | Purple    | Yes     |
| dune    | Warm      | No      |
| pine    | Cool      | No      |

> Highlight groups are split into `core/` and `plugins/`.

```lua
require("zitchdog").load({ variant = "grape" })
```
---

Visit the [repo](https://github.com/example/zitchdog) for more.

# tests/fixtures/sample.yaml
name: zitchdog
version: 1.0.0
variants:
  - dune
  - grape
  - pine
config:
  transparent_bg: false
  italic_comments: true
  timeout: 500
dependencies:
  - name: telescope.nvim
    optional: true
  - name: gitsigns.nvim
    optional: false
