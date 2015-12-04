defmodule Butler.Tableflip do
  @moduledoc """
  Flip some tables
  """

  use Butler.Plugin

  @usage """
  tableflip - replies with a flipped table
  """

  def flip_table do
    :random.seed(:os.timestamp)
    table_list = [
      "(╯°□°）╯︵ ┻━┻",
      "(╯°□°）╯︵ <ǝlqɐʇ>",
      "the table flipped you! ノ┬─┬ノ ︵ ( \o°o)\ ",
      "┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻"
    ]

    Enum.random(table_list)
  end

  hear ~r/tableflip/, conn do
    reply conn, flip_table
  end
end
