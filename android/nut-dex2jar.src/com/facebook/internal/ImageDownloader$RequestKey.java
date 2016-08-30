package com.facebook.internal;

import java.net.URI;

class ImageDownloader$RequestKey
{
  private static final int HASH_MULTIPLIER = 37;
  private static final int HASH_SEED = 29;
  Object tag;
  URI uri;

  ImageDownloader$RequestKey(URI paramURI, Object paramObject)
  {
    this.uri = paramURI;
    this.tag = paramObject;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if ((paramObject instanceof RequestKey))
      {
        paramObject = (RequestKey)paramObject;
        bool1 = bool2;
        if (paramObject.uri == this.uri)
        {
          bool1 = bool2;
          if (paramObject.tag == this.tag)
            bool1 = true;
        }
      }
    }
    return bool1;
  }

  public int hashCode()
  {
    return (this.uri.hashCode() + 1073) * 37 + this.tag.hashCode();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.ImageDownloader.RequestKey
 * JD-Core Version:    0.6.2
 */