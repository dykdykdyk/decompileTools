package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;

class cl
  implements ar
{
  private ad a;
  private boolean b = true;
  private boolean c = false;
  private boolean d = true;
  private boolean e = true;
  private boolean f = true;
  private boolean g = false;
  private int h = 0;
  private int i = 0;
  private final Handler j = new cm(this);

  cl(ad paramad)
  {
    this.a = paramad;
  }

  public void a(int paramInt)
    throws RemoteException
  {
    this.h = paramInt;
    this.a.b(paramInt);
  }

  public void a(boolean paramBoolean)
    throws RemoteException
  {
    this.g = paramBoolean;
    this.j.obtainMessage(1).sendToTarget();
  }

  public boolean a()
    throws RemoteException
  {
    return this.g;
  }

  public void b(int paramInt)
    throws RemoteException
  {
    this.i = paramInt;
    this.a.c(paramInt);
  }

  public void b(boolean paramBoolean)
    throws RemoteException
  {
    this.e = paramBoolean;
    this.j.obtainMessage(0).sendToTarget();
  }

  public boolean b()
    throws RemoteException
  {
    return this.e;
  }

  public void c(boolean paramBoolean)
    throws RemoteException
  {
    this.f = paramBoolean;
    this.j.obtainMessage(2).sendToTarget();
  }

  public boolean c()
    throws RemoteException
  {
    return this.f;
  }

  public void d(boolean paramBoolean)
    throws RemoteException
  {
    this.c = paramBoolean;
    this.j.obtainMessage(3).sendToTarget();
  }

  public boolean d()
    throws RemoteException
  {
    return this.c;
  }

  public void e(boolean paramBoolean)
    throws RemoteException
  {
    this.b = paramBoolean;
  }

  public boolean e()
    throws RemoteException
  {
    return this.b;
  }

  public void f(boolean paramBoolean)
    throws RemoteException
  {
    this.d = paramBoolean;
  }

  public boolean f()
    throws RemoteException
  {
    return this.d;
  }

  public int g()
    throws RemoteException
  {
    return this.h;
  }

  public void g(boolean paramBoolean)
    throws RemoteException
  {
    f(paramBoolean);
    e(paramBoolean);
  }

  public int h()
    throws RemoteException
  {
    return this.i;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cl
 * JD-Core Version:    0.6.2
 */