package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

final class TreeTypeAdapter<T> extends TypeAdapter<T>
{
  private TypeAdapter<T> delegate;
  private final JsonDeserializer<T> deserializer;
  private final Gson gson;
  private final JsonSerializer<T> serializer;
  private final TypeAdapterFactory skipPast;
  private final TypeToken<T> typeToken;

  TreeTypeAdapter(JsonSerializer<T> paramJsonSerializer, JsonDeserializer<T> paramJsonDeserializer, Gson paramGson, TypeToken<T> paramTypeToken, TypeAdapterFactory paramTypeAdapterFactory)
  {
    this.serializer = paramJsonSerializer;
    this.deserializer = paramJsonDeserializer;
    this.gson = paramGson;
    this.typeToken = paramTypeToken;
    this.skipPast = paramTypeAdapterFactory;
  }

  private TypeAdapter<T> delegate()
  {
    TypeAdapter localTypeAdapter = this.delegate;
    if (localTypeAdapter != null)
      return localTypeAdapter;
    localTypeAdapter = this.gson.getDelegateAdapter(this.skipPast, this.typeToken);
    this.delegate = localTypeAdapter;
    return localTypeAdapter;
  }

  public static TypeAdapterFactory newFactory(TypeToken<?> paramTypeToken, Object paramObject)
  {
    return new TreeTypeAdapter.SingleTypeFactory(paramObject, paramTypeToken, false, null);
  }

  public static TypeAdapterFactory newFactoryWithMatchRawType(TypeToken<?> paramTypeToken, Object paramObject)
  {
    if (paramTypeToken.getType() == paramTypeToken.getRawType());
    for (boolean bool = true; ; bool = false)
      return new TreeTypeAdapter.SingleTypeFactory(paramObject, paramTypeToken, bool, null);
  }

  public static TypeAdapterFactory newTypeHierarchyFactory(Class<?> paramClass, Object paramObject)
  {
    return new TreeTypeAdapter.SingleTypeFactory(paramObject, null, false, paramClass);
  }

  public final T read(JsonReader paramJsonReader)
    throws IOException
  {
    if (this.deserializer == null)
      return delegate().read(paramJsonReader);
    paramJsonReader = Streams.parse(paramJsonReader);
    if (paramJsonReader.isJsonNull())
      return null;
    return this.deserializer.deserialize(paramJsonReader, this.typeToken.getType(), this.gson.deserializationContext);
  }

  public final void write(JsonWriter paramJsonWriter, T paramT)
    throws IOException
  {
    if (this.serializer == null)
    {
      delegate().write(paramJsonWriter, paramT);
      return;
    }
    if (paramT == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    Streams.write(this.serializer.serialize(paramT, this.typeToken.getType(), this.gson.serializationContext), paramJsonWriter);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.TreeTypeAdapter
 * JD-Core Version:    0.6.2
 */