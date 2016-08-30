package retrofit2;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

final class Utils$WildcardTypeImpl
  implements WildcardType
{
  private final Type lowerBound;
  private final Type upperBound;

  public Utils$WildcardTypeImpl(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
  {
    if (paramArrayOfType2.length > 1)
      throw new IllegalArgumentException();
    if (paramArrayOfType1.length != 1)
      throw new IllegalArgumentException();
    if (paramArrayOfType2.length == 1)
    {
      if (paramArrayOfType2[0] == null)
        throw new NullPointerException();
      Utils.checkNotPrimitive(paramArrayOfType2[0]);
      if (paramArrayOfType1[0] != Object.class)
        throw new IllegalArgumentException();
      this.lowerBound = paramArrayOfType2[0];
      this.upperBound = Object.class;
      return;
    }
    if (paramArrayOfType1[0] == null)
      throw new NullPointerException();
    Utils.checkNotPrimitive(paramArrayOfType1[0]);
    this.lowerBound = null;
    this.upperBound = paramArrayOfType1[0];
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof WildcardType)) && (Utils.equals(this, (WildcardType)paramObject));
  }

  public final Type[] getLowerBounds()
  {
    if (this.lowerBound != null)
      return new Type[] { this.lowerBound };
    return Utils.EMPTY_TYPE_ARRAY;
  }

  public final Type[] getUpperBounds()
  {
    return new Type[] { this.upperBound };
  }

  public final int hashCode()
  {
    if (this.lowerBound != null);
    for (int i = this.lowerBound.hashCode() + 31; ; i = 1)
      return i ^ this.upperBound.hashCode() + 31;
  }

  public final String toString()
  {
    if (this.lowerBound != null)
      return "? super " + Utils.typeToString(this.lowerBound);
    if (this.upperBound == Object.class)
      return "?";
    return "? extends " + Utils.typeToString(this.upperBound);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Utils.WildcardTypeImpl
 * JD-Core Version:    0.6.2
 */