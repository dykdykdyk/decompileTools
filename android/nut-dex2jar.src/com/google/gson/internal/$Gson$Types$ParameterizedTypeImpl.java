package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

final class $Gson$Types$ParameterizedTypeImpl
  implements Serializable, ParameterizedType
{
  private static final long serialVersionUID = 0L;
  private final Type ownerType;
  private final Type rawType;
  private final Type[] typeArguments;

  public $Gson$Types$ParameterizedTypeImpl(Type paramType1, Type paramType2, Type[] paramArrayOfType)
  {
    int i;
    boolean bool;
    if ((paramType2 instanceof Class))
    {
      Class localClass = (Class)paramType2;
      if ((Modifier.isStatic(localClass.getModifiers())) || (localClass.getEnclosingClass() == null))
      {
        i = 1;
        if ((paramType1 == null) && (i == 0))
          break label156;
        bool = true;
        label54: .Gson.Preconditions.checkArgument(bool);
      }
    }
    else
    {
      if (paramType1 != null)
        break label162;
    }
    label156: label162: for (paramType1 = null; ; paramType1 = .Gson.Types.canonicalize(paramType1))
    {
      this.ownerType = paramType1;
      this.rawType = .Gson.Types.canonicalize(paramType2);
      this.typeArguments = ((Type[])paramArrayOfType.clone());
      i = j;
      while (i < this.typeArguments.length)
      {
        .Gson.Preconditions.checkNotNull(this.typeArguments[i]);
        .Gson.Types.checkNotPrimitive(this.typeArguments[i]);
        this.typeArguments[i] = .Gson.Types.canonicalize(this.typeArguments[i]);
        i += 1;
      }
      i = 0;
      break;
      bool = false;
      break label54;
    }
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ParameterizedType)) && (.Gson.Types.equals(this, (ParameterizedType)paramObject));
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
    return Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode() ^ .Gson.Types.hashCodeOrZero(this.ownerType);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder((this.typeArguments.length + 1) * 30);
    localStringBuilder.append(.Gson.Types.typeToString(this.rawType));
    if (this.typeArguments.length == 0)
      return localStringBuilder.toString();
    localStringBuilder.append("<").append(.Gson.Types.typeToString(this.typeArguments[0]));
    int i = 1;
    while (i < this.typeArguments.length)
    {
      localStringBuilder.append(", ").append(.Gson.Types.typeToString(this.typeArguments[i]));
      i += 1;
    }
    return ">";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal..Gson.Types.ParameterizedTypeImpl
 * JD-Core Version:    0.6.2
 */