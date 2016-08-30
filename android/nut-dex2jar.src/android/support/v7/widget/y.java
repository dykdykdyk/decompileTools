package android.support.v7.widget;

import android.content.pm.ResolveInfo;
import java.math.BigDecimal;

public final class y
  implements Comparable<y>
{
  public final ResolveInfo a;
  public float b;

  public y(x paramx, ResolveInfo paramResolveInfo)
  {
    this.a = paramResolveInfo;
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
      paramObject = (y)paramObject;
    }
    while (Float.floatToIntBits(this.b) == Float.floatToIntBits(paramObject.b));
    return false;
  }

  public final int hashCode()
  {
    return Float.floatToIntBits(this.b) + 31;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("resolveInfo:").append(this.a.toString());
    localStringBuilder.append("; weight:").append(new BigDecimal(this.b));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.y
 * JD-Core Version:    0.6.2
 */