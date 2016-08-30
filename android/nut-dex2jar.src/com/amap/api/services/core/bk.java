package com.amap.api.services.core;

import android.content.ContentValues;
import android.database.Cursor;

public abstract interface bk<T>
{
  public abstract ContentValues a();

  public abstract T a(Cursor paramCursor);

  public abstract void a(T paramT);

  public abstract String b();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bk
 * JD-Core Version:    0.6.2
 */