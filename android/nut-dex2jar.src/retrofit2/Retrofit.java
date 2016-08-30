package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import okhttp3.ad;
import okhttp3.av;
import okhttp3.bb;
import okhttp3.h;

public final class Retrofit
{
  private final List<CallAdapter.Factory> adapterFactories;
  private final ad baseUrl;
  private final h callFactory;
  private final Executor callbackExecutor;
  private final List<Converter.Factory> converterFactories;
  private final Map<Method, ServiceMethod> serviceMethodCache = new LinkedHashMap();
  private final boolean validateEagerly;

  Retrofit(h paramh, ad paramad, List<Converter.Factory> paramList, List<CallAdapter.Factory> paramList1, Executor paramExecutor, boolean paramBoolean)
  {
    this.callFactory = paramh;
    this.baseUrl = paramad;
    this.converterFactories = Collections.unmodifiableList(paramList);
    this.adapterFactories = Collections.unmodifiableList(paramList1);
    this.callbackExecutor = paramExecutor;
    this.validateEagerly = paramBoolean;
  }

  private void eagerlyValidateMethods(Class<?> paramClass)
  {
    Platform localPlatform = Platform.get();
    paramClass = paramClass.getDeclaredMethods();
    int j = paramClass.length;
    int i = 0;
    while (i < j)
    {
      Method localMethod = paramClass[i];
      if (!localPlatform.isDefaultMethod(localMethod))
        loadServiceMethod(localMethod);
      i += 1;
    }
  }

  public final ad baseUrl()
  {
    return this.baseUrl;
  }

  public final CallAdapter<?> callAdapter(Type paramType, Annotation[] paramArrayOfAnnotation)
  {
    return nextCallAdapter(null, paramType, paramArrayOfAnnotation);
  }

  public final List<CallAdapter.Factory> callAdapterFactories()
  {
    return this.adapterFactories;
  }

  public final h callFactory()
  {
    return this.callFactory;
  }

  public final Executor callbackExecutor()
  {
    return this.callbackExecutor;
  }

  public final List<Converter.Factory> converterFactories()
  {
    return this.converterFactories;
  }

  public final <T> T create(Class<T> paramClass)
  {
    Utils.validateServiceInterface(paramClass);
    if (this.validateEagerly)
      eagerlyValidateMethods(paramClass);
    ClassLoader localClassLoader = paramClass.getClassLoader();
    Retrofit.1 local1 = new Retrofit.1(this, paramClass);
    return Proxy.newProxyInstance(localClassLoader, new Class[] { paramClass }, local1);
  }

  final ServiceMethod loadServiceMethod(Method paramMethod)
  {
    synchronized (this.serviceMethodCache)
    {
      ServiceMethod localServiceMethod2 = (ServiceMethod)this.serviceMethodCache.get(paramMethod);
      ServiceMethod localServiceMethod1 = localServiceMethod2;
      if (localServiceMethod2 == null)
      {
        localServiceMethod1 = new ServiceMethod.Builder(this, paramMethod).build();
        this.serviceMethodCache.put(paramMethod, localServiceMethod1);
      }
      return localServiceMethod1;
    }
  }

  public final CallAdapter<?> nextCallAdapter(CallAdapter.Factory paramFactory, Type paramType, Annotation[] paramArrayOfAnnotation)
  {
    Utils.checkNotNull(paramType, "returnType == null");
    Utils.checkNotNull(paramArrayOfAnnotation, "annotations == null");
    int i = this.adapterFactories.indexOf(paramFactory) + 1;
    int k = this.adapterFactories.size();
    int j = i;
    while (j < k)
    {
      CallAdapter localCallAdapter = ((CallAdapter.Factory)this.adapterFactories.get(j)).get(paramType, paramArrayOfAnnotation, this);
      if (localCallAdapter != null)
        return localCallAdapter;
      j += 1;
    }
    paramType = new StringBuilder("Could not locate call adapter for ").append(paramType).append(".\n");
    if (paramFactory != null)
    {
      paramType.append("  Skipped:");
      j = 0;
      while (j < i)
      {
        paramType.append("\n   * ").append(((CallAdapter.Factory)this.adapterFactories.get(j)).getClass().getName());
        j += 1;
      }
      paramType.append('\n');
    }
    paramType.append("  Tried:");
    j = this.adapterFactories.size();
    while (i < j)
    {
      paramType.append("\n   * ").append(((CallAdapter.Factory)this.adapterFactories.get(i)).getClass().getName());
      i += 1;
    }
    throw new IllegalArgumentException(paramType.toString());
  }

