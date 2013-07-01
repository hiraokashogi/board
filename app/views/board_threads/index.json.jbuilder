json.array!(@board_threads) do |board_thread|
  json.extract! board_thread, :name, :view_flag
  json.url board_thread_url(board_thread, format: :json)
end
