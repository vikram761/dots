return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }
  local quotes = {
    "Don't be afraid to take risks and step out of your comfort zone.",
    "Believe in yourself and chase your dreams, no matter what obstacles come your way.",
    "True confidence comes from within, not from seeking validation from others.",
    "Stay humble, work hard, and never lose sight of your goals.",
    "Surround yourself with people who inspire and motivate you to be your best self."
  }
  local function footer()
    local randomIndex = math.random(#quotes)
    return quotes[randomIndex]
  end

  dashboard.section.footer.val = footer()
   alpha.setup(dashboard.opts)
  end,
}
