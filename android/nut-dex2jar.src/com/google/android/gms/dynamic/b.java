package com.google.android.gms.dynamic;

import android.os.Bundle;
import java.util.LinkedList;

public abstract class b<T extends a>
{
  public T a;
  public Bundle b;
  LinkedList<g> c;
  private final l<T> d = new c(this);

  public final void a(int paramInt)
  {
    while ((!this.c.isEmpty()) && (((g)this.c.getLast()).a() >= paramInt))
      this.c.removeLast();
  }

  public final void a(Bundle paramBundle, g paramg)
  {
    if (this.a != null)
    {
      paramg.b();
      return;
    }
    if (this.c == null)
      this.c = new LinkedList();
    this.c.add(paramg);
    if (paramBundle != null)
    {
      if (this.b != null)
        break label72;
      this.b = ((Bundle)paramBundle.clone());
    }
    while (true)
    {
      a(this.d);
      return;
      label72: this.b.putAll(paramBundle);
    }
  }

  public abstract void a(l<T> paraml);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.dynamic.b
 * JD-Core Version:    0.6.2
 */