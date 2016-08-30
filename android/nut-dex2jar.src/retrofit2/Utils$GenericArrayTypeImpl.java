package retrofit2;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class Utils$GenericArrayTypeImpl
  implements GenericArrayType
{
  private final Type componentType;

  public Utils$GenericArrayTypeImpl(Type paramType)
  {
    this.componentType = paramType;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof GenericArrayType)) && (Utils.equals(this, (GenericArrayType)paramObject));
  }

  public final Type getGenericComponentType()
  {
    return this.componentType;
  }

  public final int hashCode()
  {
    return this.componentType.hashCode();
  }

  public final String toString()
  {
    return Utils.typeToString(this.componentType) + "[]";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Utils.GenericArrayTypeImpl
 * JD-Core Version:    0.6.2
 */