  public final <T> Converter<T, av> nextRequestBodyConverter(Converter.Factory paramFactory, Type paramType, Annotation[] paramArrayOfAnnotation1, Annotation[] paramArrayOfAnnotation2)
  {
    Utils.checkNotNull(paramType, "type == null");
    Utils.checkNotNull(paramArrayOfAnnotation1, "parameterAnnotations == null");
    Utils.checkNotNull(paramArrayOfAnnotation2, "methodAnnotations == null");
    int i = this.converterFactories.indexOf(paramFactory) + 1;
    int k = this.converterFactories.size();
    int j = i;
    while (j < k)
    {
      Converter localConverter = ((Converter.Factory)this.converterFactories.get(j)).requestBodyConverter(paramType, paramArrayOfAnnotation1, paramArrayOfAnnotation2, this);
      if (localConverter != null)
        return localConverter;
      j += 1;
    }
    paramType = new StringBuilder("Could not locate RequestBody converter for ").append(paramType).append(".\n");
    if (paramFactory != null)
    {
      paramType.append("  Skipped:");
      j = 0;
      while (j < i)
      {
        paramType.append("\n   * ").append(((Converter.Factory)this.converterFactories.get(j)).getClass().getName());
        j += 1;
      }
      paramType.append('\n');
    }
    paramType.append("  Tried:");
    j = this.converterFactories.size();
    while (i < j)
    {
      paramType.append("\n   * ").append(((Converter.Factory)this.converterFactories.get(i)).getClass().getName());
      i += 1;
    }
    throw new IllegalArgumentException(paramType.toString());
  }

  public final <T> Converter<bb, T> nextResponseBodyConverter(Converter.Factory paramFactory, Type paramType, Annotation[] paramArrayOfAnnotation)
  {
    Utils.checkNotNull(paramType, "type == null");
    Utils.checkNotNull(paramArrayOfAnnotation, "annotations == null");
    int i = this.converterFactories.indexOf(paramFactory) + 1;
    int k = this.converterFactories.size();
    int j = i;
    while (j < k)
    {
      Converter localConverter = ((Converter.Factory)this.converterFactories.get(j)).responseBodyConverter(paramType, paramArrayOfAnnotation, this);
      if (localConverter != null)
        return localConverter;
      j += 1;
    }
    paramType = new StringBuilder("Could not locate ResponseBody converter for ").append(paramType).append(".\n");
    if (paramFactory != null)
    {
      paramType.append("  Skipped:");
      j = 0;
      while (j < i)
      {
        paramType.append("\n   * ").append(((Converter.Factory)this.converterFactories.get(j)).getClass().getName());
        j += 1;
      }
      paramType.append('\n');
    }
    paramType.append("  Tried:");
    j = this.converterFactories.size();
    while (i < j)
    {
      paramType.append("\n   * ").append(((Converter.Factory)this.converterFactories.get(i)).getClass().getName());
      i += 1;
    }
    throw new IllegalArgumentException(paramType.toString());
  }

  public final <T> Converter<T, av> requestBodyConverter(Type paramType, Annotation[] paramArrayOfAnnotation1, Annotation[] paramArrayOfAnnotation2)
  {
    return nextRequestBodyConverter(null, paramType, paramArrayOfAnnotation1, paramArrayOfAnnotation2);
  }

  public final <T> Converter<bb, T> responseBodyConverter(Type paramType, Annotation[] paramArrayOfAnnotation)
  {
    return nextResponseBodyConverter(null, paramType, paramArrayOfAnnotation);
  }

  public final <T> Converter<T, String> stringConverter(Type paramType, Annotation[] paramArrayOfAnnotation)
  {
    Utils.checkNotNull(paramType, "type == null");
    Utils.checkNotNull(paramArrayOfAnnotation, "annotations == null");
    int j = this.converterFactories.size();
    int i = 0;
    while (i < j)
    {
      Converter localConverter = ((Converter.Factory)this.converterFactories.get(i)).stringConverter(paramType, paramArrayOfAnnotation, this);
      if (localConverter != null)
        return localConverter;
      i += 1;
    }
    return BuiltInConverters.ToStringConverter.INSTANCE;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Retrofit
 * JD-Core Version:    0.6.2
 */