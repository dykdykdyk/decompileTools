package com.google.gson.internal.bind;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

abstract class ReflectiveTypeAdapterFactory$BoundField
{
  final boolean deserialized;
  final String name;
  final boolean serialized;

  protected ReflectiveTypeAdapterFactory$BoundField(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.name = paramString;
    this.serialized = paramBoolean1;
    this.deserialized = paramBoolean2;
  }

  abstract void read(JsonReader paramJsonReader, Object paramObject)
    throws IOException, IllegalAccessException;

  abstract void write(JsonWriter paramJsonWriter, Object paramObject)
    throws IOException, IllegalAccessException;

  abstract boolean writeField(Object paramObject)
    throws IOException, IllegalAccessException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
 * JD-Core Version:    0.6.2
 */