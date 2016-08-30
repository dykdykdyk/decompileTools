package com.baidu.android.pushservice.a.a;

import android.graphics.Bitmap;
import java.util.HashMap;
import java.util.Map;

class f
  implements c
{
  private int a;
  private f.b b;
  private Map<String, f.a> c = new HashMap();

  public f(int paramInt)
  {
    this(paramInt, null);
  }

  public f(int paramInt, f.b paramb)
  {
    this.a = paramInt;
    this.b = paramb;
    if (this.b == null)
      this.b = new f.c();
  }

  public Bitmap a(String paramString)
  {
    try
    {
      paramString = (f.a)this.c.get(paramString);
      if (paramString != null)
        this.b.a(paramString);
      for (paramString = paramString.a; ; paramString = null)
        return paramString;
    }
    finally
    {
    }
    throw paramString;
  }

  public void a(String paramString, Bitmap paramBitmap)
  {
    try
    {
      boolean bool = c(paramString);
      if (bool);
      while (true)
      {
        return;
        if (this.c.size() >= this.a)
          b(this.b.a(this.c));
        f.a locala = new f.a();
        locala.b = 1;
        locala.c = System.currentTimeMillis();
        locala.a = paramBitmap;
        this.c.put(paramString, locala);
      }
    }
    finally
    {
    }
    throw paramString;
  }

  public void b(String paramString)
  {
    try
    {
      paramString = (f.a)this.c.remove(paramString);
      if ((paramString != null) && (paramString.a != null) && (!paramString.a.isRecycled()))
        paramString.a.recycle();
      return;
    }
    finally
    {
    }
    throw paramString;
  }

  public boolean c(String paramString)
  {
    try
    {
      paramString = this.c.get(paramString);
      if (paramString != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.a.f
 * JD-Core Version:    0.6.2
 */