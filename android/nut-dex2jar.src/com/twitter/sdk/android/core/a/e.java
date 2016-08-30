package com.twitter.sdk.android.core.a;

import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

final class e extends TypeAdapter<T>
{
  e(d paramd, TypeAdapter paramTypeAdapter, TypeToken paramTypeToken)
  {
  }

  public final T read(JsonReader paramJsonReader)
    throws IOException
  {
    Object localObject = this.a.read(paramJsonReader);
    paramJsonReader = localObject;
    if (Map.class.isAssignableFrom(this.b.getRawType()))
    {
      if (localObject == null)
        paramJsonReader = Collections.EMPTY_MAP;
    }
    else
      return paramJsonReader;
    return Collections.unmodifiableMap((Map)localObject);
  }

  public final void write(JsonWriter paramJsonWriter, T paramT)
    throws IOException
  {
    this.a.write(paramJsonWriter, paramT);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.a.e
 * JD-Core Version:    0.6.2
 */