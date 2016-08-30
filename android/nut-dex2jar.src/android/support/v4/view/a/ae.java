package android.support.v4.view.a;

import android.os.Build.VERSION;

public final class ae
{
  public static final ah a = new aj();
  public final Object b;

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new ai();
      return;
    }
    if (Build.VERSION.SDK_INT >= 15)
    {
      a = new ag();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new af();
      return;
    }
  }

  public ae(Object paramObject)
  {
    this.b = paramObject;
  }

  public final void a(int paramInt)
  {
    a.b(this.b, paramInt);
  }

  public final void a(boolean paramBoolean)
  {
    a.a(this.b, paramBoolean);
  }

  public final void b(int paramInt)
  {
    a.a(this.b, paramInt);
  }

  public final void c(int paramInt)
  {
    a.e(this.b, paramInt);
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        paramObject = (ae)paramObject;
        if (this.b != null)
          break;
      }
      while (paramObject.b == null);
      return false;
    }
    while (this.b.equals(paramObject.b));
    return false;
  }

  public final int hashCode()
  {
    if (this.b == null)
      return 0;
    return this.b.hashCode();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.ae
 * JD-Core Version:    0.6.2
 */