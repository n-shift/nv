local g = vim.g
g.dashboard_default_executive = "telescope"
g.dashboard_custom_footer = { "   nv   ", "by shift" }
g.dashboard_custom_header = {
    "                     ",
    "                     ",
    "( (    /||\\     /|  ",
    "|  \\  ( || )   ( |  ",
    "|   \\ | || |   | |  ",
    "| (\\ \\) |( (   ) ) ",
    "| | \\   | \\ \\_/ / ",
    "| )  \\  |  \\   /   ",
    "|/    )_)   \\_/     ",
    "                     ",
    "                     ",
    "                     ",
    "                     ",
    "                     ",
    "                     ",
}
g.dashboard_custom_section = {
    new_file = {
        description = { "  Open new file                        LEADER n f" },
        command = "DashboardNewFile",
    },
    recent_files = {
        description = { "  Recently opened files                LEADER t r" },
        command = "Telescope oldfiles",
    },
    browser = {
        description = { "  File Browser                         LEADER t s" },
        command = "Telescope file_browser",
    },
    find_word = {
        description = { "  Live grep                            LEADER t g" },
        command = "Telescope live_grep",
    },
    find_file = {
        description = { "  Find file                            LEADER t f" },
        command = "Telescope find_file",
    },
}
