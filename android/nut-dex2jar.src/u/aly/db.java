package u.aly;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

final class db extends SQLiteOpenHelper
{
  private static Context b;
  private String a;

  // ERROR //
  private db(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +14 -> 15
    //   4: aload_2
    //   5: astore_3
    //   6: aload_2
    //   7: ldc 14
    //   9: invokevirtual 20	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   12: ifeq +6 -> 18
    //   15: ldc 22
    //   17: astore_3
    //   18: aload_0
    //   19: aload_1
    //   20: aload_3
    //   21: aconst_null
    //   22: iconst_1
    //   23: invokespecial 25	android/database/sqlite/SQLiteOpenHelper:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   26: aload_0
    //   27: invokevirtual 29	u/aly/db:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   30: astore_1
    //   31: ldc 31
    //   33: aload_1
    //   34: invokestatic 34	u/aly/db:a	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    //   37: ifeq +12 -> 49
    //   40: ldc 36
    //   42: aload_1
    //   43: invokestatic 34	u/aly/db:a	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    //   46: ifne +9 -> 55
    //   49: aload_0
    //   50: aload_1
    //   51: invokespecial 40	u/aly/db:c	(Landroid/database/sqlite/SQLiteDatabase;)Z
    //   54: pop
    //   55: ldc 42
    //   57: aload_1
    //   58: invokestatic 34	u/aly/db:a	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    //   61: ifne +9 -> 70
    //   64: aload_0
    //   65: aload_1
    //   66: invokespecial 44	u/aly/db:b	(Landroid/database/sqlite/SQLiteDatabase;)Z
    //   69: pop
    //   70: ldc 46
    //   72: aload_1
    //   73: invokestatic 34	u/aly/db:a	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    //   76: ifne +9 -> 85
    //   79: aload_0
    //   80: aload_1
    //   81: invokespecial 48	u/aly/db:a	(Landroid/database/sqlite/SQLiteDatabase;)Z
    //   84: pop
    //   85: return
    //   86: astore_1
    //   87: aload_1
    //   88: athrow
    //   89: astore_1
    //   90: return
    //
    // Exception table:
    //   from	to	target	type
    //   26	49	86	finally
    //   49	55	86	finally
    //   55	70	86	finally
    //   70	85	86	finally
    //   26	49	89	java/lang/Exception
    //   49	55	89	java/lang/Exception
    //   55	70	89	java/lang/Exception
    //   70	85	89	java/lang/Exception
  }

  private db(Context paramContext, String paramString1, String paramString2)
  {
    this(new ee(paramContext, paramString1), paramString2);
  }

  public static db a(Context paramContext)
  {
    try
    {
      b = paramContext;
      paramContext = dc.a();
      return paramContext;
    }
    finally
    {
      paramContext = finally;
    }
    throw paramContext;
  }

  private boolean a(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      this.a = "create table if not exists limitedck(Id INTEGER primary key autoincrement, ck TEXT unique)";
      paramSQLiteDatabase.execSQL(this.a);
      return true;
    }
    catch (SQLException paramSQLiteDatabase)
    {
      ct.d("create reference table error!");
    }
    return false;
  }

  private static boolean a(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    String str2 = null;
    String str1 = null;
    boolean bool3 = false;
    boolean bool2 = false;
    try
    {
      paramString = paramSQLiteDatabase.rawQuery("select count(*) as c from sqlite_master where type ='table' and name ='" + paramString.trim() + "' ", null);
      boolean bool1 = bool2;
      str1 = paramString;
      str2 = paramString;
      if (paramString.moveToNext())
      {
        str1 = paramString;
        str2 = paramString;
        int i = paramString.getInt(0);
        bool1 = bool2;
        if (i > 0)
          bool1 = true;
      }
      bool2 = bool1;
      if (paramString != null)
      {
        paramString.close();
        bool2 = bool1;
      }
      return bool2;
    }
    catch (Exception paramString)
    {
      bool2 = bool3;
      return false;
    }
    finally
    {
      if (str2 != null)
        str2.close();
    }
    throw paramString;
  }

  private boolean b(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      this.a = "create table if not exists system(Id INTEGER primary key autoincrement, key TEXT, timeStamp INTEGER, count INTEGER)";
      paramSQLiteDatabase.execSQL(this.a);
      return true;
    }
    catch (SQLException paramSQLiteDatabase)
    {
      ct.d("create system table error!");
    }
    return false;
  }

  private boolean c(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      this.a = "create table if not exists aggregated_cache(Id INTEGER primary key autoincrement, key TEXT, totalTimestamp TEXT, value INTEGER, count INTEGER, label TEXT, timeWindowNum TEXT)";
      paramSQLiteDatabase.execSQL(this.a);
      this.a = "create table if not exists aggregated(Id INTEGER primary key autoincrement, key TEXT, totalTimestamp TEXT, value INTEGER, count INTEGER, label TEXT, timeWindowNum TEXT)";
      paramSQLiteDatabase.execSQL(this.a);
      return true;
    }
    catch (SQLException paramSQLiteDatabase)
    {
      ct.d("create aggregated table error!");
    }
    return false;
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.beginTransaction();
      c(paramSQLiteDatabase);
      b(paramSQLiteDatabase);
      a(paramSQLiteDatabase);
      paramSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      paramSQLiteDatabase.endTransaction();
    }
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.db
 * JD-Core Version:    0.6.2
 */