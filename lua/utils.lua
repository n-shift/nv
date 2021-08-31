_G.prequire = function(plugin)
    local present, plug = pcall(require, plugin)
    if present then
        return plug
    end
    local errmsg = string.format("Could not load %s", plugin)
    print(errmsg)
end

vim.cmd [[
" functions that are unnecessary to write in lua

" open github link under cursor
function Github()
    let @g = ""
    normal "gyi"
    if @g != ""
        if has('win32') || has('win64')
            call system("start " . "https://github.com/" . @g)
        else
            call system("open " . "https://github.com/" . @g)
        endif
    endif
    let @g = ""
endfunction
]]

