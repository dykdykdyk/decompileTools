package com.facebook;

class FacebookRequestError$Range
{
  private final int end;
  private final int start;

  private FacebookRequestError$Range(int paramInt1, int paramInt2)
  {
    this.start = paramInt1;
    this.end = paramInt2;
  }

  boolean contains(int paramInt)
  {
    return (this.start <= paramInt) && (paramInt <= this.end);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.FacebookRequestError.Range
 * JD-Core Version:    0.6.2
 */