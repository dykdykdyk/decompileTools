package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.f.r;
import android.view.LayoutInflater;
import android.view.View;
import java.io.PrintWriter;

public abstract class ab<E> extends z
{
  final Activity b;
  final Context c;
  final Handler d;
  final int e;
  final ad f = new ad();
  r<String, av> g;
  boolean h;
  ax i;
  boolean j;
  boolean k;

  private ab(Activity paramActivity, Context paramContext, Handler paramHandler)
  {
    this.b = paramActivity;
    this.c = paramContext;
    this.d = paramHandler;
    this.e = 0;
  }

  ab(v paramv)
  {
    this(paramv, paramv, paramv.a);
  }

  final ax a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.g == null)
      this.g = new r();
    ax localax = (ax)this.g.get(paramString);
    if (localax == null)
    {
      if (paramBoolean2)
      {
        localax = new ax(paramString, this, paramBoolean1);
        this.g.put(paramString, localax);
      }
      return localax;
    }
    localax.h = this;
    return localax;
  }

  public View a(int paramInt)
  {
    return null;
  }

  public void a(Fragment paramFragment, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    if (paramInt != -1)
      throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    this.c.startActivity(paramIntent);
  }

  public void a(Fragment paramFragment, String[] paramArrayOfString, int paramInt)
  {
  }

  public void a(String paramString, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
  }

  public boolean a()
  {
    return true;
  }

  public boolean a(String paramString)
  {
    return false;
  }

  final void b(String paramString)
  {
    if (this.g != null)
    {
      ax localax = (ax)this.g.get(paramString);
      if ((localax != null) && (!localax.f))
      {
        localax.g();
        this.g.remove(paramString);
      }
    }
  }

  public boolean b()
  {
    return true;
  }

  public LayoutInflater c()
  {
    return (LayoutInflater)this.c.getSystemService("layout_inflater");
  }

  public void d()
  {
  }

  public boolean e()
  {
    return true;
  }

  public int f()
  {
    return this.e;
  }

  public abstract E g();

  final r<String, av> h()
  {
    int n = 0;
    int i1;
    if (this.g != null)
    {
      int i2 = this.g.size();
      ax[] arrayOfax = new ax[i2];
      int m = i2 - 1;
      while (m >= 0)
      {
        arrayOfax[m] = ((ax)this.g.c(m));
        m -= 1;
      }
      m = 0;
      i1 = m;
      if (n < i2)
      {
        ax localax = arrayOfax[n];
        if (localax.f)
          m = 1;
        while (true)
        {
          n += 1;
          break;
          localax.g();
          this.g.remove(localax.d);
        }
      }
    }
    else
    {
      i1 = 0;
    }
    if (i1 != 0)
      return this.g;
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ab
 * JD-Core Version:    0.6.2
 */