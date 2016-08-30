package com.baidu.android.pushservice.message;

public class i
{
  private String a;
  private long b;
  private int c;
  private byte[] d;

  public String a()
  {
    return this.a;
  }

  public void a(int paramInt)
  {
    this.c = paramInt;
  }

  public void a(long paramLong)
  {
    this.b = paramLong;
  }

  public void a(String paramString)
  {
    this.a = paramString;
  }

  public void a(byte[] paramArrayOfByte)
  {
    this.d = paramArrayOfByte;
  }

  public long b()
  {
    return this.b;
  }

  public String c()
  {
    return String.valueOf(this.b);
  }

  public int d()
  {
    return this.c;
  }

  public byte[] e()
  {
    return this.d;
  }

  public String toString()
  {
    return "type:" + this.c + " appid:" + this.a + " msgId:" + this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.i
 * JD-Core Version:    0.6.2
 */