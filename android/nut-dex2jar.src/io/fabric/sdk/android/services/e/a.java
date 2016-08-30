package io.fabric.sdk.android.services.e;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.q;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.ag;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.Closeable;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;

abstract class a extends io.fabric.sdk.android.services.b.a
{
  public a(o paramo, String paramString1, String paramString2, io.fabric.sdk.android.services.network.l paraml, int paramInt)
  {
    super(paramo, paramString1, paramString2, paraml, paramInt);
  }

  private HttpRequest a(HttpRequest paramHttpRequest, d paramd)
  {
    HttpRequest localHttpRequest = paramHttpRequest.b("app[identifier]", paramd.b).b("app[name]", paramd.f).b("app[display_version]", paramd.c).b("app[build_version]", paramd.d).a("app[source]", Integer.valueOf(paramd.g)).b("app[minimum_sdk_version]", paramd.h).b("app[built_sdk_version]", paramd.i);
    if (!io.fabric.sdk.android.services.b.l.c(paramd.e))
      localHttpRequest.b("app[instance_identifier]", paramd.e);
    Object localObject;
    if (paramd.j != null)
    {
      localObject = null;
      paramHttpRequest = null;
    }
    try
    {
      InputStream localInputStream = this.b.q.getResources().openRawResource(paramd.j.b);
      paramHttpRequest = localInputStream;
      localObject = localInputStream;
      localHttpRequest.b("app[icon][hash]", paramd.j.a).a("app[icon][data]", "icon.png", "application/octet-stream", localInputStream).a("app[icon][width]", Integer.valueOf(paramd.j.c)).a("app[icon][height]", Integer.valueOf(paramd.j.d));
      io.fabric.sdk.android.services.b.l.a(localInputStream, "Failed to close app icon InputStream.");
      if (paramd.k != null)
      {
        paramHttpRequest = paramd.k.iterator();
        while (paramHttpRequest.hasNext())
        {
          paramd = (q)paramHttpRequest.next();
          localHttpRequest.b(String.format(Locale.US, "app[build][libraries][%s][version]", new Object[] { paramd.a }), paramd.b);
          localHttpRequest.b(String.format(Locale.US, "app[build][libraries][%s][type]", new Object[] { paramd.a }), paramd.c);
        }
      }
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      while (true)
      {
        localObject = paramHttpRequest;
        f.b().c("Fabric", "Failed to find app icon with resource ID: " + paramd.j.b, localNotFoundException);
        io.fabric.sdk.android.services.b.l.a(paramHttpRequest, "Failed to close app icon InputStream.");
      }
    }
    finally
    {
      io.fabric.sdk.android.services.b.l.a((Closeable)localObject, "Failed to close app icon InputStream.");
    }
    return localHttpRequest;
  }

  public boolean a(d paramd)
  {
    HttpRequest localHttpRequest = a(a(Collections.emptyMap()).a("X-CRASHLYTICS-API-KEY", paramd.a).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", this.b.a()), paramd);
    f.b().a("Fabric", "Sending app info to " + this.a);
    if (paramd.j != null)
    {
      f.b().a("Fabric", "App icon hash is " + paramd.j.a);
      f.b().a("Fabric", "App icon size is " + paramd.j.c + "x" + paramd.j.d);
    }
    int i = localHttpRequest.b();
    if ("POST".equals(localHttpRequest.a().getRequestMethod()));
    for (paramd = "Create"; ; paramd = "Update")
    {
      f.b().a("Fabric", paramd + " app request ID: " + localHttpRequest.a("X-REQUEST-ID"));
      f.b().a("Fabric", "Result was " + i);
      if (ag.a(i) != 0)
        break;
      return true;
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.e.a
 * JD-Core Version:    0.6.2
 */