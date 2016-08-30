package com.squareup.picasso;

import android.graphics.Bitmap;
import java.io.InputStream;

public final class RequestHandler$Result
{
  private final Bitmap bitmap;
  private final int exifOrientation;
  private final Picasso.LoadedFrom loadedFrom;
  private final InputStream stream;

  public RequestHandler$Result(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom)
  {
    this((Bitmap)Utils.checkNotNull(paramBitmap, "bitmap == null"), null, paramLoadedFrom, 0);
  }

  RequestHandler$Result(Bitmap paramBitmap, InputStream paramInputStream, Picasso.LoadedFrom paramLoadedFrom, int paramInt)
  {
    int i;
    if (paramBitmap != null)
    {
      i = 1;
      if (paramInputStream == null)
        break label40;
    }
    while (true)
    {
      if ((j ^ i) != 0)
        break label46;
      throw new AssertionError();
      i = 0;
      break;
      label40: j = 0;
    }
    label46: this.bitmap = paramBitmap;
    this.stream = paramInputStream;
    this.loadedFrom = ((Picasso.LoadedFrom)Utils.checkNotNull(paramLoadedFrom, "loadedFrom == null"));
    this.exifOrientation = paramInt;
  }

  public RequestHandler$Result(InputStream paramInputStream, Picasso.LoadedFrom paramLoadedFrom)
  {
    this(null, (InputStream)Utils.checkNotNull(paramInputStream, "stream == null"), paramLoadedFrom, 0);
  }

  public final Bitmap getBitmap()
  {
    return this.bitmap;
  }

  final int getExifOrientation()
  {
    return this.exifOrientation;
  }

  public final Picasso.LoadedFrom getLoadedFrom()
  {
    return this.loadedFrom;
  }

  public final InputStream getStream()
  {
    return this.stream;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.RequestHandler.Result
 * JD-Core Version:    0.6.2
 */