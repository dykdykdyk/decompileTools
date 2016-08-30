package com.tencent.a.a.a.a;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

final class b extends f
{
  b(Context paramContext)
  {
    super(paramContext);
  }

  protected final void a(String paramString)
  {
    try
    {
      Log.i("MID", "write mid to InternalStorage");
      a.a(Environment.getExternalStorageDirectory() + "/" + h.c("6X8Y4XdM2Vhvn0I="));
      Object localObject = new File(Environment.getExternalStorageDirectory(), h.c("6X8Y4XdM2Vhvn0KfzcEatGnWaNU="));
      try
      {
        localObject = new BufferedWriter(new FileWriter((File)localObject));
        ((BufferedWriter)localObject).write(h.c("4kU71lN96TJUomD1vOU9lgj9Tw==") + "," + paramString);
        ((BufferedWriter)localObject).write("\n");
        ((BufferedWriter)localObject).close();
        return;
      }
      catch (Exception paramString)
      {
        while (true)
          Log.w("MID", paramString);
      }
    }
    finally
    {
    }
    throw paramString;
  }

  protected final boolean a()
  {
    return (h.a(this.a, "android.permission.WRITE_EXTERNAL_STORAGE")) && (Environment.getExternalStorageState().equals("mounted"));
  }

  protected final String b()
  {
    while (true)
    {
      try
      {
        Log.i("MID", "read mid from InternalStorage");
        Object localObject1 = new File(Environment.getExternalStorageDirectory(), h.c("6X8Y4XdM2Vhvn0KfzcEatGnWaNU="));
        try
        {
          localObject1 = a.a((File)localObject1).iterator();
          if (((Iterator)localObject1).hasNext())
          {
            String[] arrayOfString = ((String)((Iterator)localObject1).next()).split(",");
            if ((arrayOfString.length != 2) || (!arrayOfString[0].equals(h.c("4kU71lN96TJUomD1vOU9lgj9Tw=="))))
              continue;
            Log.i("MID", "read mid from InternalStorage:" + arrayOfString[1]);
            localObject1 = arrayOfString[1];
            return localObject1;
          }
        }
        catch (IOException localIOException)
        {
          Log.w("MID", localIOException);
          Object localObject2 = null;
          continue;
        }
      }
      finally
      {
      }
      Object localObject4 = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.a.a.a.a.b
 * JD-Core Version:    0.6.2
 */