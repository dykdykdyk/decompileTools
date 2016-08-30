package retrofit2;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles.Lookup;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

@IgnoreJRERequirement
class Platform$Java8 extends Platform
{
  Object invokeDefaultMethod(Method paramMethod, Class<?> paramClass, Object paramObject, Object[] paramArrayOfObject)
    throws Throwable
  {
    Constructor localConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(new Class[] { Class.class, Integer.TYPE });
    localConstructor.setAccessible(true);
    return ((MethodHandles.Lookup)localConstructor.newInstance(new Object[] { paramClass, Integer.valueOf(-1) })).unreflectSpecial(paramMethod, paramClass).bindTo(paramObject).invokeWithArguments(paramArrayOfObject);
  }

  boolean isDefaultMethod(Method paramMethod)
  {
    return paramMethod.isDefault();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Platform.Java8
 * JD-Core Version:    0.6.2
 */