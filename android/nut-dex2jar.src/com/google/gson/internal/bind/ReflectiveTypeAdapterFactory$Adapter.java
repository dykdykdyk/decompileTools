package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory$Adapter<T> extends TypeAdapter<T>
{
  private final Map<String, ReflectiveTypeAdapterFactory.BoundField> boundFields;
  private final ObjectConstructor<T> constructor;

  ReflectiveTypeAdapterFactory$Adapter(ObjectConstructor<T> paramObjectConstructor, Map<String, ReflectiveTypeAdapterFactory.BoundField> paramMap)
  {
    this.constructor = paramObjectConstructor;
    this.boundFields = paramMap;
  }

  public final T read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    Object localObject1 = this.constructor.construct();
    try
    {
      paramJsonReader.beginObject();
      while (true)
      {
        if (!paramJsonReader.hasNext())
          break label103;
        localObject2 = paramJsonReader.nextName();
        localObject2 = (ReflectiveTypeAdapterFactory.BoundField)this.boundFields.get(localObject2);
        if ((localObject2 != null) && (((ReflectiveTypeAdapterFactory.BoundField)localObject2).deserialized))
          break;
        paramJsonReader.skipValue();
      }
    }
    catch (IllegalStateException paramJsonReader)
    {
      while (true)
      {
        Object localObject2;
        throw new JsonSyntaxException(paramJsonReader);
        ((ReflectiveTypeAdapterFactory.BoundField)localObject2).read(paramJsonReader, localObject1);
      }
    }
    catch (IllegalAccessException paramJsonReader)
    {
      throw new AssertionError(paramJsonReader);
    }
    label103: paramJsonReader.endObject();
    return localObject1;
  }

  public final void write(JsonWriter paramJsonWriter, T paramT)
    throws IOException
  {
    if (paramT == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginObject();
    try
    {
      Iterator localIterator = this.boundFields.values().iterator();
      while (localIterator.hasNext())
      {
        ReflectiveTypeAdapterFactory.BoundField localBoundField = (ReflectiveTypeAdapterFactory.BoundField)localIterator.next();
        if (localBoundField.writeField(paramT))
        {
          paramJsonWriter.name(localBoundField.name);
          localBoundField.write(paramJsonWriter, paramT);
        }
      }
    }
    catch (IllegalAccessException paramJsonWriter)
    {
      throw new AssertionError(paramJsonWriter);
    }
    paramJsonWriter.endObject();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
 * JD-Core Version:    0.6.2
 */