package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;

final class Gson$6 extends TypeAdapter<AtomicLong>
{
  Gson$6(TypeAdapter paramTypeAdapter)
  {
  }

  public final AtomicLong read(JsonReader paramJsonReader)
    throws IOException
  {
    return new AtomicLong(((Number)this.val$longAdapter.read(paramJsonReader)).longValue());
  }

  public final void write(JsonWriter paramJsonWriter, AtomicLong paramAtomicLong)
    throws IOException
  {
    this.val$longAdapter.write(paramJsonWriter, Long.valueOf(paramAtomicLong.get()));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.Gson.6
 * JD-Core Version:    0.6.2
 */