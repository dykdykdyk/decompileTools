package com.google.gson;

 enum LongSerializationPolicy$2
{
  LongSerializationPolicy$2()
  {
    super(str, i, null);
  }

  public final JsonElement serialize(Long paramLong)
  {
    return new JsonPrimitive(String.valueOf(paramLong));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.LongSerializationPolicy.2
 * JD-Core Version:    0.6.2
 */