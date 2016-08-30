package com.baidu.android.pushservice.a.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class d
{
  public static final String a = Environment.getExternalStorageDirectory().getPath() + "/baidu/pushservice/imagecache/";
  private static d e;
  private f b = new f(20);
  private b c = new b(a, 1, this.d, this.b);
  private int d = 2073600;

  public static d a()
  {
    if (e == null)
      e = new d();
    return e;
  }

  private Bitmap[] a(Uri[] paramArrayOfUri)
  {
    Bitmap[] arrayOfBitmap = new Bitmap[paramArrayOfUri.length];
    int i = 0;
    if (i < arrayOfBitmap.length)
    {
      if (!e.a(paramArrayOfUri[i]))
        arrayOfBitmap[i] = null;
      while (true)
      {
        i += 1;
        break;
        String str = com.baidu.android.pushservice.j.e.a(paramArrayOfUri[i].toString().getBytes(), false);
        if (!TextUtils.isEmpty(str))
        {
          arrayOfBitmap[i] = this.b.a(str);
          if (arrayOfBitmap[i] == null)
            arrayOfBitmap[i] = this.c.a(str);
        }
      }
    }
    return arrayOfBitmap;
  }

  public void a(Context paramContext, a.a parama, Uri[] paramArrayOfUri)
  {
    if ((paramArrayOfUri == null) || (paramArrayOfUri.length <= 0))
    {
      parama.a(new Bitmap[0]);
      return;
    }
    paramContext = new ArrayList();
    int i = 0;
    while (i < paramArrayOfUri.length)
    {
      if (e.a(paramArrayOfUri[i]))
      {
        String str = com.baidu.android.pushservice.j.e.a(paramArrayOfUri[i].toString().getBytes(), false);
        if ((!TextUtils.isEmpty(str)) && (this.b.a(str) == null) && (this.c.a(str) == null))
          paramContext.add(paramArrayOfUri[i]);
      }
      i += 1;
    }
    if (!paramContext.isEmpty())
    {
      new a(this.d, new d.1(this, paramContext, parama, paramArrayOfUri), (Uri[])paramContext.toArray(new Uri[paramContext.size()])).start();
      return;
    }
    parama.a(a(paramArrayOfUri));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.a.d
 * JD-Core Version:    0.6.2
 */