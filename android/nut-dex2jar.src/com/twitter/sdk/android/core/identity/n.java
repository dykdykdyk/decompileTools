package com.twitter.sdk.android.core.identity;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.internal.scribe.a;
import com.twitter.sdk.android.core.internal.scribe.c;
import com.twitter.sdk.android.core.internal.scribe.d;
import com.twitter.sdk.android.core.internal.scribe.m;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.v;
import com.twitter.sdk.android.core.y;
import java.util.Locale;

public final class n
{
  public final b a;
  public final r<y> b;
  public final TwitterAuthConfig c;
  private final Context d;

  public n()
  {
    this(localContext, localTwitterAuthConfig, localv.a, o.a());
  }

  private n(Context paramContext, TwitterAuthConfig paramTwitterAuthConfig, r<y> paramr, b paramb)
  {
    this.a = paramb;
    this.d = paramContext;
    this.c = paramTwitterAuthConfig;
    this.b = paramr;
  }

  public static void a()
  {
    a locala = com.twitter.sdk.android.core.internal.scribe.o.a;
    if (locala == null)
      return;
    Object localObject = new d();
    ((d)localObject).a = "android";
    ((d)localObject).b = "login";
    ((d)localObject).c = "";
    ((d)localObject).d = "";
    ((d)localObject).e = "";
    ((d)localObject).f = "impression";
    c localc = new c(((d)localObject).a, ((d)localObject).b, ((d)localObject).c, ((d)localObject).d, ((d)localObject).e, ((d)localObject).f);
    if (locala.a.q != null);
    for (localObject = locala.a.q.getResources().getConfiguration().locale.getLanguage(); ; localObject = "")
    {
      long l = System.currentTimeMillis();
      int i = 0;
      while (i <= 0)
      {
        locala.a(new m(new c[] { localc }[0], l, (String)localObject, locala.b));
        i += 1;
      }
      break;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.n
 * JD-Core Version:    0.6.2
 */