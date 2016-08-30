package com.google.gson;

public enum LongSerializationPolicy
{
  DEFAULT, STRING;

  public abstract JsonElement serialize(Long paramLong);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.LongSerializationPolicy
 * JD-Core Version:    0.6.2
 */