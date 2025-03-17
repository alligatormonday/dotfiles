-- custom mappings
local function is_nvim_tree_focused()
    local current_buffer_name = vim.api.nvim_buf_get_name(0)
    return current_buffer_name:match("NvimTree_")
end

function ToggleAndReturnToBuffer()
    if is_nvim_tree_focused() then
        vim.cmd('wincmd p')
    else
        vim.cmd(':NvimTreeFocus')
    end
end


