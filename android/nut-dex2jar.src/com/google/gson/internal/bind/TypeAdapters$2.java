package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

final class TypeAdapters$2 extends TypeAdapter<AtomicBoolean>
{
  public final AtomicBoolean read(JsonReader paramJsonReader)
    throws IOException
  {
    return new AtomicBoolean(paramJsonReader.nextBoolean());
  }

  public final void write(JsonWriter paramJsonWriter, AtomicBoolean paramAtomicBoolean)
    throws IOException
  {
    paramJsonWriter.value(paramAtomicBoolean.get());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.2
 * JD-Core Version:    0.6.2
 */