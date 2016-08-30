package com.baidu.android.pushservice.message;

public class e
{
  protected short a;
  protected short b;
  protected int c;
  protected byte[] d;
  protected boolean e;
  protected boolean f = false;
  protected boolean g;
  private i h;

  public void a(i parami)
  {
    this.h = parami;
  }

  public void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public byte[] a()
  {
    return this.d;
  }

  public boolean b()
  {
    return this.e;
  }

  public boolean c()
  {
    return this.g;
  }

  public i d()
  {
    return this.h;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("type : ");
    localStringBuffer.append(this.a);
    localStringBuffer.append("id : ");
    localStringBuffer.append(this.c);
    localStringBuffer.append(", version: ");
    localStringBuffer.append(this.b);
    localStringBuffer.append(", needReply: ");
    localStringBuffer.append(this.e);
    return localStringBuffer.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.e
 * JD-Core Version:    0.6.2
 */