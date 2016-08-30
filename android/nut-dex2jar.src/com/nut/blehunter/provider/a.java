package com.nut.blehunter.provider;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.nut.blehunter.NutTrackerApplication;

public abstract class a
{
  Context a = NutTrackerApplication.a().getApplicationContext();

  protected final int a(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return this.a.getContentResolver().update(a(), paramContentValues, paramString, paramArrayOfString);
  }

  protected final int a(String paramString, String[] paramArrayOfString)
  {
    return this.a.getContentResolver().delete(a(), paramString, paramArrayOfString);
  }

  protected final int a(ContentValues[] paramArrayOfContentValues)
  {
    return this.a.getContentResolver().bulkInsert(a(), paramArrayOfContentValues);
  }

  protected final Cursor a(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return this.a.getContentResolver().query(a(), paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
  }

  protected abstract Uri a();

  protected final Uri a(ContentValues paramContentValues)
  {
    return this.a.getContentResolver().insert(a(), paramContentValues);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.provider.a
 * JD-Core Version:    0.6.2
 */