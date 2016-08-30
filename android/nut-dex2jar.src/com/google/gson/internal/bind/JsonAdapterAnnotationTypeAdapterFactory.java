package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;

public final class JsonAdapterAnnotationTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor constructorConstructor;

  public JsonAdapterAnnotationTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor)
  {
    this.constructorConstructor = paramConstructorConstructor;
  }

  static TypeAdapter<?> getTypeAdapter(ConstructorConstructor paramConstructorConstructor, Gson paramGson, TypeToken<?> paramTypeToken, JsonAdapter paramJsonAdapter)
  {
    paramJsonAdapter = paramJsonAdapter.value();
    if (TypeAdapter.class.isAssignableFrom(paramJsonAdapter));
    for (paramConstructorConstructor = (TypeAdapter)paramConstructorConstructor.get(TypeToken.get(paramJsonAdapter)).construct(); ; paramConstructorConstructor = ((TypeAdapterFactory)paramConstructorConstructor.get(TypeToken.get(paramJsonAdapter)).construct()).create(paramGson, paramTypeToken))
    {
      return paramConstructorConstructor.nullSafe();
      if (!TypeAdapterFactory.class.isAssignableFrom(paramJsonAdapter))
        break;
    }
    throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
  }

  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    JsonAdapter localJsonAdapter = (JsonAdapter)paramTypeToken.getRawType().getAnnotation(JsonAdapter.class);
    if (localJsonAdapter == null)
      return null;
    return getTypeAdapter(this.constructorConstructor, paramGson, paramTypeToken, localJsonAdapter);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory
 * JD-Core Version:    0.6.2
 */