package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

final class TypeAdapters$35
  implements TypeAdapterFactory
{
  TypeAdapters$35(Class paramClass, TypeAdapter paramTypeAdapter)
  {
  }

  public final <T2> TypeAdapter<T2> create(Gson paramGson, TypeToken<T2> paramTypeToken)
  {
    paramGson = paramTypeToken.getRawType();
    if (!this.val$clazz.isAssignableFrom(paramGson))
      return null;
    return new TypeAdapters.35.1(this, paramGson);
  }

  public final String toString()
  {
    return "Factory[typeHierarchy=" + this.val$clazz.getName() + ",adapter=" + this.val$typeAdapter + "]";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.35
 * JD-Core Version:    0.6.2
 */