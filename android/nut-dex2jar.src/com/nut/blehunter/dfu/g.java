package com.nut.blehunter.dfu;

import android.os.AsyncTask;
import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class g extends AsyncTask<String, Integer, String>
{
  private String a(String[] paramArrayOfString)
  {
    if (isCancelled())
      return paramArrayOfString[1];
    FileOutputStream localFileOutputStream;
    try
    {
      Object localObject = (HttpURLConnection)new URL(paramArrayOfString[0]).openConnection();
      ((HttpURLConnection)localObject).setConnectTimeout(20000);
      ((HttpURLConnection)localObject).setRequestMethod("GET");
      ((HttpURLConnection)localObject).connect();
      if (((HttpURLConnection)localObject).getResponseCode() == 200)
      {
        int i = ((HttpURLConnection)localObject).getContentLength();
        localObject = new BufferedInputStream(((HttpURLConnection)localObject).getInputStream());
        localFileOutputStream = new FileOutputStream(paramArrayOfString[1]);
        byte[] arrayOfByte = new byte[1024];
        long l = 0L;
        while (true)
        {
          int j = ((InputStream)localObject).read(arrayOfByte);
          if (j == -1)
            break;
          l += j;
          publishProgress(new Integer[] { Integer.valueOf((int)(100L * l / i)) });
          localFileOutputStream.write(arrayOfByte, 0, j);
        }
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    while (true)
    {
      return paramArrayOfString[1];
      localFileOutputStream.flush();
      localFileOutputStream.close();
      localIOException.close();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.dfu.g
 * JD-Core Version:    0.6.2
 */