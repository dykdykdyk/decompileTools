package com.google.android.gms.dynamic;

import java.lang.reflect.Field;

public final class k<T> extends i
{
  private final T a;

  private k(T paramT)
  {
    this.a = paramT;
  }

  public static <T> h a(T paramT)
  {
    return new k(paramT);
  }

  public static <T> T a(h paramh)
  {
    if ((paramh instanceof k))
      return ((k)paramh).a;
    paramh = paramh.asBinder();
    Object localObject = paramh.getClass().getDeclaredFields();
    if (localObject.length == 1)
    {
      localObject = localObject[0];
      if (!((Field)localObject).isAccessible())
      {
        ((Field)localObject).setAccessible(true);
        try
        {
          paramh = ((Field)localObject).get(paramh);
          return paramh;
        }
        catch (NullPointerException paramh)
        {
          throw new IllegalArgumentException("Binder object is null.", paramh);
        }
        catch (IllegalArgumentException paramh)
        {
          throw new IllegalArgumentException("remoteBinder is the wrong class.", paramh);
        }
        catch (IllegalAccessException paramh)
        {
          throw new IllegalArgumentException("Could not access the field in remoteBinder.", paramh);
        }
      }
      throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
    }
    throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.dynamic.k
 * JD-Core Version:    0.6.2
 */