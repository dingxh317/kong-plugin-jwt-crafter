package = "kong-plugin-jwt-crafter"
version = "2.0-0"

source = {
  url = "git://github.com/dingxh317/kong-plugin-jwt-crafter",
  tag = "v1.0"
}

description = {
  summary = "Crafts JWT plugin for succesfully authenticated requests based on consumer JWT credential.",
  license = "MIT"
}

dependencies = {
  "lua ~> 5.1",
  "inspect ~> 3.1.0",
  "lua-resty-jwt ~> 0.1.11-0"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwt-crafter.handler"] = "src/handler.lua",
    ["kong.plugins.jwt-crafter.schema"] = "src/schema.lua",
  }
}
