package retrofit;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;

final class Types
{
  private static final Type[] EMPTY_TYPE_ARRAY = new Type[0];

  private static void checkNotPrimitive(Type paramType)
  {
    if (((paramType instanceof Class)) && (((Class)paramType).isPrimitive()))
      throw new IllegalArgumentException();
  }

  private static Class<?> declaringClassOf(TypeVariable<?> paramTypeVariable)
  {
    paramTypeVariable = paramTypeVariable.getGenericDeclaration();
    if ((paramTypeVariable instanceof Class))
      return (Class)paramTypeVariable;
    return null;
  }

  private static boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }

  public static boolean equals(Type paramType1, Type paramType2)
  {
    Type localType = paramType1;
    for (paramType1 = paramType2; ; paramType1 = paramType1.getGenericComponentType())
    {
      if (localType == paramType1)
        return true;
      if ((localType instanceof Class))
        return localType.equals(paramType1);
      if ((localType instanceof ParameterizedType))
      {
        if (!(paramType1 instanceof ParameterizedType))
          return false;
        paramType2 = (ParameterizedType)localType;
        paramType1 = (ParameterizedType)paramType1;
        return (equal(paramType2.getOwnerType(), paramType1.getOwnerType())) && (paramType2.getRawType().equals(paramType1.getRawType())) && (Arrays.equals(paramType2.getActualTypeArguments(), paramType1.getActualTypeArguments()));
      }
      if (!(localType instanceof GenericArrayType))
        break;
      if (!(paramType1 instanceof GenericArrayType))
        return false;
      paramType2 = (GenericArrayType)localType;
      paramType1 = (GenericArrayType)paramType1;
      localType = paramType2.getGenericComponentType();
    }
    if ((localType instanceof WildcardType))
    {
      if (!(paramType1 instanceof WildcardType))
        return false;
      paramType2 = (WildcardType)localType;
      paramType1 = (WildcardType)paramType1;
      return (Arrays.equals(paramType2.getUpperBounds(), paramType1.getUpperBounds())) && (Arrays.equals(paramType2.getLowerBounds(), paramType1.getLowerBounds()));
    }
    if ((localType instanceof TypeVariable))
    {
      if (!(paramType1 instanceof TypeVariable))
        return false;
      paramType2 = (TypeVariable)localType;
      paramType1 = (TypeVariable)paramType1;
      return (paramType2.getGenericDeclaration() == paramType1.getGenericDeclaration()) && (paramType2.getName().equals(paramType1.getName()));
    }
    return false;
  }

  static Type getGenericSupertype(Type paramType, Class<?> paramClass1, Class<?> paramClass2)
  {
    Object localObject = paramClass1;
    paramClass1 = paramType;
    paramType = (Type)localObject;
    if (paramClass2 == paramType);
    label13: label89: 
    do
    {
      return paramClass1;
      if (paramClass2.isInterface())
      {
        localObject = paramType.getInterfaces();
        int i = 0;
        int j = localObject.length;
        while (true)
        {
          if (i >= j)
            break label89;
          if (localObject[i] == paramClass2)
            return paramType.getGenericInterfaces()[i];
          if (paramClass2.isAssignableFrom(localObject[i]))
          {
            paramClass1 = paramType.getGenericInterfaces()[i];
            paramType = localObject[i];
            break;
          }
          i += 1;
        }
      }
      paramClass1 = paramClass2;
    }
    while (paramType.isInterface());
    while (true)
    {
      paramClass1 = paramClass2;
      if (paramType == Object.class)
        break label13;
      paramClass1 = paramType.getSuperclass();
      if (paramClass1 == paramClass2)
        return paramType.getGenericSuperclass();
      if (paramClass2.isAssignableFrom(paramClass1))
      {
        localObject = paramType.getGenericSuperclass();
        paramType = paramClass1;
        paramClass1 = (Class<?>)localObject;
        break;
      }
      paramType = paramClass1;
    }
  }

  public static Class<?> getRawType(Type paramType)
  {
    while (true)
    {
      if ((paramType instanceof Class))
        return (Class)paramType;
      if ((paramType instanceof ParameterizedType))
      {
        paramType = ((ParameterizedType)paramType).getRawType();
        if (!(paramType instanceof Class))
          throw new IllegalArgumentException();
        return (Class)paramType;
      }
      if ((paramType instanceof GenericArrayType))
        return Array.newInstance(getRawType(((GenericArrayType)paramType).getGenericComponentType()), 0).getClass();
      if ((paramType instanceof TypeVariable))
        return Object.class;
      if (!(paramType instanceof WildcardType))
        break;
      paramType = ((WildcardType)paramType).getUpperBounds()[0];
    }
    if (paramType == null);
    for (String str = "null"; ; str = paramType.getClass().getName())
      throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + paramType + "> is of type " + str);
  }

  public static Type getSupertype(Type paramType, Class<?> paramClass1, Class<?> paramClass2)
  {
    if (!paramClass2.isAssignableFrom(paramClass1))
      throw new IllegalArgumentException();
    return resolve(paramType, paramClass1, getGenericSupertype(paramType, paramClass1, paramClass2));
  }

  private static int hashCodeOrZero(Object paramObject)
  {
    if (paramObject != null)
      return paramObject.hashCode();
    return 0;
  }

  private static int indexOf(Object[] paramArrayOfObject, Object paramObject)
  {
    int i = 0;
    while (i < paramArrayOfObject.length)
    {
      if (paramObject.equals(paramArrayOfObject[i]))
        return i;
      i += 1;
    }
    throw new NoSuchElementException();
  }

  public static Type resolve(Type paramType1, Class<?> paramClass, Type paramType2)
  {
    Object localObject1 = paramType2;
    if ((localObject1 instanceof TypeVariable))
    {
      localObject1 = (TypeVariable)localObject1;
      paramType2 = resolveTypeVariable(paramType1, paramClass, (TypeVariable)localObject1);
      if (paramType2 != localObject1);
    }
    label94: Object localObject3;
    label139: label304: 
    do
    {
      do
      {
        Object localObject2;
        do
        {
          do
          {
            int i;
            do
            {
              do
              {
                do
                {
                  return paramType2;
                  localObject1 = paramType2;
                  break;
                  if ((!(localObject1 instanceof Class)) || (!((Class)localObject1).isArray()))
                    break label94;
                  paramType2 = (Class)localObject1;
                  localObject1 = paramType2.getComponentType();
                  paramType1 = resolve(paramType1, paramClass, (Type)localObject1);
                }
                while (localObject1 == paramType1);
                return new Types.GenericArrayTypeImpl(paramType1);
                if (!(localObject1 instanceof GenericArrayType))
                  break label139;
                paramType2 = (GenericArrayType)localObject1;
                localObject1 = paramType2.getGenericComponentType();
                paramType1 = resolve(paramType1, paramClass, (Type)localObject1);
              }
              while (localObject1 == paramType1);
              return new Types.GenericArrayTypeImpl(paramType1);
              if (!(localObject1 instanceof ParameterizedType))
                break label304;
              localObject2 = (ParameterizedType)localObject1;
              paramType2 = ((ParameterizedType)localObject2).getOwnerType();
              localObject3 = resolve(paramType1, paramClass, paramType2);
              if (localObject3 != paramType2);
              for (i = 1; ; i = 0)
              {
                localObject1 = ((ParameterizedType)localObject2).getActualTypeArguments();
                int m = localObject1.length;
                int k = 0;
                while (k < m)
                {
                  Type localType = resolve(paramType1, paramClass, localObject1[k]);
                  int j = i;
                  paramType2 = (Type)localObject1;
                  if (localType != localObject1[k])
                  {
                    j = i;
                    paramType2 = (Type)localObject1;
                    if (i == 0)
                    {
                      paramType2 = (Type[])((Type[])localObject1).clone();
                      j = 1;
                    }
                    paramType2[k] = localType;
                  }
                  k += 1;
                  i = j;
                  localObject1 = paramType2;
                }
              }
              paramType2 = (Type)localObject2;
            }
            while (i == 0);
            return new Types.ParameterizedTypeImpl((Type)localObject3, ((ParameterizedType)localObject2).getRawType(), (Type[])localObject1);
            paramType2 = (Type)localObject1;
          }
          while (!(localObject1 instanceof WildcardType));
          localObject1 = (WildcardType)localObject1;
          localObject2 = ((WildcardType)localObject1).getLowerBounds();
          localObject3 = ((WildcardType)localObject1).getUpperBounds();
          if (localObject2.length != 1)
            break label393;
          paramType1 = resolve(paramType1, paramClass, localObject2[0]);
          paramType2 = (Type)localObject1;
        }
        while (paramType1 == localObject2[0]);
        return new Types.WildcardTypeImpl(new Type[] { Object.class }, new Type[] { paramType1 });
        paramType2 = (Type)localObject1;
      }
      while (localObject3.length != 1);
      paramType1 = resolve(paramType1, paramClass, localObject3[0]);
      paramType2 = (Type)localObject1;
    }
    while (paramType1 == localObject3[0]);
    label393: paramClass = EMPTY_TYPE_ARRAY;
    return new Types.WildcardTypeImpl(new Type[] { paramType1 }, paramClass);
  }

  private static Type resolveTypeVariable(Type paramType, Class<?> paramClass, TypeVariable<?> paramTypeVariable)
  {
    Class localClass = declaringClassOf(paramTypeVariable);
    if (localClass == null);
    do
    {
      return paramTypeVariable;
      paramType = getGenericSupertype(paramType, paramClass, localClass);
    }
    while (!(paramType instanceof ParameterizedType));
    int i = indexOf(localClass.getTypeParameters(), paramTypeVariable);
    return ((ParameterizedType)paramType).getActualTypeArguments()[i];
  }

  public static String typeToString(Type paramType)
  {
    if ((paramType instanceof Class))
      return ((Class)paramType).getName();
    return paramType.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Types
 * JD-Core Version:    0.6.2
 */