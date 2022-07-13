local function tsserver_settings(client)
  if client.name == 'tsserver' then
    client.resolved_capabilities.document_formatting = false
  end
end

return tsserver_settings
