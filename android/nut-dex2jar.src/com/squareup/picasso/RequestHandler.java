package com.squareup.picasso;

import android.graphics.BitmapFactory.Options;
import android.net.NetworkInfo;
import java.io.IOException;

public abstract class RequestHandler
{
  static void calculateInSampleSize(int paramInt1, int paramInt2, int paramInt3, int paramInt4, BitmapFactory.Options paramOptions, Request paramRequest)
  {
    int i = 1;
    if ((paramInt4 > paramInt2) || (paramInt3 > paramInt1))
    {
      if (paramInt2 != 0)
        break label43;
      i = (int)Math.floor(paramInt3 / paramInt1);
    }
    while (true)
    {
      paramOptions.inSampleSize = i;
      paramOptions.inJustDecodeBounds = false;
      return;
      label43: if (paramInt1 == 0)
      {
        i = (int)Math.floor(paramInt4 / paramInt2);
      }
      else
      {
        paramInt2 = (int)Math.floor(paramInt4 / paramInt2);
        paramInt1 = (int)Math.floor(paramInt3 / paramInt1);
        if (paramRequest.centerInside)
          i = Math.max(paramInt2, paramInt1);
        else
          i = Math.min(paramInt2, paramInt1);
      }
    }
  }

  static void calculateInSampleSize(int paramInt1, int paramInt2, BitmapFactory.Options paramOptions, Request paramRequest)
  {
    calculateInSampleSize(paramInt1, paramInt2, paramOptions.outWidth, paramOptions.outHeight, paramOptions, paramRequest);
  }

  static BitmapFactory.Options createBitmapOptions(Request paramRequest)
  {
    boolean bool = paramRequest.hasSize();
    if (paramRequest.config != null);
    for (int i = 1; ; i = 0)
    {
      Object localObject = null;
      if ((bool) || (i != 0))
      {
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inJustDecodeBounds = bool;
        localObject = localOptions;
        if (i != 0)
        {
          localOptions.inPreferredConfig = paramRequest.config;
          localObject = localOptions;
        }
      }
      return localObject;
    }
  }

  static boolean requiresInSampleSize(BitmapFactory.Options paramOptions)
  {
    return (paramOptions != null) && (paramOptions.inJustDecodeBounds);
  }

  public abstract boolean canHandleRequest(Request paramRequest);

  int getRetryCount()
  {
    return 0;
  }

  public abstract RequestHandler.Result load(Request paramRequest, int paramInt)
    throws IOException;

  boolean shouldRetry(boolean paramBoolean, NetworkInfo paramNetworkInfo)
  {
    return false;
  }

  boolean supportsReplay()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.RequestHandler
 * JD-Core Version:    0.6.2
 */