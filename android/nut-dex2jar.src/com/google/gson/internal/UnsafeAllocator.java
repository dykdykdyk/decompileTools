package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class UnsafeAllocator
{
  public static UnsafeAllocator create()
  {
    try
    {
      Object localObject1 = Class.forName("sun.misc.Unsafe");
      Object localObject4 = ((Class)localObject1).getDeclaredField("theUnsafe");
      ((Field)localObject4).setAccessible(true);
      localObject4 = ((Field)localObject4).get(null);
      localObject1 = new UnsafeAllocator.1(((Class)localObject1).getMethod("allocateInstance", new Class[] { Class.class }), localObject4);
      return localObject1;
    }
    catch (Exception localException1)
    {
      try
      {
        Object localObject2 = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", new Class[] { Class.class });
        ((Method)localObject2).setAccessible(true);
        int i = ((Integer)((Method)localObject2).invoke(null, new Object[] { Object.class })).intValue();
        localObject2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", new Class[] { Class.class, Integer.TYPE });
        ((Method)localObject2).setAccessible(true);
        localObject2 = new UnsafeAllocator.2((Method)localObject2, i);
        return localObject2;
      }
      catch (Exception localException2)
      {
        try
        {
          Object localObject3 = ObjectInputStream.class.getDeclaredMethod("newInstance", new Class[] { Class.class, Class.class });
          ((Method)localObject3).setAccessible(true);
          localObject3 = new UnsafeAllocator.3((Method)localObject3);
          return localObject3;
        }
        catch (Exception localException3)
        {
        }
      }
    }
    return new UnsafeAllocator.4();
  }

  public abstract <T> T newInstance(Class<T> paramClass)
    throws Exception;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.UnsafeAllocator
 * JD-Core Version:    0.6.2
 */