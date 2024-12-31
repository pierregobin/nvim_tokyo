local ls=require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets("all", {
    s("pipelineloop",{
        t("pipelineloop("), i(1, "min"), t(" , "), i(2, "max"), t(" , "), i(3,"name"), t(")")
    }),
})

ls.add_snippets("all", {
    s("ach"), {
        t("ACHIEVABLE")
    }
})
