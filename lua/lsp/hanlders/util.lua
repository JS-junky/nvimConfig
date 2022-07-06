local M = {}

M.check_server_avilability = function(server)
  local is_server_available = pcall(require, server)
  if not is_server_available then
    print(server .. " is unavilable.")
    return
  end
end

return M
