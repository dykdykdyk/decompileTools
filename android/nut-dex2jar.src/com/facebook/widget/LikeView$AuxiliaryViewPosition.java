package com.facebook.widget;

public enum LikeView$AuxiliaryViewPosition
{
  BOTTOM("bottom", 0), INLINE("inline", 1), TOP("top", 2);

  static AuxiliaryViewPosition DEFAULT = BOTTOM;
  private int intValue;
  private String stringValue;

  private LikeView$AuxiliaryViewPosition(String paramString, int paramInt)
  {
    this.stringValue = paramString;
    this.intValue = paramInt;
  }

  static AuxiliaryViewPosition fromInt(int paramInt)
  {
    AuxiliaryViewPosition[] arrayOfAuxiliaryViewPosition = values();
    int j = arrayOfAuxiliaryViewPosition.length;
    int i = 0;
    while (i < j)
    {
      AuxiliaryViewPosition localAuxiliaryViewPosition = arrayOfAuxiliaryViewPosition[i];
      if (localAuxiliaryViewPosition.getValue() == paramInt)
        return localAuxiliaryViewPosition;
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
 * Qualified Name:     com.facebook.widget.LikeView.AuxiliaryViewPosition
 * JD-Core Version:    0.6.2
 */