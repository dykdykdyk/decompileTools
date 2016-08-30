package com.facebook.widget;

public enum LikeView$HorizontalAlignment
{
  CENTER("center", 0), LEFT("left", 1), RIGHT("right", 2);

  static HorizontalAlignment DEFAULT = CENTER;
  private int intValue;
  private String stringValue;

  private LikeView$HorizontalAlignment(String paramString, int paramInt)
  {
    this.stringValue = paramString;
    this.intValue = paramInt;
  }

  static HorizontalAlignment fromInt(int paramInt)
  {
    HorizontalAlignment[] arrayOfHorizontalAlignment = values();
    int j = arrayOfHorizontalAlignment.length;
    int i = 0;
    while (i < j)
    {
      HorizontalAlignment localHorizontalAlignment = arrayOfHorizontalAlignment[i];
      if (localHorizontalAlignment.getValue() == paramInt)
        return localHorizontalAlignment;
      i += 1;
    }
    return null;
  }

  private int getValue()
  {
    return this.intValue;
  }

  public final String toString()
  {
    return this.stringValue;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.LikeView.HorizontalAlignment
 * JD-Core Version:    0.6.2
 */