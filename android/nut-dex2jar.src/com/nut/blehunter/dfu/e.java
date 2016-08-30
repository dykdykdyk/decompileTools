package com.nut.blehunter.dfu;

import android.net.Uri;
import android.support.v4.app.v;
import com.nut.blehunter.d.k;
import com.nut.blehunter.entity.h;
import com.nut.blehunter.ui.b.a.b;

public final class e
{
  public static void a(v paramv, int paramInt, h paramh, com.nut.blehunter.ui.b.a.d paramd)
  {
    k.a(paramv, "is_show_dfu", true);
    String str = com.nut.blehunter.d.d.c(paramv) + "/" + Uri.parse(paramh.a).getLastPathSegment();
    new f(paramv, paramh, paramInt, paramd).executeOnExecutor(io.fabric.sdk.android.services.concurrency.a.b, new String[] { paramh.a, str });
  }

  public static void a(v paramv, String paramString, com.nut.blehunter.ui.b.a.d paramd)
  {
    paramString = paramv.getString(2131099826, new Object[] { paramString });
    String str = paramv.getString(2131099866);
    new b(paramv).a(true).b(false).a(str).b(paramString).a(2131099797, paramd).b(2131099781, null).a().a(paramv, "dfu");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.dfu.e
 * JD-Core Version:    0.6.2
 */