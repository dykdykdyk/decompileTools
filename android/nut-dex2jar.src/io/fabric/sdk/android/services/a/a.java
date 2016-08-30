package io.fabric.sdk.android.services.a;

import android.content.Context;

public abstract class a<T>
  implements c<T>
{
  private final c<T> a = null;

  protected abstract T a();

  public final T a(Context paramContext, d<T> paramd)
    throws Exception
  {
    while (true)
    {
      try
      {
        Object localObject2 = a();
        localObject1 = localObject2;
        if (localObject2 != null)
          break label70;
        if (this.a != null)
        {
          paramContext = this.a.a(paramContext, paramd);
          if (paramContext != null)
            break;
          throw new NullPointerException();
        }
      }
      finally
      {
      }
      paramContext = paramd.a(paramContext);
    }
    a(paramContext);
    Object localObject1 = paramContext;
    label70: return localObject1;
  }

  protected abstract void a(T paramT);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.a.a
 * JD-Core Version:    0.6.2
 */