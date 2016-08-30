package com.nut.blehunter.d;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.nut.blehunter.NutTrackerApplication;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class d
{
  public static String a(Context paramContext)
  {
    paramContext = paramContext.getExternalCacheDir();
    if (paramContext != null)
      return paramContext.getPath() + File.separator;
    return null;
  }

  public static void a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte[8192];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte, 0, 8192);
      if (i == -1)
        break;
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }

  public static File b(Context paramContext)
  {
    paramContext = a(paramContext);
    if (TextUtils.isEmpty(paramContext))
      return null;
    return new File(paramContext + "temp_image.png");
  }

  public static String c(Context paramContext)
  {
    File localFile;
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      localFile = new File(NutTrackerApplication.a().d);
      paramContext = localFile;
      if (!localFile.exists())
        localFile.mkdir();
    }
    for (paramContext = localFile; ; paramContext = paramContext.getFilesDir())
      return paramContext.getAbsolutePath();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.d
 * JD-Core Version:    0.6.2
 */