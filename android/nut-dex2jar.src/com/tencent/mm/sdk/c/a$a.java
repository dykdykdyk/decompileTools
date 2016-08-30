package com.tencent.mm.sdk.c;

import com.tencent.mm.sdk.b.a;

public final class a$a
{
  public static Object a(int paramInt, String paramString)
  {
    String str = paramString;
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
      try
      {
        a.a("MicroMsg.SDK.PluginProvider.Resolver", "unknown type");
        break label82;
        return Integer.valueOf(paramString);
        return Long.valueOf(paramString);
        return Boolean.valueOf(paramString);
        return Float.valueOf(paramString);
        paramString = Double.valueOf(paramString);
        return paramString;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        label82: str = null;
      }
    case 3:
    }
    return str;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.c.a.a
 * JD-Core Version:    0.6.2
 */