package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Locale;
import java.util.StringTokenizer;

final class TypeAdapters$28 extends TypeAdapter<Locale>
{
  public final Locale read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    Object localObject = new StringTokenizer(paramJsonReader.nextString(), "_");
    if (((StringTokenizer)localObject).hasMoreElements());
    for (paramJsonReader = ((StringTokenizer)localObject).nextToken(); ; paramJsonReader = null)
    {
      if (((StringTokenizer)localObject).hasMoreElements());
      for (String str = ((StringTokenizer)localObject).nextToken(); ; str = null)
      {
        if (((StringTokenizer)localObject).hasMoreElements());
        for (localObject = ((StringTokenizer)localObject).nextToken(); ; localObject = null)
        {
          if ((str == null) && (localObject == null))
            return new Locale(paramJsonReader);
          if (localObject == null)
            return new Locale(paramJsonReader, str);
          return new Locale(paramJsonReader, str, (String)localObject);
        }
      }
    }
  }

  public final void write(JsonWriter paramJsonWriter, Locale paramLocale)
    throws IOException
  {
    if (paramLocale == null);
    for (paramLocale = null; ; paramLocale = paramLocale.toString())
    {
      paramJsonWriter.value(paramLocale);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.28
 * JD-Core Version:    0.6.2
 */