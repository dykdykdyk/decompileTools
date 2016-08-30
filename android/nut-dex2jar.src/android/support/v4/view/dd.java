package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import java.lang.ref.WeakReference;

public final class dd
{
  public static final dm b = new de();
  public WeakReference<View> a;
  private Runnable c = null;
  private Runnable d = null;
  private int e = -1;

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      b = new dl();
      return;
    }
    if (i >= 19)
    {
      b = new dk();
      return;
    }
    if (i >= 18)
    {
      b = new di();
      return;
    }
    if (i >= 16)
    {
      b = new dj();
      return;
    }
    if (i >= 14)
    {
      b = new dg();
      return;
    }
  }

  dd(View paramView)
  {
    this.a = new WeakReference(paramView);
  }

  public final dd a(float paramFloat)
  {
    View localView = (View)this.a.get();
    if (localView != null)
      b.a(this, localView, paramFloat);
    return this;
  }

  public final dd a(long paramLong)
  {
    View localView = (View)this.a.get();
    if (localView != null)
      b.a(localView, paramLong);
    return this;
  }

  public final dd a(dt paramdt)
  {
    View localView = (View)this.a.get();
    if (localView != null)
      b.a(this, localView, paramdt);
    return this;
  }

  public final dd a(dv paramdv)
  {
    View localView = (View)this.a.get();
    if (localView != null)
      b.a(localView, paramdv);
    return this;
  }

  public final void a()
  {
    View localView = (View)this.a.get();
    if (localView != null)
      b.a(this, localView);
  }

  public final dd b(float paramFloat)
  {
    View localView = (View)this.a.get();
    if (localView != null)
      b.b(this, localView, paramFloat);
    return this;
  }

  public final void b()
  {
    View localView = (View)this.a.get();
    if (localView != null)
      b.b(this, localView);
  }

  public final dd c(float paramFloat)
  {
    View localView = (View)this.a.get();
    if (localView != null)
      b.c(this, localView, paramFloat);
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.dd
 * JD-Core Version:    0.6.2
 */