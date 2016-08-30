package com.google.gson.internal;

import java.lang.reflect.Method;

final class UnsafeAllocator$3 extends UnsafeAllocator
{
  UnsafeAllocator$3(Method paramMethod)
  {
  }

  public final <T> T newInstance(Class<T> paramClass)
    throws Exception
  {
    return this.val$newInstance.invoke(null, new Object[] { paramClass, Object.class });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.UnsafeAllocator.3
 * JD-Core Version:    0.6.2
 */