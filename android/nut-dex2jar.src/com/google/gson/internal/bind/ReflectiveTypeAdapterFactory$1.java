package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;

class ReflectiveTypeAdapterFactory$1 extends ReflectiveTypeAdapterFactory.BoundField
{
  final TypeAdapter<?> typeAdapter = this.this$0.getFieldAdapter(this.val$context, this.val$field, this.val$fieldType);

  ReflectiveTypeAdapterFactory$1(ReflectiveTypeAdapterFactory paramReflectiveTypeAdapterFactory, String paramString, boolean paramBoolean1, boolean paramBoolean2, Gson paramGson, Field paramField, TypeToken paramTypeToken, boolean paramBoolean3)
  {
    super(paramString, paramBoolean1, paramBoolean2);
  }

  void read(JsonReader paramJsonReader, Object paramObject)
    throws IOException, IllegalAccessException
  {
    paramJsonReader = this.typeAdapter.read(paramJsonReader);
    if ((paramJsonReader != null) || (!this.val$isPrimitive))
      this.val$field.set(paramObject, paramJsonReader);
  }

  void write(JsonWriter paramJsonWriter, Object paramObject)
    throws IOException, IllegalAccessException
  {
    paramObject = this.val$field.get(paramObject);
    new TypeAdapterRuntimeTypeWrapper(this.val$context, this.typeAdapter, this.val$fieldType.getType()).write(paramJsonWriter, paramObject);
  }

  public boolean writeField(Object paramObject)
    throws IOException, IllegalAccessException
  {
    if (!this.serialized);
    while (this.val$field.get(paramObject) == paramObject)
      return false;
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
 * JD-Core Version:    0.6.2
 */