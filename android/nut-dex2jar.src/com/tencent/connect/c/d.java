package com.tencent.connect.c;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.text.TextUtils;
import com.tencent.open.a.h;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public final class d
{
  private static int a(BitmapFactory.Options paramOptions)
  {
    int k = (int)Math.ceil(Math.sqrt(paramOptions.outWidth * paramOptions.outHeight / 19600.0D));
    if (k <= 8)
    {
      int i = 1;
      while (true)
      {
        j = i;
        if (i >= k)
          break;
        i <<= 1;
      }
    }
    int j = (k + 7) / 8 * 8;
    return j;
  }

  protected static final String a(Bitmap paramBitmap, String paramString1, String paramString2)
  {
    File localFile = new File(paramString1);
    if (!localFile.exists())
      localFile.mkdirs();
    paramString1 = paramString1 + paramString2;
    paramString2 = new File(paramString1);
    if (paramString2.exists())
      paramString2.delete();
    if (paramBitmap != null);
    try
    {
      paramString2 = new FileOutputStream(paramString2);
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 80, paramString2);
      paramString2.flush();
      paramString2.close();
      paramBitmap.recycle();
      return paramString1;
    }
    catch (FileNotFoundException paramBitmap)
    {
      paramBitmap.printStackTrace();
      return null;
    }
    catch (IOException paramBitmap)
    {
      while (true)
        paramBitmap.printStackTrace();
    }
  }

  static final boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return false;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    try
    {
      BitmapFactory.decodeFile(paramString, localOptions);
      i = localOptions.outWidth;
      j = localOptions.outHeight;
      if ((localOptions.mCancel) || (localOptions.outWidth == -1) || (localOptions.outHeight == -1))
        return false;
    }
    catch (OutOfMemoryError paramString)
    {
      int i;
      int j;
      while (true)
        paramString.printStackTrace();
      int k;
      if (i > j)
      {
        k = i;
        if (i >= j)
          break label150;
      }
      while (true)
      {
        h.b("openSDK_LOG.AsynScaleCompressImage", "longSide=" + k + "shortSide=" + i);
        localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
        if ((k <= 140) && (i <= 140))
          break label155;
        return true;
        k = j;
        break;
        label150: i = j;
      }
    }
    label155: return false;
  }

  public static final Bitmap b(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      localObject = null;
    do
    {
      return localObject;
      localObject = new BitmapFactory.Options();
      ((BitmapFactory.Options)localObject).inJustDecodeBounds = true;
      try
      {
        BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
        i = ((BitmapFactory.Options)localObject).outWidth;
        j = ((BitmapFactory.Options)localObject).outHeight;
        if ((((BitmapFactory.Options)localObject).mCancel) || (((BitmapFactory.Options)localObject).outWidth == -1) || (((BitmapFactory.Options)localObject).outHeight == -1))
          return null;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        while (true)
          localOutOfMemoryError.printStackTrace();
        if (i > j);
        while (true)
        {
          ((BitmapFactory.Options)localObject).inPreferredConfig = Bitmap.Config.RGB_565;
          if (i > 140)
            ((BitmapFactory.Options)localObject).inSampleSize = a((BitmapFactory.Options)localObject);
          ((BitmapFactory.Options)localObject).inJustDecodeBounds = false;
          try
          {
            paramString = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
            if (paramString == null)
            {
              return null;
              i = j;
            }
          }
          catch (OutOfMemoryError paramString)
          {
            while (true)
            {
              paramString.printStackTrace();
              paramString = null;
            }
            i = ((BitmapFactory.Options)localObject).outWidth;
            j = ((BitmapFactory.Options)localObject).outHeight;
            if (i <= j)
              break label232;
          }
        }
      }
      localObject = paramString;
    }
    while (i <= 140);
    Object localObject = new Matrix();
    int i = paramString.getWidth();
    int j = paramString.getHeight();
    if (i > j);
    while (true)
    {
      float f = 140.0F / i;
      ((Matrix)localObject).postScale(f, f);
      return Bitmap.createBitmap(paramString, 0, 0, paramString.getWidth(), paramString.getHeight(), (Matrix)localObject, true);
      label232: i = j;
      break;
      i = j;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.c.d
 * JD-Core Version:    0.6.2
 */