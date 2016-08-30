package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

public final class bl
{
  Notification A;
  public Notification B = new Notification();
  public ArrayList<String> C;
  public Context a;
  public CharSequence b;
  public CharSequence c;
  public PendingIntent d;
  PendingIntent e;
  RemoteViews f;
  public Bitmap g;
  public CharSequence h;
  public int i;
  int j;
  boolean k = true;
  public boolean l;
  public bx m;
  public CharSequence n;
  int o;
  int p;
  boolean q;
  String r;
  boolean s;
  String t;
  public ArrayList<bh> u = new ArrayList();
  boolean v = false;
  String w;
  Bundle x;
  public int y = 0;
  int z = 0;

  public bl(Context paramContext)
  {
    this.a = paramContext;
    this.B.when = System.currentTimeMillis();
    this.B.audioStreamType = -1;
    this.j = 0;
    this.C = new ArrayList();
  }

  private static CharSequence d(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null);
    while (paramCharSequence.length() <= 5120)
      return paramCharSequence;
    return paramCharSequence.subSequence(0, 5120);
  }

  public final bl a()
  {
    b(16, true);
    return this;
  }

  public final bl a(int paramInt)
  {
    this.B.icon = paramInt;
    return this;
  }

  public final bl a(int paramInt, boolean paramBoolean)
  {
    this.o = 100;
    this.p = paramInt;
    this.q = paramBoolean;
    return this;
  }

  public final bl a(long paramLong)
  {
    this.B.when = paramLong;
    return this;
  }

  public final bl a(PendingIntent paramPendingIntent)
  {
    this.d = paramPendingIntent;
    return this;
  }

  public final bl a(Bitmap paramBitmap)
  {
    this.g = paramBitmap;
    return this;
  }

  public final bl a(Uri paramUri)
  {
    this.B.sound = paramUri;
    this.B.audioStreamType = -1;
    return this;
  }

  public final bl a(CharSequence paramCharSequence)
  {
    this.b = d(paramCharSequence);
    return this;
  }

  public final bl a(long[] paramArrayOfLong)
  {
    this.B.vibrate = paramArrayOfLong;
    return this;
  }

  public final Notification b()
  {
    bo localbo = bg.a();
    new bm();
    return localbo.a(this);
  }

  public final bl b(CharSequence paramCharSequence)
  {
    this.c = d(paramCharSequence);
    return this;
  }

  public final void b(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localNotification = this.B;
      localNotification.flags |= paramInt;
      return;
    }
    Notification localNotification = this.B;
    localNotification.flags &= (paramInt ^ 0xFFFFFFFF);
  }

  public final bl c(CharSequence paramCharSequence)
  {
    this.B.tickerText = d(paramCharSequence);
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.bl
 * JD-Core Version:    0.6.2
 */