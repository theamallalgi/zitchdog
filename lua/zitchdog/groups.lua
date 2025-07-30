local M = {}

function M.setup(palette, config)
  local groups = {}

  -- Editor Groups
  local editor_groups = require("zitchdog.groups.editor").create(palette, require("zitchdog.common.core").createZitchPattern(palette), config)
  for group, highlight in pairs(editor_groups) do
    groups[group] = highlight
  end

  -- Language Groups
  local language_groups = require("zitchdog.groups.languages").create(palette, require("zitchdog.common.core").createZitchPattern(palette), config)
  for group, highlight in pairs(language_groups) do
    groups[group] = highlight
  end

  -- Treesitter Groups
  local treesitter_groups = require("zitchdog.groups.treesitter").create(palette, require("zitchdog.common.core").createZitchPattern(palette), config)
  for group, highlight in pairs(treesitter_groups) do
    groups[group] = highlight
  end

  return groups
end

return M
