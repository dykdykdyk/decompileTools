package u.aly;

import android.content.Context;
import android.content.ContextWrapper;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import java.io.File;

public final class ee extends ContextWrapper
{
  private String a;

  public ee(Context paramContext, String paramString)
  {
    super(paramContext);
    this.a = paramString;
  }

  public final File getDatabasePath(String paramString)
  {
    paramString = new File(this.a + paramString);
    if ((!paramString.getParentFile().exists()) && (!paramString.getParentFile().isDirectory()))
      paramString.getParentFile().mkdirs();
    return paramString;
  }

  public final SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(paramString).getAbsolutePath(), paramCursorFactory);
  }

  public final SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory, DatabaseErrorHandler paramDatabaseErrorHandler)
  {
    return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(paramString).getAbsolutePath(), paramCursorFactory, paramDatabaseErrorHandler);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ee
 * JD-Core Version:    0.6.2
 */