package = "kong-plugin-api-transformer"
version = "0.1.0-0"
source = {
  url = "git://github.com/parthasai/kong-plugin-api-transformer",
}
description = {
  summary = "A Kong plugin that enables elastic request/response transforming by lua scripts",
  license = "Apache License 2.0",
  maintainer = "andersenhuang@qnap.com"
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.api-transformer.handler"] = "./kong/plugins/api-transformer/handler.lua",
    ["kong.plugins.api-transformer.schema"] = "./kong/plugins/api-transformer/schema.lua",
    ["kong.plugins.api-transformer.utils"] = "./kong/plugins/api-transformer/utils.lua"
  }
}
