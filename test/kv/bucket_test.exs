defmodule KV.BucketTest do
  use ExUnit.Case, async: true

  setup  do
    {:ok, bucket} = KV.Bucket.start_link
    {:ok, bucket: bucket}
  end

  test "stores value by key", %{bucket: bucket} do
    assert KV.Bucket.get(bucket, "milk") == nil

    KV.Bucket.put(bucket, "milk", 3)
    assert KV.Bucket.get(bucket, "milk") == 3
  end

  test "deletes key from bucket", %{bucket: bucket} do
    assert KV.Bucket.get(bucket, "bread") == nil

    KV.Bucket.put(bucket, "bread", 2)
    assert KV.Bucket.get(bucket, "bread") == 2

    assert KV.Bucket.delete(bucket, "bread") == 2
    assert KV.Bucket.get(bucket, "bread") == nil
  end
end
