
    local ls = require("luasnip")
    local s = ls.snippet
    local sn = ls.snippet_node
    local isn = ls.indent_snippet_node
    local t = ls.text_node
    local i = ls.insert_node
    local f = ls.function_node
    local c = ls.choice_node
    local d = ls.dynamic_node
    local r = ls.restore_node
    local events = require("luasnip.util.events")
    local ai = require("luasnip.nodes.absolute_indexer")
    local extras = require("luasnip.extras")
    local l = extras.lambda
    local rep = extras.rep
    local p = extras.partial
    local m = extras.match
    local n = extras.nonempty
    local dl = extras.dynamic_lambda
    local fmt = require("luasnip.extras.fmt").fmt
    local fmta = require("luasnip.extras.fmt").fmta
    local conds = require("luasnip.extras.expand_conditions")
    local postfix = require("luasnip.extras.postfix").postfix
    local types = require("luasnip.util.types")
    local parse = require("luasnip.util.parser").parse_snippet
    local ms = ls.multi_snippet
    local k = require("luasnip.nodes.key_indexer").new_key

    ls.config.set_config{
        history=false,
        updateevents="TextChanged,TextChangedI",
    }
    ls.add_snippets("all", {
        s("ternary", {
            -- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
            i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
        }),
--        s("HLS_PIPELINE_LOOP",{
--            t("HLS_PIPELINE_LOOP("), i(1, "min"), t(" , "), i(2, "max"), t(" , "), i(3,"name"), t(")")
--        })
    })

    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/custom/snippets/" })

    vim.keymap.set({"i","s"}, "<c-k>",  function ()
	    if ls.expand_or_jumpable() then
		    ls.expand_or_jump()
	    end
    end, {silent=true})

    vim.keymap.set({"i","s"}, "<c-j>",  function ()
	    if ls.jumpable(-1) then
		    ls.jump(-1)
	    end
    end, {silent=true})
