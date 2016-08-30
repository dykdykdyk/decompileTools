package com.baidu.android.pushservice.g;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

public class c
{
  protected String a = "";
  protected String b = "";
  protected String c = "";
  protected byte[] d;
  protected String e = "";
  protected String f = "";
  protected String g = "";
  protected String h = "";
  protected String i = "";
  protected String j = "";
  protected boolean k = true;

  public c(String paramString1, String paramString2)
  {
    this.b = paramString1;
    this.a = paramString2;
  }

  public Bitmap a()
  {
    Bitmap localBitmap = null;
    if (this.d != null)
      localBitmap = BitmapFactory.decodeByteArray(this.d, 0, this.d.length, null);
    return localBitmap;
  }

  public void a(String paramString)
  {
    this.c = paramString;
  }

  public void a(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }

  public void a(byte[] paramArrayOfByte)
  {
    this.d = paramArrayOfByte;
  }

  public String b()
  {
    return this.a;
  }

  public void b(String paramString)
  {
    this.a = paramString;
  }

  public String c()
  {
    return this.b;
  }

  public void c(String paramString)
  {
    this.b = paramString;
  }

  public String d()
  {
    return this.c;
  }

  public void d(String paramString)
  {
    this.e = paramString;
  }

  public String e()
  {
    return this.e;
  }

  public void e(String paramString)
  {
    this.f = paramString;
  }

  public String f()
  {
    return this.f;
  }

  public void f(String paramString)
  {
    this.g = paramString;
  }

  public void g(String paramString)
  {
    this.h = paramString;
  }

  public boolean g()
  {
    return this.k;
  }

  public void h(String paramString)
  {
    this.i = paramString;
  }

  public void i(String paramString)
  {
    this.j = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g.c
 * JD-Core Version:    0.6.2
 */