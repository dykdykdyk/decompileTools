package com.tencent.wxop.stat;

public enum u
{
  int h;

  private u(int paramInt)
  {
    this.h = paramInt;
  }

  public static u a(int paramInt)
  {
    u[] arrayOfu = values();
    int k = arrayOfu.length;
    int j = 0;
    while (j < k)
    {
      u localu = arrayOfu[j];
      if (paramInt == localu.h)
        return localu;
      j += 1;
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.u
 * JD-Core Version:    0.6.2
 */