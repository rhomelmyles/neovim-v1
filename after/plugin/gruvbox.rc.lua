local status, n = pcall(require, 'gruvbox')
if (not status) then return end


n.setup({
    palette_overrides = {
     	dark0_hard = "#161616",
    },
    contrast = "hard",
    overrides = {
        Constant = {link="GruvboxPurpleBold"},
        StorageClass = {fg = "#98A254", bold=true},
        Type = {link="GruvboxYellowBold"},
        Identifier = {link="GruvboxBlue"},
        ["@parameter"] = {link = "GruvboxYellow"},
        ["@variable.builtin"] = {link="GruvboxYellowBold"},
        htmlArg = {link="GruvboxRed"},
        Conditional = { link = "GruvboxRedBold" },
        Statement = { link = "GruvboxRedBold" },
        Repeat = { link = "GruvboxRedBold" },
        Label = { link = "GruvboxRedBold" },
        Keyword = { link = "GruvboxRedBold" },
        Tag = { link = "GruvboxRedBold" },
        Special = { link = "GruvboxOrangeBold" },
    }
})
