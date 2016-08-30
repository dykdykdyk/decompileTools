package android.support.v7.a;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.view.i;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.Window;
import android.view.Window.Callback;

abstract class v extends u
{
  final Context b;
  final Window c;
  final Window.Callback d;
  final Window.Callback e;
  final t f;
  a g;
  MenuInflater h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  CharSequence n;
  boolean o;

  v(Context paramContext, Window paramWindow, t paramt)
  {
    this.b = paramContext;
    this.c = paramWindow;
    this.f = paramt;
    this.d = this.c.getCallback();
    if ((this.d instanceof w))
      throw new IllegalStateException("AppCompat has already installed itself into the Window");
    this.e = a(this.d);
    this.c.setCallback(this.e);
  }

  public final a a()
  {
    k();
    return this.g;
  }

  Window.Callback a(Window.Callback paramCallback)
  {
    return new w(this, paramCallback);
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.n = paramCharSequence;
    b(paramCharSequence);
  }

  abstract boolean a(int paramInt, KeyEvent paramKeyEvent);

  abstract boolean a(KeyEvent paramKeyEvent);

  public final MenuInflater b()
  {
    if (this.h == null)
    {
      k();
      if (this.g == null)
        break label43;
    }
    label43: for (Context localContext = this.g.f(); ; localContext = this.b)
    {
      this.h = new i(localContext);
      return this.h;
    }
  }

  public void b(Bundle paramBundle)
  {
  }

  abstract void b(CharSequence paramCharSequence);

  abstract void d(int paramInt);

  abstract boolean e(int paramInt);

  public void g()
  {
    this.o = true;
  }

  public boolean i()
  {
    return false;
  }

  abstract void k();

  final Context l()
  {
    Context localContext = null;
    Object localObject = a();
    if (localObject != null)
      localContext = ((a)localObject).f();
    localObject = localContext;
    if (localContext == null)
      localObject = this.b;
    return localObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.v
 * JD-Core Version:    0.6.2
 */