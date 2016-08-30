package android.support.v7.widget;

import android.content.ComponentName;
import java.math.BigDecimal;

public final class aa
{
  public final ComponentName a;
  public final long b;
  public final float c;

  public aa(ComponentName paramComponentName, long paramLong, float paramFloat)
  {
    this.a = paramComponentName;
    this.b = paramLong;
    this.c = paramFloat;
  }

  public aa(String paramString, long paramLong, float paramFloat)
  {
    this(ComponentName.unflattenFromString(paramString), paramLong, paramFloat);
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      paramObject = (aa)paramObject;
      if (this.a == null)
      {
        if (paramObject.a != null)
          return false;
      }
      else if (!this.a.equals(paramObject.a))
        return false;
      if (this.b != paramObject.b)
        return false;
    }
    while (Float.floatToIntBits(this.c) == Float.floatToIntBits(paramObject.c));
    return false;
  }

  public final int hashCode()
  {
    if (this.a == null);
    for (int i = 0; ; i = this.a.hashCode())
      return ((i + 31) * 31 + (int)(this.b ^ this.b >>> 32)) * 31 + Float.floatToIntBits(this.c);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("; activity:").append(this.a);
    localStringBuilder.append("; time:").append(this.b);
    localStringBuilder.append("; weight:").append(new BigDecimal(this.c));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aa
 * JD-Core Version:    0.6.2
 */