package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

final class TypeAdapters$17 extends TypeAdapter<String>
{
  public final String read(JsonReader paramJsonReader)
    throws IOException
  {
    JsonToken localJsonToken = paramJsonReader.peek();
    if (localJsonToken == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    if (localJsonToken == JsonToken.BOOLEAN)
      return Boolean.toString(paramJsonReader.nextBoolean());
    return paramJsonReader.nextString();
  }

  public final void write(JsonWriter paramJsonWriter, String paramString)
    throws IOException
  {
    paramJsonWriter.value(paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.17
 * JD-Core Version:    0.6.2
 */