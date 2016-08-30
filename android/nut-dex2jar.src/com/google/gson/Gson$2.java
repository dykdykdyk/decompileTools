package com.google.gson;

import java.lang.reflect.Type;

class Gson$2
  implements JsonSerializationContext
{
  Gson$2(Gson paramGson)
  {
  }

  public JsonElement serialize(Object paramObject)
  {
    return this.this$0.toJsonTree(paramObject);
  }

  public JsonElement serialize(Object paramObject, Type paramType)
  {
    return this.this$0.toJsonTree(paramObject, paramType);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.Gson.2
 * JD-Core Version:    0.6.2
 */