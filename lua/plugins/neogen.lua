-- A better annotation generator.
local plugin = {
  "danymat/neogen",
  opts = function(_, opts)
    opts.languages = {
      python = {
        template = {
          annotation_convention = "google_docstrings",
        },
      },
    }
  end,
}

return plugin
