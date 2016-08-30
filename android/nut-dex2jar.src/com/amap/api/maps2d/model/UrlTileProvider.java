package com.amap.api.maps2d.model;

import com.amap.api.mapcore2d.cx;
import com.amap.api.mapcore2d.cz;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

public abstract class UrlTileProvider
  implements TileProvider
{
  private final int a;
  private final int b;

  public UrlTileProvider(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  private static long a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte[4096];
    int i;
    for (long l = 0L; ; l += i)
    {
      i = paramInputStream.read(arrayOfByte);
      if (i == -1)
        break;
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    return l;
  }

  private static byte[] a(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }

  public final Tile getTile(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject = getTileUrl(paramInt1, paramInt2, paramInt3);
    if (localObject == null)
      return NO_TILE;
    cx.a("UrlTileProvider", "url: " + ((URL)localObject).toString(), 111);
    try
    {
      localObject = new Tile(this.a, this.b, a(((URL)localObject).openStream()));
      return localObject;
    }
    catch (IOException localIOException)
    {
      cz.a(localIOException, "UrlTileProvider", "getTile");
    }
    return NO_TILE;
  }

  public int getTileHeight()
  {
    return this.b;
  }

  public abstract URL getTileUrl(int paramInt1, int paramInt2, int paramInt3);

  public int getTileWidth()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.UrlTileProvider
 * JD-Core Version:    0.6.2
 */