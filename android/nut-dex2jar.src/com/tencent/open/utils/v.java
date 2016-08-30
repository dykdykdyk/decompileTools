package com.tencent.open.utils;

public final class v
  implements Cloneable
{
  int a;

  public v()
  {
    this.a = 38651;
  }

  public v(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, (byte)0);
  }

  private v(byte[] paramArrayOfByte, byte paramByte)
  {
    this.a = (paramArrayOfByte[1] << 8 & 0xFF00);
    this.a += (paramArrayOfByte[0] & 0xFF);
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof v)));
    while (this.a != ((v)paramObject).a)
      return false;
    return true;
  }

  public final int hashCode()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.v
 * JD-Core Version:    0.6.2
 */