local ls = require("luasnip")

ls.add_snippets("all", {
    ls.parser.parse_snippet("expand", "--expanded hello00dnfaj")
  })


local s = ls.snippet
local fmt = require("luasnip.extras.fmt").fmt
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local t = ls.text_node

ls.add_snippets("all", {
    s("cpp", {
        t({
            "#include <bits/stdc++.h>",
            "",
            "using namespace std;",
            "",
            "typedef long long ll;",
            "typedef pair<int, int> pii;",
            "typedef vector<int> vi;",
            "typedef vector<vector<int>> vvi;",
            "",
            "#define FOR(i, a, b) for (int i = (a); i < (b); i++)",
            "#define ROF(i, a, b) for (int i = (b) - 1; i >= (a); i--)",
            "#define REP(a) FOR(i, 0, a)",
            "#define RREP(a) ROF(i, 0, a)",
            "#define pb push_back",
            "#define mp make_pair",
            "#define all(a) (a).begin(), (a).end()",
            "#define fast_io \\",
            "  ios_base::sync_with_stdio(false); \\",
            "  cin.tie(NULL); \\",
            "  cout.tie(NULL);",
            "#define io \\",
            "  freopen(\"input.txt\", \"r\", stdin); \\",
            "  freopen(\"output.txt\", \"w\", stdout);",
            "",
        })
    })
})

