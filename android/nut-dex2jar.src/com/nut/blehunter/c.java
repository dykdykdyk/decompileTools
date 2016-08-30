package com.nut.blehunter;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Environment;
import b.a.a;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public final class c extends AsyncTask<String, Integer, String>
{
  private Context a;
  private ProgressDialog b;

  public c(Context paramContext)
  {
    this.a = paramContext;
    this.b = new ProgressDialog(this.a);
    this.b.setTitle(this.a.getString(2131099861));
    this.b.setIndeterminate(true);
    this.b.setMax(100);
    this.b.setProgressStyle(1);
    this.b.setCancelable(true);
    this.b.setCanceledOnTouchOutside(false);
    this.b.setOnCancelListener(new d(this));
  }

  private String a(String[] paramArrayOfString)
  {
    if (isCancelled())
      return null;
    Object localObject3 = new StringBuilder();
    Object localObject2;
    Object localObject1;
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      localObject2 = new File(Environment.getExternalStorageDirectory(), "Download/");
      localObject1 = localObject2;
      if (!((File)localObject2).exists())
      {
        ((File)localObject2).mkdir();
        localObject1 = localObject2;
      }
      localObject1 = ((File)localObject1).getAbsolutePath() + "/nut.apk";
    }
    while (true)
      try
      {
        paramArrayOfString = (HttpURLConnection)new URL(paramArrayOfString[0]).openConnection();
        paramArrayOfString.setConnectTimeout(20000);
        paramArrayOfString.setRequestMethod("GET");
        paramArrayOfString.connect();
        if (paramArrayOfString.getResponseCode() != 200)
        {
          a.b("download connection response is " + paramArrayOfString.getResponseMessage(), new Object[0]);
          return null;
          localObject1 = this.a.getFilesDir();
          break;
        }
        int k = paramArrayOfString.getContentLength();
        paramArrayOfString = new BufferedInputStream(paramArrayOfString.getInputStream());
        localObject2 = new FileOutputStream((String)localObject1);
        localObject3 = new byte[1024];
        long l = 0L;
        int i = -1;
        int m = paramArrayOfString.read((byte[])localObject3);
        if (m != -1)
        {
          l += m;
          int j = (int)(100L * l / k);
          if (i != j)
          {
            publishProgress(new Integer[] { Integer.valueOf(j) });
            i = j;
            ((OutputStream)localObject2).write((byte[])localObject3, 0, m);
          }
        }
        else
        {
          ((OutputStream)localObject2).flush();
          ((OutputStream)localObject2).close();
          paramArrayOfString.close();
          return localObject1;
        }
      }
      catch (IOException paramArrayOfString)
      {
        paramArrayOfString.printStackTrace();
        return null;
      }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    if (isCancelled())
      return;
    this.b.show();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.c
 * JD-Core Version:    0.6.2
 */