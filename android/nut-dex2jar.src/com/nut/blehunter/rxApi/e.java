package com.nut.blehunter.rxApi;

import android.content.Context;
import android.support.v4.app.v;
import com.nut.blehunter.NutTrackerApplication;
import com.nut.blehunter.d.n;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.b;
import java.io.IOException;

public final class e
{
  public static ApiError a(Throwable paramThrowable)
  {
    Context localContext = NutTrackerApplication.a().getApplicationContext();
    if ((paramThrowable instanceof IOException))
      return new ApiError(2001, localContext.getString(2131099885));
    return new ApiError(2005, localContext.getString(2131099887));
  }

  public static void a(v paramv)
  {
    b localb = new b(paramv);
    localb.a(2131099863);
    localb.b(2131099815);
    localb.a(2131099783, null);
    localb.a().a(paramv, "baseDialog");
  }

  public static void a(v paramv, int paramInt, String paramString)
  {
    if ((paramv == null) || (paramv.isFinishing()))
      return;
    switch (paramInt)
    {
    case 207:
    default:
      b.a.a.d(" error= %s(%d)", new Object[] { paramString, Integer.valueOf(paramInt) });
      n.a(paramv, 0, paramString);
      return;
    case 204:
      b(paramv);
      return;
    case 205:
      a(paramv);
      return;
    case 210:
      paramString = new b(paramv);
      paramString.b(2131099849);
      paramString.a(2131099790, null);
      paramString.a().a(paramv, "baseDialog");
      return;
    case 220:
      n.b(paramv, 2131099945);
      return;
    case 221:
      n.a(paramv, 2131100099);
      return;
    case 2001:
    case 2003:
      n.b(paramv, 2131099885);
      return;
    case 200:
      n.b(paramv, 2131099886);
      return;
    case 201:
      n.b(paramv, 2131099888);
      return;
    case 208:
      n.a(paramv, 2131100100);
      return;
    case 212:
      paramString = new b(paramv);
      paramString.a(2131099880);
      paramString.b(2131099851);
      paramString.b(2131099781, null);
      paramString.a(2131099796, new f(paramv));
      paramString.a().a(paramv, "baseDialog");
      return;
    case 203:
    case 211:
      paramString = new b(paramv);
      paramString.a(2131099878);
      paramString.b(2131099812);
      paramString.a(2131099783, null);
      paramString.a().a(paramv, "baseDialog");
      return;
    case 322:
      n.b(paramv, 2131099852);
      return;
    case 315:
      n.b(paramv, 2131099850);
      return;
    case 312:
    }
    n.b(paramv, 2131099858);
  }

  public static void a(v paramv, String paramString1, String paramString2)
  {
    b localb = new b(paramv);
    localb.b(2131099839);
    localb.a(2131099781, null);
    localb.b(2131099783, new g(paramString1, paramString2, paramv));
    localb.a().a(paramv, "baseDialog");
  }

  public static void b(v paramv)
  {
    b localb = new b(paramv);
    localb.a(2131099877);
    localb.b(2131099841);
    localb.a(2131099783, null);
    localb.a().a(paramv, "baseDialog");
  }

  public static void c(v paramv)
  {
    b localb = new b(paramv);
    localb.b(2131099838);
    localb.a(2131099790, null);
    localb.a().a(paramv, "baseDialog");
  }

  public static void d(v paramv)
  {
    b localb = new b(paramv);
    localb.b(2131099844);
    localb.a(2131099783, null);
    localb.a().a(paramv, "baseDialog");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.e
 * JD-Core Version:    0.6.2
 */