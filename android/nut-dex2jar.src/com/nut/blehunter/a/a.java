package com.nut.blehunter.a;

import android.content.Context;
import com.nut.blehunter.rxApi.service.UploadFileService;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import okhttp3.ai;
import okhttp3.al;
import okhttp3.av;
import rx.h;
import rx.schedulers.Schedulers;

public final class a
{
  public static void a(Context paramContext, String paramString)
  {
    paramContext = new File(paramContext.getFilesDir() + "/log" + File.separator + "behavious.txt");
    try
    {
      paramContext = new BufferedOutputStream(new FileOutputStream(paramContext, true));
      paramContext.write(paramString.getBytes());
      paramContext.close();
      return;
    }
    catch (FileNotFoundException paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  public static void a(String paramString)
  {
    Object localObject = new File(paramString);
    av localav = av.create(ai.a("multipart/form-data"), (File)localObject);
    localObject = al.a("file", ((File)localObject).getName(), localav);
    com.nut.blehunter.rxApi.a.d().uploadFile(null, "LOG", (al)localObject).b(Schedulers.io()).a(new b(paramString));
  }

  static boolean a(String paramString1, String paramString2)
  {
    paramString1 = new File(paramString1);
    if (paramString1.exists())
      try
      {
        FileInputStream localFileInputStream = new FileInputStream(paramString1);
        paramString1 = new byte[localFileInputStream.available()];
        localFileInputStream.read(paramString1);
        localFileInputStream.close();
        paramString2 = new ZipOutputStream(new FileOutputStream(paramString2));
        paramString2.putNextEntry(new ZipEntry("behavious.txt"));
        paramString2.write(paramString1);
        paramString2.close();
        return true;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
      }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.a.a
 * JD-Core Version:    0.6.2
 */