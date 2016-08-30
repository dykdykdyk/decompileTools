package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

final class TypeAdapters$1 extends TypeAdapter<AtomicInteger>
{
  public final AtomicInteger read(JsonReader paramJsonReader)
    throws IOException
  {
    try
    {
      paramJsonReader = new AtomicInteger(paramJsonReader.nextInt());
      return paramJsonReader;
    }
    catch (NumberFormatException paramJsonReader)
    {
    }
    throw new JsonSyntaxException(paramJsonReader);
  }

  public final void write(JsonWriter paramJsonWriter, AtomicInteger paramAtomicInteger)
    throws IOException
  {
    paramJsonWriter.value(paramAtomicInteger.get());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.1
 * JD-Core Version:    0.6.2
 */