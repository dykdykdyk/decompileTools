package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

final class TypeAdapters$11 extends TypeAdapter<Number>
{
  public final Number read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    try
    {
      int i = paramJsonReader.nextInt();
      return Integer.valueOf(i);
    }
    catch (NumberFormatException paramJsonReader)
    {
    }
    throw new JsonSyntaxException(paramJsonReader);
  }

  public final void write(JsonWriter paramJsonWriter, Number paramNumber)
    throws IOException
  {
    paramJsonWriter.value(paramNumber);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.11
 * JD-Core Version:    0.6.2
 */