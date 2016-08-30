package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerArray;

final class TypeAdapters$3 extends TypeAdapter<AtomicIntegerArray>
{
  public final AtomicIntegerArray read(JsonReader paramJsonReader)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    paramJsonReader.beginArray();
    while (paramJsonReader.hasNext())
      try
      {
        localArrayList.add(Integer.valueOf(paramJsonReader.nextInt()));
      }
      catch (NumberFormatException paramJsonReader)
      {
        throw new JsonSyntaxException(paramJsonReader);
      }
    paramJsonReader.endArray();
    int j = localArrayList.size();
    paramJsonReader = new AtomicIntegerArray(j);
    int i = 0;
    while (i < j)
    {
      paramJsonReader.set(i, ((Integer)localArrayList.get(i)).intValue());
      i += 1;
    }
    return paramJsonReader;
  }

  public final void write(JsonWriter paramJsonWriter, AtomicIntegerArray paramAtomicIntegerArray)
    throws IOException
  {
    paramJsonWriter.beginArray();
    int i = 0;
    int j = paramAtomicIntegerArray.length();
    while (i < j)
    {
      paramJsonWriter.value(paramAtomicIntegerArray.get(i));
      i += 1;
    }
    paramJsonWriter.endArray();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.3
 * JD-Core Version:    0.6.2
 */