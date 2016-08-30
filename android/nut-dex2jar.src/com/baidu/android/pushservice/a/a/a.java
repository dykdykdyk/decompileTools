package com.baidu.android.pushservice.a.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import com.baidu.android.pushservice.f.b;
import com.baidu.android.pushservice.f.c;

public class a extends Thread
{
  private a.a a;
  private Uri[] b;
  private int c = 2073600;

  public a(int paramInt, a.a parama, Uri[] paramArrayOfUri)
  {
    if (parama == null)
    {
      com.baidu.android.pushservice.h.a.e("DownLoadThread", "listener is null");
      return;
    }
    this.c = paramInt;
    this.a = parama;
    this.b = paramArrayOfUri;
  }

  static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = b(paramOptions, paramInt1, paramInt2);
    if (i <= 8)
    {
      paramInt1 = 1;
      while (true)
      {
        paramInt2 = paramInt1;
        if (paramInt1 >= i)
          break;
        paramInt1 <<= 1;
      }
    }
    paramInt2 = (i + 7) / 8 * 8;
    return paramInt2;
  }

  private byte[] a(Uri paramUri)
  {
    if ((paramUri == null) || (paramUri.toString().length() == 0) || (!e.a(paramUri)))
    {
      com.baidu.android.pushservice.h.a.e("DownLoadThread", "getInputStreamFromUri function's uri param is error");
      return null;
    }
    try
    {
      paramUri = c.a(c.a(paramUri.toString(), "GET", null).a());
      return paramUri;
    }
    catch (Exception paramUri)
    {
      com.baidu.android.pushservice.h.a.e("DownLoadThread", "Uri can't open a inputstream");
    }
    return null;
  }

  private Bitmap[] a(Uri[] paramArrayOfUri)
  {
    int i = 0;
    if ((paramArrayOfUri == null) || (paramArrayOfUri.length <= 0))
      return null;
    Bitmap[] arrayOfBitmap = new Bitmap[paramArrayOfUri.length];
    while (true)
    {
      if (i < paramArrayOfUri.length)
      {
        byte[] arrayOfByte = a(paramArrayOfUri[i]);
        if (arrayOfByte != null);
        try
        {
          if (arrayOfByte.length > 0)
          {
            BitmapFactory.Options localOptions = new BitmapFactory.Options();
            localOptions.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length, localOptions);
            localOptions.inSampleSize = a(localOptions, -1, this.c);
            localOptions.inJustDecodeBounds = false;
            arrayOfBitmap[i] = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length, localOptions);
          }
          else
          {
            arrayOfBitmap[i] = null;
          }
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          com.baidu.android.pushservice.h.a.e("DownLoadThread", "out of memory err no bitmap found");
          arrayOfBitmap[i] = null;
        }
        catch (Exception localException)
        {
          com.baidu.android.pushservice.h.a.e("DownLoadThread", "IO exception" + localException);
          arrayOfBitmap[i] = null;
        }
      }
      else
      {
        return arrayOfBitmap;
      }
      i += 1;
    }
  }

  private static int b(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    double d1 = paramOptions.outWidth;
    double d2 = paramOptions.outHeight;
    int i;
    int j;
    if (paramInt2 == -1)
    {
      i = 1;
      if (paramInt1 != -1)
        break label60;
      j = 128;
      label31: if (j >= i)
        break label84;
    }
    label60: label84: 
    do
    {
      return i;
      i = (int)Math.ceil(Math.sqrt(d1 * d2 / paramInt2));
      break;
      j = (int)Math.min(Math.floor(d1 / paramInt1), Math.floor(d2 / paramInt1));
      break label31;
      if ((paramInt2 == -1) && (paramInt1 == -1))
        return 1;
    }
    while (paramInt1 == -1);
    return j;
  }

  protected void a(Bitmap[] paramArrayOfBitmap)
  {
    if (this.a != null)
      this.a.a(paramArrayOfBitmap);
  }

  public void run()
  {
    a(a(this.b));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.a.a
 * JD-Core Version:    0.6.2
 */