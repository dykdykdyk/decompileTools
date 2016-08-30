package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.BitSet;

final class TypeAdapters$6 extends TypeAdapter<BitSet>
{
  public final BitSet read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    BitSet localBitSet = new BitSet();
    paramJsonReader.beginArray();
    Object localObject = paramJsonReader.peek();
    int i = 0;
    if (localObject != JsonToken.END_ARRAY)
    {
      boolean bool;
      switch (TypeAdapters.36.$SwitchMap$com$google$gson$stream$JsonToken[localObject.ordinal()])
      {
      default:
        throw new JsonSyntaxException("Invalid bitset value type: " + localObject);
      case 1:
        if (paramJsonReader.nextInt() != 0)
          bool = true;
        break;
      case 2:
      case 3:
      }
      while (true)
      {
        if (bool)
          localBitSet.set(i);
        i += 1;
        localObject = paramJsonReader.peek();
        break;
        bool = false;
        continue;
        bool = paramJsonReader.nextBoolean();
        continue;
        localObject = paramJsonReader.nextString();
        try
        {
          int j = Integer.parseInt((String)localObject);
          if (j != 0)
            bool = true;
          else
            bool = false;
        }
        catch (NumberFormatException paramJsonReader)
        {
          throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + (String)localObject);
        }
      }
    }
    paramJsonReader.endArray();
    return localBitSet;
  }

  public final void write(JsonWriter paramJsonWriter, BitSet paramBitSet)
    throws IOException
  {
    if (paramBitSet == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginArray();
    int i = 0;
    if (i < paramBitSet.length())
    {
      if (paramBitSet.get(i));
      for (int j = 1; ; j = 0)
      {
        paramJsonWriter.value(j);
        i += 1;
        break;
      }
    }
    paramJsonWriter.endArray();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.6
 * JD-Core Version:    0.6.2
 */