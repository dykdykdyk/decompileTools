package com.amap.api.mapcore2d;

import java.util.Locale;

class bk$a$2 extends cn
{
  bk$a$2(bk.a parama, at paramat)
  {
  }

  public String a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((v.h == null) || (v.h.equals("")))
    {
      this.a.h = true;
      String str2 = bh.a().b();
      if (v.l == 2);
      for (String str1 = "wprd"; ; str1 = "webrd")
        return String.format(str2, new Object[] { Integer.valueOf(paramInt3), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), str1, this.b.d });
    }
    this.a.h = false;
    return String.format(Locale.US, v.h, new Object[] { Integer.valueOf(paramInt3), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bk.a.2
 * JD-Core Version:    0.6.2
 */