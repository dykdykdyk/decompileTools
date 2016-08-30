package com.google.gson.internal;

import java.lang.reflect.Method;

final class UnsafeAllocator$1 extends UnsafeAllocator
{
  UnsafeAllocator$1(Method paramMethod, Object paramObject)
  {
  }

  public final <T> T newInstance(Class<T> paramClass)
    throws Exception
  {
    return this.val$allocateInstance.invoke(this.val$unsafe, new Object[] { paramClass });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.UnsafeAllocator.1
 * JD-Core Version:    0.6.2
 */