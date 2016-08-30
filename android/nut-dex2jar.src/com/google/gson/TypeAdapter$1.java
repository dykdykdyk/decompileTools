package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

class TypeAdapter$1 extends TypeAdapter<T>
{
  TypeAdapter$1(TypeAdapter paramTypeAdapter)
  {
  }

  public T read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return this.this$0.read(paramJsonReader);
  }

  public void write(JsonWriter paramJsonWriter, T paramT)
    throws IOException
  {
    if (paramT == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    this.this$0.write(paramJsonWriter, paramT);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.TypeAdapter.1
 * JD-Core Version:    0.6.2
 */