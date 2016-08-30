package com.loc;

import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import org.json.JSONObject;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

final class bt extends DefaultHandler
{
  public AmapLoc a = new AmapLoc();
  private String c = "";

  private bt(bs parambs)
  {
  }

  public final void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this.c = String.valueOf(paramArrayOfChar, paramInt1, paramInt2);
  }

  public final void endElement(String paramString1, String paramString2, String paramString3)
  {
    if (paramString2.equals("retype"))
      this.a.g(this.c);
    do
    {
      return;
      if (paramString2.equals("rdesc"))
      {
        this.a.h(this.c);
        return;
      }
      if (paramString2.equals("adcode"))
      {
        this.a.k(this.c);
        return;
      }
      if (paramString2.equals("citycode"))
      {
        this.a.i(this.c);
        return;
      }
      if (paramString2.equals("radius"))
        try
        {
          this.a.a(Float.parseFloat(this.c));
          return;
        }
        catch (Exception paramString1)
        {
          this.a.a(3891.0F);
          return;
        }
      if (paramString2.equals("cenx"))
        try
        {
          this.a.a(Double.parseDouble(this.c));
          return;
        }
        catch (Exception paramString1)
        {
          this.a.a(0.0D);
          return;
        }
      if (paramString2.equals("ceny"))
        try
        {
          this.a.b(Double.parseDouble(this.c));
          return;
        }
        catch (Exception paramString1)
        {
          this.a.b(0.0D);
          return;
        }
      if (paramString2.equals("desc"))
      {
        this.a.j(this.c);
        return;
      }
      if (paramString2.equals("country"))
      {
        this.a.l(this.c);
        return;
      }
      if (paramString2.equals("province"))
      {
        this.a.m(this.c);
        return;
      }
      if (paramString2.equals("city"))
      {
        this.a.n(this.c);
        return;
      }
      if (paramString2.equals("district"))
      {
        this.a.o(this.c);
        return;
      }
      if (paramString2.equals("road"))
      {
        this.a.p(this.c);
        return;
      }
      if (paramString2.equals("street"))
      {
        this.a.q(this.c);
        return;
      }
      if (paramString2.equals("number"))
      {
        this.a.r(this.c);
        return;
      }
      if (paramString2.equals("poiname"))
      {
        this.a.s(this.c);
        return;
      }
      if (paramString2.equals("BIZ"))
      {
        if (this.a.D() == null)
          this.a.a(new JSONObject());
        try
        {
          this.a.D().put("BIZ", this.c);
          return;
        }
        catch (Exception paramString1)
        {
          return;
        }
      }
      if (paramString2.equals("cens"))
      {
        this.a.t(this.c);
        return;
      }
      if (paramString2.equals("pid"))
      {
        this.a.u(this.c);
        return;
      }
      if (paramString2.equals("flr"))
      {
        this.a.v(this.c);
        return;
      }
      if (paramString2.equals("coord"))
      {
        if (TextUtils.isEmpty(dp.g))
          dp.g = this.c;
        this.a.w(this.c);
        return;
      }
      if (paramString2.equals("mcell"))
      {
        this.a.x(this.c);
        return;
      }
    }
    while ((paramString2.equals("gkeyloc")) || (paramString2.equals("gkeygeo")) || (!paramString2.equals("apiTime")));
    long l = Long.parseLong(this.c);
    this.a.a(l);
  }

  public final void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    this.c = "";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bt
 * JD-Core Version:    0.6.2
 */