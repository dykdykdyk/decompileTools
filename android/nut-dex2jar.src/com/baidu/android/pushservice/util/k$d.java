package com.baidu.android.pushservice.util;

import android.annotation.TargetApi;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build.VERSION;
import com.baidu.android.pushservice.h.a;
import java.io.File;

class k$d
  implements DatabaseErrorHandler
{
  @TargetApi(16)
  private void a(String paramString)
  {
    if ((paramString.equalsIgnoreCase(":memory:")) || (paramString.trim().length() == 0))
      return;
    a.e("PushDatabase", "deleting the database file: " + paramString);
    try
    {
      if (Build.VERSION.SDK_INT > 18)
      {
        SQLiteDatabase.deleteDatabase(new File(paramString));
        return;
      }
    }
    catch (Exception paramString)
    {
      a.d("PushDatabase", "delete failed: " + paramString.getMessage());
      return;
    }
    new File(paramString).delete();
  }

  // ERROR //
  public void onCorruption(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: ldc 38
    //   2: new 40	java/lang/StringBuilder
    //   5: dup
    //   6: ldc 91
    //   8: invokespecial 44	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_1
    //   12: invokevirtual 94	android/database/sqlite/SQLiteDatabase:getPath	()Ljava/lang/String;
    //   15: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   21: invokestatic 57	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   24: aload_1
    //   25: invokevirtual 97	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   28: ifne +12 -> 40
    //   31: aload_0
    //   32: aload_1
    //   33: invokevirtual 94	android/database/sqlite/SQLiteDatabase:getPath	()Ljava/lang/String;
    //   36: invokespecial 99	com/baidu/android/pushservice/util/k$d:a	(Ljava/lang/String;)V
    //   39: return
    //   40: aconst_null
    //   41: astore_2
    //   42: aload_1
    //   43: invokevirtual 103	android/database/sqlite/SQLiteDatabase:getAttachedDbs	()Ljava/util/List;
    //   46: astore_3
    //   47: aload_3
    //   48: astore_2
    //   49: aload_1
    //   50: invokevirtual 106	android/database/sqlite/SQLiteDatabase:close	()V
    //   53: aload_2
    //   54: ifnull +41 -> 95
    //   57: aload_2
    //   58: invokeinterface 112 1 0
    //   63: astore_1
    //   64: aload_1
    //   65: invokeinterface 117 1 0
    //   70: ifeq -31 -> 39
    //   73: aload_0
    //   74: aload_1
    //   75: invokeinterface 121 1 0
    //   80: checkcast 123	android/util/Pair
    //   83: getfield 127	android/util/Pair:second	Ljava/lang/Object;
    //   86: checkcast 24	java/lang/String
    //   89: invokespecial 99	com/baidu/android/pushservice/util/k$d:a	(Ljava/lang/String;)V
    //   92: goto -28 -> 64
    //   95: aload_0
    //   96: aload_1
    //   97: invokevirtual 94	android/database/sqlite/SQLiteDatabase:getPath	()Ljava/lang/String;
    //   100: invokespecial 99	com/baidu/android/pushservice/util/k$d:a	(Ljava/lang/String;)V
    //   103: return
    //   104: astore_2
    //   105: aconst_null
    //   106: astore_3
    //   107: aload_3
    //   108: ifnull +41 -> 149
    //   111: aload_3
    //   112: invokeinterface 112 1 0
    //   117: astore_1
    //   118: aload_1
    //   119: invokeinterface 117 1 0
    //   124: ifeq +33 -> 157
    //   127: aload_0
    //   128: aload_1
    //   129: invokeinterface 121 1 0
    //   134: checkcast 123	android/util/Pair
    //   137: getfield 127	android/util/Pair:second	Ljava/lang/Object;
    //   140: checkcast 24	java/lang/String
    //   143: invokespecial 99	com/baidu/android/pushservice/util/k$d:a	(Ljava/lang/String;)V
    //   146: goto -28 -> 118
    //   149: aload_0
    //   150: aload_1
    //   151: invokevirtual 94	android/database/sqlite/SQLiteDatabase:getPath	()Ljava/lang/String;
    //   154: invokespecial 99	com/baidu/android/pushservice/util/k$d:a	(Ljava/lang/String;)V
    //   157: aload_2
    //   158: athrow
    //   159: astore_3
    //   160: goto -111 -> 49
    //   163: astore_3
    //   164: goto -111 -> 53
    //   167: astore 4
    //   169: aload_2
    //   170: astore_3
    //   171: aload 4
    //   173: astore_2
    //   174: goto -67 -> 107
    //
    // Exception table:
    //   from	to	target	type
    //   42	47	104	finally
    //   42	47	159	android/database/sqlite/SQLiteException
    //   49	53	163	android/database/sqlite/SQLiteException
    //   49	53	167	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.k.d
 * JD-Core Version:    0.6.2
 */