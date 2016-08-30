package com.baidu.android.pushservice.richmedia;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.widget.RemoteViews;
import com.baidu.android.pushservice.util.k;
import com.baidu.android.pushservice.util.k.g;
import java.io.File;

class MediaListActivity$4
  implements f
{
  MediaListActivity$4(MediaListActivity paramMediaListActivity)
  {
  }

  public void a(a parama)
  {
  }

  public void a(a parama, b paramb)
  {
    String str = parama.d.c();
    if ((paramb.a != paramb.b) && (MediaListActivity.a(this.a) != null))
    {
      int i = (int)(paramb.a * 100.0D / paramb.b);
      MediaListActivity.a(this.a).setTextViewText(MediaListActivity.b(this.a), i + "%");
      MediaListActivity.a(this.a).setTextViewText(MediaListActivity.c(this.a), str);
      MediaListActivity.a(this.a).setProgressBar(MediaListActivity.d(this.a), 100, i, false);
      MediaListActivity.a(this.a).setImageViewResource(MediaListActivity.e(this.a), 17301633);
      if (Build.VERSION.SDK_INT < 16)
        break label244;
    }
    label244: for (parama = new Notification.Builder(this.a).setSmallIcon(17301633).setWhen(System.currentTimeMillis()).build(); ; parama = new Notification(17301633, null, System.currentTimeMillis()))
    {
      parama.contentView = MediaListActivity.a(this.a);
      parama.contentIntent = PendingIntent.getActivity(this.a, 0, new Intent(), 0);
      parama.flags |= 32;
      parama.flags |= 2;
      this.a.b.notify(str, 0, parama);
      return;
    }
  }

  public void a(a parama, e parame)
  {
    parama = parama.d.c();
    this.a.b.cancel(parama, 0);
    parame = k.a(this.a, parama);
    if ((parame != null) && (parame.i == a.f))
    {
      parama = parame.e;
      parame = parame.f;
      if (parame.length() > 0)
      {
        parama = parama + "/" + parame.substring(0, parame.lastIndexOf(".")) + "/index.html";
        parame = new Intent();
        parame.setClass(this.a, MediaViewActivity.class);
        parame.setData(Uri.fromFile(new File(parama)));
        parame.addFlags(268435456);
        this.a.startActivity(parame);
      }
    }
  }

  public void a(a parama, Throwable paramThrowable)
  {
    parama = parama.d.c();
    this.a.b.cancel(parama, 0);
    this.a.runOnUiThread(new MediaListActivity.4.1(this));
  }

  public void b(a parama)
  {
    parama = parama.d.c();
    this.a.b.cancel(parama, 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.MediaListActivity.4
 * JD-Core Version:    0.6.2
 */