local function sumneko_lua_settings(client)
  if client.name == 'sumneko_lua' then
    globals = { 'vim' }
  end
end

return sumneko_lua_settings
