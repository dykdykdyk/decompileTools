package com.google.gson.internal;

import java.lang.reflect.Method;

final class UnsafeAllocator$2 extends UnsafeAllocator
{
  UnsafeAllocator$2(Method paramMethod, int paramInt)
  {
  }

  public final <T> T newInstance(Class<T> paramClass)
    throws Exception
  {
    return this.val$newInstance.invoke(null, new Object[] { paramClass, Integer.valueOf(this.val$constructorId) });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.UnsafeAllocator.2
 * JD-Core Version:    0.6.2
 */