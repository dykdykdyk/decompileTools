package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URL;

final class TypeAdapters$22 extends TypeAdapter<URL>
{
  public final URL read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
      paramJsonReader.nextNull();
    do
    {
      return null;
      paramJsonReader = paramJsonReader.nextString();
    }
    while ("null".equals(paramJsonReader));
    return new URL(paramJsonReader);
  }

  public final void write(JsonWriter paramJsonWriter, URL paramURL)
    throws IOException
  {
    if (paramURL == null);
    for (paramURL = null; ; paramURL = paramURL.toExternalForm())
    {
      paramJsonWriter.value(paramURL);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.22
 * JD-Core Version:    0.6.2
 */