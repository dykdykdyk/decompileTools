package com.google.gson.internal.bind;

import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

final class TypeAdapters$23 extends TypeAdapter<URI>
{
  public final URI read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
      paramJsonReader.nextNull();
    while (true)
    {
      return null;
      try
      {
        paramJsonReader = paramJsonReader.nextString();
        if (!"null".equals(paramJsonReader))
        {
          paramJsonReader = new URI(paramJsonReader);
          return paramJsonReader;
        }
      }
      catch (URISyntaxException paramJsonReader)
      {
      }
    }
    throw new JsonIOException(paramJsonReader);
  }

  public final void write(JsonWriter paramJsonWriter, URI paramURI)
    throws IOException
  {
    if (paramURI == null);
    for (paramURI = null; ; paramURI = paramURI.toASCIIString())
    {
      paramJsonWriter.value(paramURI);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.23
 * JD-Core Version:    0.6.2
 */