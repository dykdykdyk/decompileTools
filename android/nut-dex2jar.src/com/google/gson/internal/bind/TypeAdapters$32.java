package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

final class TypeAdapters$32
  implements TypeAdapterFactory
{
  TypeAdapters$32(Class paramClass, TypeAdapter paramTypeAdapter)
  {
  }

  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    if (paramTypeToken.getRawType() == this.val$type)
      return this.val$typeAdapter;
    return null;
  }

  public final String toString()
  {
    return "Factory[type=" + this.val$type.getName() + ",adapter=" + this.val$typeAdapter + "]";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.32
 * JD-Core Version:    0.6.2
 */