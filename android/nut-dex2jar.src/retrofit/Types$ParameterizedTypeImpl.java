package retrofit;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

final class Types$ParameterizedTypeImpl
  implements ParameterizedType
{
  private final Type ownerType;
  private final Type rawType;
  private final Type[] typeArguments;

  public Types$ParameterizedTypeImpl(Type paramType1, Type paramType2, Type[] paramArrayOfType)
  {
    if ((paramType2 instanceof Class))
    {
      if (paramType1 == null)
      {
        i = 1;
        if (((Class)paramType2).getEnclosingClass() != null)
          break label55;
      }
      while (true)
      {
        if (i == j)
          break label61;
        throw new IllegalArgumentException();
        i = 0;
        break;
        label55: j = 0;
      }
    }
    label61: this.ownerType = paramType1;
    this.rawType = paramType2;
    this.typeArguments = ((Type[])paramArrayOfType.clone());
    paramType1 = this.typeArguments;
    j = paramType1.length;
    int i = k;
    while (i < j)
    {
      paramType2 = paramType1[i];
      if (paramType2 == null)
        throw new NullPointerException();
      Types.access$000(paramType2);
      i += 1;
    }
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ParameterizedType)) && (Types.equals(this, (ParameterizedType)paramObject));
  }

  public final Type[] getActualTypeArguments()
  {
    return (Type[])this.typeArguments.clone();
  }

  public final Type getOwnerType()
  {
    return this.ownerType;
  }

  public final Type getRawType()
  {
    return this.rawType;
  }

  public final int hashCode()
  {
    return Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode() ^ Types.access$100(this.ownerType);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder((this.typeArguments.length + 1) * 30);
    localStringBuilder.append(Types.typeToString(this.rawType));
    if (this.typeArguments.length == 0)
      return localStringBuilder.toString();
    localStringBuilder.append("<").append(Types.typeToString(this.typeArguments[0]));
    int i = 1;
    while (i < this.typeArguments.length)
    {
      localStringBuilder.append(", ").append(Types.typeToString(this.typeArguments[i]));
      i += 1;
    }
    return ">";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Types.ParameterizedTypeImpl
 * JD-Core Version:    0.6.2
 */