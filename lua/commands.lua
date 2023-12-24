vim.api.nvim_create_user_command(
	'InitFilesInWindows',
	function(input)
		vim.cmd('cd C:\\Users\\zdm\\AppData\\Local\\nvim')
		vim.cmd('NvimTreeToggle')
	end,
	{}
)
