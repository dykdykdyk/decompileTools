package com.baidu.android.pushservice.message;

import android.content.Context;
import java.io.IOException;
import java.util.LinkedList;

public abstract class d
{
  protected Context a;
  private LinkedList<e> b = new LinkedList();

  public d(Context paramContext)
  {
    this.a = paramContext;
  }

  public abstract e a(byte[] paramArrayOfByte, int paramInt)
    throws IOException;

  public LinkedList<e> a()
  {
    return this.b;
  }

  public abstract void a(int paramInt);

  public void a(e parame)
  {
    synchronized (this.b)
    {
      this.b.add(parame);
      this.b.notify();
      return;
    }
  }

  public abstract void b();

  public abstract void b(e parame)
    throws Exception;

  public abstract void c();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.d
 * JD-Core Version:    0.6.2
 */