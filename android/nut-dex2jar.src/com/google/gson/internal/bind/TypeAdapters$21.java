package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

final class TypeAdapters$21 extends TypeAdapter<StringBuffer>
{
  public final StringBuffer read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return new StringBuffer(paramJsonReader.nextString());
  }

  public final void write(JsonWriter paramJsonWriter, StringBuffer paramStringBuffer)
    throws IOException
  {
    if (paramStringBuffer == null);
    for (paramStringBuffer = null; ; paramStringBuffer = paramStringBuffer.toString())
    {
      paramJsonWriter.value(paramStringBuffer);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.21
 * JD-Core Version:    0.6.2
 */