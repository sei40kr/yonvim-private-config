---@diagnostic disable: unused-local
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
local fmt = require("luasnip.extras.fmt").fmt
local m = require("luasnip.extras").m
local lambda = require("luasnip.extras").l

return {
	s(
		{ trig = "details", name = "details shortcode" },
		fmt(
			[[
{{{{< details >}}}}
{}
{{{{< /details >}}}}
]],
			{ i(0) }
		)
	),
	s(
		{ trig = "katex", name = "KaTeX shortcode" },
		fmt(
			[[
{{{{< katex{display} >}}}}{lf}{}{lf}{{{{< /katex >}}}}
]],
			{
				i(0),
				lf = f(function(args)
					return args[1][1] == " display" and { "", "" } or ""
				end, { 1 }),
				display = i(1, " display"),
			}
		)
	),
}
