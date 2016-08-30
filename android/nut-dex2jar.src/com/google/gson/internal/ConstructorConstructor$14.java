package com.google.gson.internal;

import java.lang.reflect.Type;

class ConstructorConstructor$14
  implements ObjectConstructor<T>
{
  private final UnsafeAllocator unsafeAllocator = UnsafeAllocator.create();

  ConstructorConstructor$14(ConstructorConstructor paramConstructorConstructor, Class paramClass, Type paramType)
  {
  }

  public T construct()
  {
    try
    {
      Object localObject = this.unsafeAllocator.newInstance(this.val$rawType);
      return localObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Unable to invoke no-args constructor for " + this.val$type + ". Register an InstanceCreator with Gson for this type may fix this problem.", localException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.ConstructorConstructor.14
 * JD-Core Version:    0.6.2
 */