package retrofit;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class Types$GenericArrayTypeImpl
  implements GenericArrayType
{
  private final Type componentType;

  public Types$GenericArrayTypeImpl(Type paramType)
  {
    this.componentType = paramType;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof GenericArrayType)) && (Types.equals(this, (GenericArrayType)paramObject));
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
    return Types.typeToString(this.componentType) + "[]";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Types.GenericArrayTypeImpl
 * JD-Core Version:    0.6.2
 */