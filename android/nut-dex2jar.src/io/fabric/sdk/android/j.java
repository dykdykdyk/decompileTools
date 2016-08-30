package io.fabric.sdk.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import java.io.File;

final class j extends ContextWrapper
{
  private final String a;
  private final String b;

  public j(Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext);
    this.b = paramString1;
    this.a = paramString2;
  }

  public final File getCacheDir()
  {
    return new File(super.getCacheDir(), this.a);
  }

  public final File getDatabasePath(String paramString)
  {
    File localFile = new File(super.getDatabasePath(paramString).getParentFile(), this.a);
    localFile.mkdirs();
    return new File(localFile, paramString);
  }

  @TargetApi(8)
  public final File getExternalCacheDir()
  {
    return new File(super.getExternalCacheDir(), this.a);
  }

  @TargetApi(8)
  public final File getExternalFilesDir(String paramString)
  {
    return new File(super.getExternalFilesDir(paramString), this.a);
  }

  public final File getFilesDir()
  {
    return new File(super.getFilesDir(), this.a);
  }

  public final SharedPreferences getSharedPreferences(String paramString, int paramInt)
  {
    return super.getSharedPreferences(this.b + ":" + paramString, paramInt);
  }

  public final SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(paramString), paramCursorFactory);
  }

  @TargetApi(11)
  public final SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory, DatabaseErrorHandler paramDatabaseErrorHandler)
  {
    return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(paramString).getPath(), paramCursorFactory, paramDatabaseErrorHandler);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.j
 * JD-Core Version:    0.6.2
 */