package com.facebook.model;

import com.facebook.FacebookGraphObjectException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

abstract class GraphObject$Factory$ProxyBase<STATE>
  implements InvocationHandler
{
  private static final String EQUALS_METHOD = "equals";
  private static final String TOSTRING_METHOD = "toString";
  protected final STATE state;

  protected GraphObject$Factory$ProxyBase(STATE paramSTATE)
  {
    this.state = paramSTATE;
  }

  protected final Object proxyObjectMethods(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    throws Throwable
  {
    paramObject = paramMethod.getName();
    if (paramObject.equals("equals"))
    {
      paramObject = paramArrayOfObject[0];
      if (paramObject == null)
        return Boolean.valueOf(false);
      paramObject = Proxy.getInvocationHandler(paramObject);
      if (!(paramObject instanceof GraphObject.Factory.GraphObjectProxy))
        return Boolean.valueOf(false);
      paramObject = (GraphObject.Factory.GraphObjectProxy)paramObject;
      return Boolean.valueOf(this.state.equals(paramObject.state));
    }
    if (paramObject.equals("toString"))
      return toString();
    return paramMethod.invoke(this.state, paramArrayOfObject);
  }

  protected final Object throwUnexpectedMethodSignature(Method paramMethod)
  {
    throw new FacebookGraphObjectException(getClass().getName() + " got an unexpected method signature: " + paramMethod.toString());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.model.GraphObject.Factory.ProxyBase
 * JD-Core Version:    0.6.2
 */