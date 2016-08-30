package com.google.gson;

import com.google.gson.internal..Gson.Preconditions;
import com.google.gson.reflect.TypeToken;

class TreeTypeAdapter$SingleTypeFactory
  implements TypeAdapterFactory
{
  private final JsonDeserializer<?> deserializer;
  private final TypeToken<?> exactType;
  private final Class<?> hierarchyType;
  private final boolean matchRawType;
  private final JsonSerializer<?> serializer;

  TreeTypeAdapter$SingleTypeFactory(Object paramObject, TypeToken<?> paramTypeToken, boolean paramBoolean, Class<?> paramClass)
  {
    JsonSerializer localJsonSerializer;
    if ((paramObject instanceof JsonSerializer))
    {
      localJsonSerializer = (JsonSerializer)paramObject;
      this.serializer = localJsonSerializer;
      if (!(paramObject instanceof JsonDeserializer))
        break label85;
      paramObject = (JsonDeserializer)paramObject;
      label35: this.deserializer = paramObject;
      if ((this.serializer == null) && (this.deserializer == null))
        break label90;
    }
    label85: label90: for (boolean bool = true; ; bool = false)
    {
      .Gson.Preconditions.checkArgument(bool);
      this.exactType = paramTypeToken;
      this.matchRawType = paramBoolean;
      this.hierarchyType = paramClass;
      return;
      localJsonSerializer = null;
      break;
      paramObject = null;
      break label35;
    }
  }

  public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    boolean bool;
    if (this.exactType != null)
      if ((this.exactType.equals(paramTypeToken)) || ((this.matchRawType) && (this.exactType.getType() == paramTypeToken.getRawType())))
        bool = true;
    while (bool)
    {
      return new TreeTypeAdapter(this.serializer, this.deserializer, paramGson, paramTypeToken, this);
      bool = false;
      continue;
      bool = this.hierarchyType.isAssignableFrom(paramTypeToken.getRawType());
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.TreeTypeAdapter.SingleTypeFactory
 * JD-Core Version:    0.6.2
 */