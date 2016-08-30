package com.baidu.android.pushservice;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.richmedia.MediaViewActivity;
import com.baidu.android.pushservice.richmedia.a;
import com.baidu.android.pushservice.richmedia.c;
import com.baidu.android.pushservice.richmedia.e;
import com.baidu.android.pushservice.richmedia.f;
import com.baidu.android.pushservice.util.k;
import com.baidu.android.pushservice.util.k.g;
import java.io.File;

class PushServiceReceiver$a
  implements f
{
  public Context a = null;
  public RemoteViews b = null;
  public int c = 0;
  public int d = 0;
  public int e = 0;
  public int f = 0;
  NotificationManager g;

  PushServiceReceiver$a(Context paramContext, PublicMsg paramPublicMsg)
  {
    this.a = paramContext;
    this.g = ((NotificationManager)paramContext.getSystemService("notification"));
  }

  public void a(a parama)
  {
    parama = this.a.getResources();
    String str = this.a.getPackageName();
    if (parama == null);
    int i;
    do
    {
      return;
      i = parama.getIdentifier("bpush_download_progress", "layout", str);
      this.b = new RemoteViews(this.a.getPackageName(), i);
    }
    while (i == 0);
    this.c = parama.getIdentifier("bpush_download_progress", "id", str);
    this.d = parama.getIdentifier("bpush_progress_percent", "id", str);
    this.e = parama.getIdentifier("bpush_progress_text", "id", str);
    this.f = parama.getIdentifier("bpush_download_icon", "id", str);
    this.b.setImageViewResource(this.f, this.a.getApplicationInfo().icon);
  }

  @SuppressLint({"NewApi"})
  public void a(a parama, com.baidu.android.pushservice.richmedia.b paramb)
  {
    String str = parama.d.c();
    if ((paramb.a != paramb.b) && (this.b != null))
    {
      int i = (int)(paramb.a * 100.0D / paramb.b);
      this.b.setTextViewText(this.d, i + "%");
      this.b.setTextViewText(this.e, "正在下载富媒体:" + str);
      this.b.setProgressBar(this.c, 100, i, false);
      if (Build.VERSION.SDK_INT < 16)
        break label213;
    }
    label213: for (parama = new Notification.Builder(this.a).setSmallIcon(17301633).setWhen(System.currentTimeMillis()).build(); ; parama = new Notification(17301633, null, System.currentTimeMillis()))
    {
      parama.contentView = this.b;
      parama.contentIntent = PendingIntent.getActivity(this.a, 0, new Intent(), 0);
      parama.flags |= 32;
      parama.flags |= 2;
      this.g.notify(str, 0, parama);
      return;
    }
  }

  public void a(a parama, e parame)
  {
    parama = parama.d.c();
    this.g.cancel(parama, 0);
    parame = k.a(this.a, parama);
    if ((parame != null) && (parame.i == a.f))
    {
      parama = parame.e;
      parame = parame.f;
      if ((!TextUtils.isEmpty(parame)) && (parame.length() > 0))
      {
        parama = parama + "/" + parame.substring(0, parame.lastIndexOf(".")) + "/index.html";
        parame = new Intent();
        parame.setClass(this.a, MediaViewActivity.class);
        parame.setData(Uri.fromFile(new File(parama)));
        parame.addFlags(268435456);
      }
    }
    try
    {
      this.a.startActivity(parame);
      return;
    }
    catch (ActivityNotFoundException parama)
    {
      new Handler(Looper.getMainLooper()).post(new PushServiceReceiver.a.1(this));
      com.baidu.android.pushservice.h.b.a("PushServiceReceiver", parama, this.a);
    }
  }

  public void a(a parama, Throwable paramThrowable)
  {
    if (this.a == null)
      return;
    parama = parama.d.c();
    this.g.cancel(parama, 0);
    new Handler(Looper.getMainLooper()).post(new PushServiceReceiver.a.2(this, parama));
  }

  public void b(a parama)
  {
    parama = parama.d.c();
    this.g.cancel(parama, 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushServiceReceiver.a
 * JD-Core Version:    0.6.2
 */