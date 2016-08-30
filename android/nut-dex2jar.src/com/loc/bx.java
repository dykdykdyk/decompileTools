package com.loc;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class bx
{
  public static Object a(Object paramObject, String paramString, Object[] paramArrayOfObject)
    throws Exception
  {
    Class localClass = paramObject.getClass();
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    int i = 0;
    int j = paramArrayOfObject.length;
    while (i < j)
    {
      arrayOfClass[i] = paramArrayOfObject[i].getClass();
      if (arrayOfClass[i] == Integer.class)
        arrayOfClass[i] = Integer.TYPE;
      i += 1;
    }
    paramString = localClass.getDeclaredMethod(paramString, arrayOfClass);
    if (!paramString.isAccessible())
      paramString.setAccessible(true);
    return paramString.invoke(paramObject, paramArrayOfObject);
  }

  public static Object a(String paramString1, String paramString2)
    throws Exception
  {
    paramString1 = Class.forName(paramString1);
    paramString2 = paramString1.getField(paramString2);
    paramString2.setAccessible(true);
    return paramString2.get(paramString1);
  }

  public static Object a(String paramString1, String paramString2, Object[] paramArrayOfObject, Class<?>[] paramArrayOfClass)
    throws Exception
  {
    paramString1 = Class.forName(paramString1).getDeclaredMethod(paramString2, paramArrayOfClass);
    if (!paramString1.isAccessible())
      paramString1.setAccessible(true);
    return paramString1.invoke(null, paramArrayOfObject);
  }

  public static int b(Object paramObject, String paramString, Object[] paramArrayOfObject)
    throws Exception
  {
    paramString = paramObject.getClass().getDeclaredMethod(paramString, new Class[0]);
    if (!paramString.isAccessible())
      paramString.setAccessible(true);
    return ((Integer)paramString.invoke(paramObject, paramArrayOfObject)).intValue();
  }

  public static int b(String paramString1, String paramString2)
    throws Exception
  {
    return ((Integer)a(paramString1, paramString2)).intValue();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bx
 * JD-Core Version:    0.6.2
 */