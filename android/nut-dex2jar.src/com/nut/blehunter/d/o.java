package com.nut.blehunter.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import b.a.a;
import java.io.ByteArrayOutputStream;

public final class o
{
  public static int a(Context paramContext, float paramFloat)
  {
    return (int)(paramContext.getResources().getDisplayMetrics().density * paramFloat + 0.5F);
  }

  public static Bitmap a(Context paramContext, View paramView)
  {
    paramContext = new FrameLayout(paramContext);
    paramContext.addView(paramView);
    paramContext.destroyDrawingCache();
    paramContext.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    paramContext.layout(0, 0, paramContext.getMeasuredWidth(), paramContext.getMeasuredHeight());
    paramContext.buildDrawingCache();
    return paramContext.getDrawingCache().copy(Bitmap.Config.ARGB_8888, false);
  }

  public static String a(long paramLong)
  {
    byte[] arrayOfByte = b(paramLong);
    Object localObject = "";
    int i = 0;
    if (i < 6)
    {
      String str2 = Integer.toHexString(arrayOfByte[i] & 0xFF);
      String str1 = str2;
      if (str2.length() == 1)
        str1 = "0" + str2;
      if (i == 0);
      while (true)
      {
        i += 1;
        localObject = str1;
        break;
        str1 = (String)localObject + ":" + str1;
      }
    }
    return ((String)localObject).toUpperCase();
  }

  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    byte[] arrayOfByte = new byte[6];
    paramString = paramString.split(":");
    int i = 0;
    while (i < paramString.length)
    {
      arrayOfByte[i] = ((byte)Integer.parseInt(paramString[i], 16));
      i += 1;
    }
    long l = b(arrayOfByte);
    if (l == -1L)
      return null;
    return String.valueOf(l);
  }

  public static boolean a(byte[] paramArrayOfByte)
  {
    return (paramArrayOfByte == null) || (paramArrayOfByte.length == 0);
  }

  public static byte[] a(int paramInt)
  {
    return new byte[] { (byte)(paramInt >> 24), (byte)(paramInt >> 16), (byte)(paramInt >> 8), (byte)paramInt };
  }

  public static byte[] a(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    paramBitmap.recycle();
    paramBitmap = localByteArrayOutputStream.toByteArray();
    try
    {
      localByteArrayOutputStream.close();
      return paramBitmap;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return paramBitmap;
  }

  public static long b(byte[] paramArrayOfByte)
  {
    long l2;
    if (paramArrayOfByte.length > 8)
    {
      a.d("mutableBytesToLong failure, array length is error.", new Object[0]);
      l2 = -1L;
    }
    int j;
    int i;
    long l1;
    do
    {
      return l2;
      j = paramArrayOfByte.length;
      i = 0;
      l1 = 0L;
      j -= 1;
      l2 = l1;
    }
    while (j < 0);
    switch (i)
    {
    default:
      a.d("mutableBytesToLong failure, key value abnormal.", new Object[0]);
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      j -= 1;
      i += 1;
      break;
      l1 |= (paramArrayOfByte[j] & 0xFF) << 0;
      continue;
      l1 |= (paramArrayOfByte[j] & 0xFF) << 8;
      continue;
      l1 |= (paramArrayOfByte[j] & 0xFF) << 16;
      continue;
      l1 |= (paramArrayOfByte[j] & 0xFF) << 24;
      continue;
      l1 |= (paramArrayOfByte[j] & 0xFF) << 32;
      continue;
      l1 |= (paramArrayOfByte[j] & 0xFF) << 40;
      continue;
      l1 |= (paramArrayOfByte[j] & 0xFF) << 48;
      continue;
      l1 |= (paramArrayOfByte[j] & 0xFF) << 56;
    }
  }

  public static byte[] b(long paramLong)
  {
    int i = (byte)(int)(paramLong & 0xFF);
    int j = (byte)(int)(paramLong >> 8 & 0xFF);
    int k = (byte)(int)(paramLong >> 16 & 0xFF);
    int m = (byte)(int)(paramLong >> 24 & 0xFF);
    int n = (byte)(int)(paramLong >> 32 & 0xFF);
    return new byte[] { (byte)(int)(paramLong >> 40 & 0xFF), n, m, k, j, i };
  }

  public static String c(byte[] paramArrayOfByte)
  {
    String str1 = "";
    Object localObject;
    if (paramArrayOfByte == null)
    {
      localObject = "";
      return localObject;
    }
    int i = 0;
    while (true)
    {
      localObject = str1;
      if (i >= paramArrayOfByte.length)
        break;
      String str2 = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      localObject = str2;
      if (str2.length() == 1)
        localObject = "0" + str2;
      str1 = str1 + " " + (String)localObject;
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.o
 * JD-Core Version:    0.6.2
 */