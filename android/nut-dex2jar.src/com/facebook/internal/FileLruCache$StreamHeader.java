package com.facebook.internal;

import com.facebook.LoggingBehavior;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

final class FileLruCache$StreamHeader
{
  private static final int HEADER_VERSION = 0;

  static JSONObject readHeader(InputStream paramInputStream)
    throws IOException
  {
    int k = 0;
    if (paramInputStream.read() != 0)
      return null;
    int j = 0;
    int i = 0;
    while (j < 3)
    {
      int m = paramInputStream.read();
      if (m == -1)
      {
        Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read returned -1 while reading header size");
        return null;
      }
      i = (i << 8) + (m & 0xFF);
      j += 1;
    }
    byte[] arrayOfByte = new byte[i];
    j = k;
    while (j < i)
    {
      k = paramInputStream.read(arrayOfByte, j, i - j);
      if (k <= 0)
      {
        Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read stopped at " + Integer.valueOf(j) + " when expected " + i);
        return null;
      }
      j += k;
    }
    paramInputStream = new JSONTokener(new String(arrayOfByte));
    try
    {
      paramInputStream = paramInputStream.nextValue();
      if (!(paramInputStream instanceof JSONObject))
      {
        Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: expected JSONObject, got " + paramInputStream.getClass().getCanonicalName());
        return null;
      }
      paramInputStream = (JSONObject)paramInputStream;
      return paramInputStream;
    }
    catch (JSONException paramInputStream)
    {
    }
    throw new IOException(paramInputStream.getMessage());
  }

  static void writeHeader(OutputStream paramOutputStream, JSONObject paramJSONObject)
    throws IOException
  {
    paramJSONObject = paramJSONObject.toString().getBytes();
    paramOutputStream.write(0);
    paramOutputStream.write(paramJSONObject.length >> 16 & 0xFF);
    paramOutputStream.write(paramJSONObject.length >> 8 & 0xFF);
    paramOutputStream.write(paramJSONObject.length >> 0 & 0xFF);
    paramOutputStream.write(paramJSONObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.FileLruCache.StreamHeader
 * JD-Core Version:    0.6.2
 */