local M = {}

-- Function to insert Verilator lint comments
function M.insert_verilator_lint(count)
  count = count or 1 -- Default to 1 if no count is provided

  local word = vim.fn.input 'Enter which warning should be suppressed: '
  if word == '' then
    return
  end

  local line_number = vim.fn.line '.'
  vim.fn.append(line_number - 1, '// verilator lint_off ' .. word)
  vim.fn.append(line_number - 1 + count + 1, '// verilator lint_on ' .. word)
end

return M
