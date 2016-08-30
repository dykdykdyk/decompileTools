package com.squareup.picasso;

import android.graphics.Bitmap;

public abstract interface Cache
{
  public static final Cache NONE = new Cache.1();

  public abstract void clear();

  public abstract void clearKeyUri(String paramString);

  public abstract Bitmap get(String paramString);

  public abstract int maxSize();

  public abstract void set(String paramString, Bitmap paramBitmap);

  public abstract int size();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Cache
 * JD-Core Version:    0.6.2
 */