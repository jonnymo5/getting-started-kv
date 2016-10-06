defmodule KV.Bucket do
  @doc """
  Starts a new bucket.
  """
  def start_link do
    Agent.start_link(fn -> %{} end)
  end

  @doc """
  Gets a value from the 'bucket' by 'key'.
  """
  def get( bucket, key) do
    #Agent.get( bucket, fn map -> Map.get(map, key) end)
    Agent.get( bucket, &Map.get(&1, key))
  end

  @doc """
  Puts the 'value' for the given key in the 'bucket'.
  """
  def put( bucket, key, val) do
    #Agent.update( bucket, fn map -> Map.put(map, key, val) end)
    Agent.update( bucket, &Map.put(&1, key, val))
  end

  @doc """
  Deletes 'key' from 'bucket'.

  Returns the current value of 'key', if it exists
  """
  def delete( bucket, key) do
    Agent.get_and_update(bucket, &Map.pop(&1, key))
  end

end
