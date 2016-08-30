package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.ab;
import okhttp3.ac;
import okhttp3.ad;
import okhttp3.ai;
import okhttp3.al;
import okhttp3.az;
import okhttp3.bb;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HEAD;
import retrofit2.http.HTTP;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.Multipart;
import retrofit2.http.OPTIONS;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.Url;

final class ServiceMethod$Builder<T>
{
  CallAdapter<?> callAdapter;
  ai contentType;
  boolean gotBody;
  boolean gotField;
  boolean gotPart;
  boolean gotPath;
  boolean gotQuery;
  boolean gotUrl;
  boolean hasBody;
  ab headers;
  String httpMethod;
  boolean isFormEncoded;
  boolean isMultipart;
  final Method method;
  final Annotation[] methodAnnotations;
  final Annotation[][] parameterAnnotationsArray;
  ParameterHandler<?>[] parameterHandlers;
  final Type[] parameterTypes;
  String relativeUrl;
  Set<String> relativeUrlParamNames;
  Converter<bb, T> responseConverter;
  Type responseType;
  final Retrofit retrofit;

  public ServiceMethod$Builder(Retrofit paramRetrofit, Method paramMethod)
  {
    this.retrofit = paramRetrofit;
    this.method = paramMethod;
    this.methodAnnotations = paramMethod.getAnnotations();
    this.parameterTypes = paramMethod.getGenericParameterTypes();
    this.parameterAnnotationsArray = paramMethod.getParameterAnnotations();
  }

  private CallAdapter<?> createCallAdapter()
  {
    Type localType = this.method.getGenericReturnType();
    if (Utils.hasUnresolvableType(localType))
      throw methodError("Method return type must not include a type variable or wildcard: %s", new Object[] { localType });
    if (localType == Void.TYPE)
      throw methodError("Service methods cannot return void.", new Object[0]);
    Object localObject = this.method.getAnnotations();
    try
    {
      localObject = this.retrofit.callAdapter(localType, (Annotation[])localObject);
      return localObject;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw methodError(localRuntimeException, "Unable to create call adapter for %s", new Object[] { localType });
    }
  }

  private Converter<bb, T> createResponseConverter()
  {
    Object localObject = this.method.getAnnotations();
    try
    {
      localObject = this.retrofit.responseBodyConverter(this.responseType, (Annotation[])localObject);
      return localObject;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw methodError(localRuntimeException, "Unable to create converter for %s", new Object[] { this.responseType });
    }
  }

  private RuntimeException methodError(String paramString, Object[] paramArrayOfObject)
  {
    return methodError(null, paramString, paramArrayOfObject);
  }

  private RuntimeException methodError(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    paramString = String.format(paramString, paramArrayOfObject);
    return new IllegalArgumentException(paramString + "\n    for method " + this.method.getDeclaringClass().getSimpleName() + "." + this.method.getName(), paramThrowable);
  }

  private RuntimeException parameterError(int paramInt, String paramString, Object[] paramArrayOfObject)
  {
    return methodError(paramString + " (parameter #" + (paramInt + 1) + ")", paramArrayOfObject);
  }

  private RuntimeException parameterError(Throwable paramThrowable, int paramInt, String paramString, Object[] paramArrayOfObject)
  {
    return methodError(paramThrowable, paramString + " (parameter #" + (paramInt + 1) + ")", paramArrayOfObject);
  }

  private ab parseHeaders(String[] paramArrayOfString)
  {
    ac localac = new ac();
    int j = paramArrayOfString.length;
    int i = 0;
    if (i < j)
    {
      String str2 = paramArrayOfString[i];
      int k = str2.indexOf(':');
      if ((k == -1) || (k == 0) || (k == str2.length() - 1))
        throw methodError("@Headers value must be in the form \"Name: Value\". Found: \"%s\"", new Object[] { str2 });
      String str1 = str2.substring(0, k);
      str2 = str2.substring(k + 1).trim();
      if ("Content-Type".equalsIgnoreCase(str1))
        this.contentType = ai.a(str2);
      while (true)
      {
        i += 1;
        break;
        localac.a(str1, str2);
      }
    }
    return localac.a();
  }

  private void parseHttpMethodAndPath(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (this.httpMethod != null)
      throw methodError("Only one HTTP method is allowed. Found: %s and %s.", new Object[] { this.httpMethod, paramString1 });
    this.httpMethod = paramString1;
    this.hasBody = paramBoolean;
    if (paramString2.isEmpty())
      return;
    int i = paramString2.indexOf('?');
    if ((i != -1) && (i < paramString2.length() - 1))
    {
      paramString1 = paramString2.substring(i + 1);
      if (ServiceMethod.PARAM_URL_REGEX.matcher(paramString1).find())
        throw methodError("URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", new Object[] { paramString1 });
    }
    this.relativeUrl = paramString2;
    this.relativeUrlParamNames = ServiceMethod.parsePathParameters(paramString2);
  }

  private void parseMethodAnnotation(Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof DELETE))
      parseHttpMethodAndPath("DELETE", ((DELETE)paramAnnotation).value(), false);
    do
    {
      do
      {
        return;
        if ((paramAnnotation instanceof GET))
        {
          parseHttpMethodAndPath("GET", ((GET)paramAnnotation).value(), false);
          return;
        }
        if (!(paramAnnotation instanceof HEAD))
          break;
        parseHttpMethodAndPath("HEAD", ((HEAD)paramAnnotation).value(), false);
      }
      while (Void.class.equals(this.responseType));
      throw methodError("HEAD method must use Void as response type.", new Object[0]);
      if ((paramAnnotation instanceof PATCH))
      {
        parseHttpMethodAndPath("PATCH", ((PATCH)paramAnnotation).value(), true);
        return;
      }
      if ((paramAnnotation instanceof POST))
      {
        parseHttpMethodAndPath("POST", ((POST)paramAnnotation).value(), true);
        return;
      }
      if ((paramAnnotation instanceof PUT))
      {
        parseHttpMethodAndPath("PUT", ((PUT)paramAnnotation).value(), true);
        return;
      }
      if ((paramAnnotation instanceof OPTIONS))
      {
        parseHttpMethodAndPath("OPTIONS", ((OPTIONS)paramAnnotation).value(), false);
        return;
      }
      if ((paramAnnotation instanceof HTTP))
      {
        paramAnnotation = (HTTP)paramAnnotation;
        parseHttpMethodAndPath(paramAnnotation.method(), paramAnnotation.path(), paramAnnotation.hasBody());
        return;
      }
      if ((paramAnnotation instanceof Headers))
      {
        paramAnnotation = ((Headers)paramAnnotation).value();
        if (paramAnnotation.length == 0)
          throw methodError("@Headers annotation is empty.", new Object[0]);
        this.headers = parseHeaders(paramAnnotation);
        return;
      }
      if ((paramAnnotation instanceof Multipart))
      {
        if (this.isFormEncoded)
          throw methodError("Only one encoding annotation is allowed.", new Object[0]);
        this.isMultipart = true;
        return;
      }
    }
    while (!(paramAnnotation instanceof FormUrlEncoded));
    if (this.isMultipart)
      throw methodError("Only one encoding annotation is allowed.", new Object[0]);
    this.isFormEncoded = true;
  }

  private ParameterHandler<?> parseParameter(int paramInt, Type paramType, Annotation[] paramArrayOfAnnotation)
  {
    Object localObject1 = null;
    int j = paramArrayOfAnnotation.length;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = parseParameterAnnotation(paramInt, paramType, paramArrayOfAnnotation, paramArrayOfAnnotation[i]);
      if (localObject2 != null)
      {
        if (localObject1 != null)
          throw parameterError(paramInt, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
      }
      else
        localObject2 = localObject1;
      i += 1;
      localObject1 = localObject2;
    }
    if (localObject1 == null)
      throw parameterError(paramInt, "No Retrofit annotation found.", new Object[0]);
    return localObject1;
  }

  private ParameterHandler<?> parseParameterAnnotation(int paramInt, Type paramType, Annotation[] paramArrayOfAnnotation, Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof Url))
    {
      if (this.gotUrl)
        throw parameterError(paramInt, "Multiple @Url method annotations found.", new Object[0]);
      if (this.gotPath)
        throw parameterError(paramInt, "@Path parameters may not be used with @Url.", new Object[0]);
      if (this.gotQuery)
        throw parameterError(paramInt, "A @Url parameter must not come after a @Query", new Object[0]);
      if (this.relativeUrl != null)
        throw parameterError(paramInt, "@Url cannot be used with @%s URL", new Object[] { this.httpMethod });
      this.gotUrl = true;
      if ((paramType == ad.class) || (paramType == String.class) || (paramType == URI.class) || (((paramType instanceof Class)) && ("android.net.Uri".equals(((Class)paramType).getName()))))
        return new ParameterHandler.RelativeUrl();
      throw parameterError(paramInt, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
    }
    Object localObject;
    if ((paramAnnotation instanceof Path))
    {
      if (this.gotQuery)
        throw parameterError(paramInt, "A @Path parameter must not come after a @Query.", new Object[0]);
      if (this.gotUrl)
        throw parameterError(paramInt, "@Path parameters may not be used with @Url.", new Object[0]);
      if (this.relativeUrl == null)
        throw parameterError(paramInt, "@Path can only be used with relative url on @%s", new Object[] { this.httpMethod });
      this.gotPath = true;
      paramAnnotation = (Path)paramAnnotation;
      localObject = paramAnnotation.value();
      validatePathName(paramInt, (String)localObject);
      return new ParameterHandler.Path((String)localObject, this.retrofit.stringConverter(paramType, paramArrayOfAnnotation), paramAnnotation.encoded());
    }
    boolean bool;
    if ((paramAnnotation instanceof Query))
    {
      localObject = (Query)paramAnnotation;
      paramAnnotation = ((Query)localObject).value();
      bool = ((Query)localObject).encoded();
      localObject = Utils.getRawType(paramType);
      this.gotQuery = true;
      if (Iterable.class.isAssignableFrom((Class)localObject))
      {
        if (!(paramType instanceof ParameterizedType))
          throw parameterError(paramInt, ((Class)localObject).getSimpleName() + " must include generic type (e.g., " + ((Class)localObject).getSimpleName() + "<String>)", new Object[0]);
        paramType = Utils.getParameterUpperBound(0, (ParameterizedType)paramType);
        return new ParameterHandler.Query(paramAnnotation, this.retrofit.stringConverter(paramType, paramArrayOfAnnotation), bool).iterable();
      }
      if (((Class)localObject).isArray())
      {
        paramType = ServiceMethod.boxIfPrimitive(((Class)localObject).getComponentType());
        return new ParameterHandler.Query(paramAnnotation, this.retrofit.stringConverter(paramType, paramArrayOfAnnotation), bool).array();
      }
      return new ParameterHandler.Query(paramAnnotation, this.retrofit.stringConverter(paramType, paramArrayOfAnnotation), bool);
    }
    if ((paramAnnotation instanceof QueryMap))
    {
      localObject = Utils.getRawType(paramType);
      if (!Map.class.isAssignableFrom((Class)localObject))
        throw parameterError(paramInt, "@QueryMap parameter type must be Map.", new Object[0]);
      paramType = Utils.getSupertype(paramType, (Class)localObject, Map.class);
      if (!(paramType instanceof ParameterizedType))
        throw parameterError(paramInt, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
      paramType = (ParameterizedType)paramType;
      localObject = Utils.getParameterUpperBound(0, paramType);
      if (String.class != localObject)
        throw parameterError(paramInt, "@QueryMap keys must be of type String: " + localObject, new Object[0]);
      paramType = Utils.getParameterUpperBound(1, paramType);
      return new ParameterHandler.QueryMap(this.retrofit.stringConverter(paramType, paramArrayOfAnnotation), ((QueryMap)paramAnnotation).encoded());
    }
    if ((paramAnnotation instanceof Header))
    {
      paramAnnotation = ((Header)paramAnnotation).value();
      localObject = Utils.getRawType(paramType);
      if (Iterable.class.isAssignableFrom((Class)localObject))
      {
        if (!(paramType instanceof ParameterizedType))
          throw parameterError(paramInt, ((Class)localObject).getSimpleName() + " must include generic type (e.g., " + ((Class)localObject).getSimpleName() + "<String>)", new Object[0]);
        paramType = Utils.getParameterUpperBound(0, (ParameterizedType)paramType);
        return new ParameterHandler.Header(paramAnnotation, this.retrofit.stringConverter(paramType, paramArrayOfAnnotation)).iterable();
      }
      if (((Class)localObject).isArray())
      {
        paramType = ServiceMethod.boxIfPrimitive(((Class)localObject).getComponentType());
        return new ParameterHandler.Header(paramAnnotation, this.retrofit.stringConverter(paramType, paramArrayOfAnnotation)).array();
      }
      return new ParameterHandler.Header(paramAnnotation, this.retrofit.stringConverter(paramType, paramArrayOfAnnotation));
    }
    if ((paramAnnotation instanceof Field))
    {
      if (!this.isFormEncoded)
        throw parameterError(paramInt, "@Field parameters can only be used with form encoding.", new Object[0]);
      localObject = (Field)paramAnnotation;
      paramAnnotation = ((Field)localObject).value();
      bool = ((Field)localObject).encoded();
      this.gotField = true;
      localObject = Utils.getRawType(paramType);
      if (Iterable.class.isAssignableFrom((Class)localObject))
      {
        if (!(paramType instanceof ParameterizedType))
          throw parameterError(paramInt, ((Class)localObject).getSimpleName() + " must include generic type (e.g., " + ((Class)localObject).getSimpleName() + "<String>)", new Object[0]);
        paramType = Utils.getParameterUpperBound(0, (ParameterizedType)paramType);
        return new ParameterHandler.Field(paramAnnotation, this.retrofit.stringConverter(paramType, paramArrayOfAnnotation), bool).iterable();
      }
      if (((Class)localObject).isArray())
      {
        paramType = ServiceMethod.boxIfPrimitive(((Class)localObject).getComponentType());
        return new ParameterHandler.Field(paramAnnotation, this.retrofit.stringConverter(paramType, paramArrayOfAnnotation), bool).array();
      }
      return new ParameterHandler.Field(paramAnnotation, this.retrofit.stringConverter(paramType, paramArrayOfAnnotation), bool);
    }
    if ((paramAnnotation instanceof FieldMap))
    {
      if (!this.isFormEncoded)
        throw parameterError(paramInt, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
      localObject = Utils.getRawType(paramType);
      if (!Map.class.isAssignableFrom((Class)localObject))
        throw parameterError(paramInt, "@FieldMap parameter type must be Map.", new Object[0]);
      paramType = Utils.getSupertype(paramType, (Class)localObject, Map.class);
      if (!(paramType instanceof ParameterizedType))
        throw parameterError(paramInt, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
      paramType = (ParameterizedType)paramType;
      localObject = Utils.getParameterUpperBound(0, paramType);
      if (String.class != localObject)
        throw parameterError(paramInt, "@FieldMap keys must be of type String: " + localObject, new Object[0]);
      paramType = Utils.getParameterUpperBound(1, paramType);
      paramType = this.retrofit.stringConverter(paramType, paramArrayOfAnnotation);
      this.gotField = true;
      return new ParameterHandler.FieldMap(paramType, ((FieldMap)paramAnnotation).encoded());
    }
    if ((paramAnnotation instanceof Part))
    {
      if (!this.isMultipart)
        throw parameterError(paramInt, "@Part parameters can only be used with multipart encoding.", new Object[0]);
      localObject = (Part)paramAnnotation;
      this.gotPart = true;
      String str = ((Part)localObject).value();
      paramAnnotation = Utils.getRawType(paramType);
      if (str.isEmpty())
      {
        if (Iterable.class.isAssignableFrom(paramAnnotation))
        {
          if (!(paramType instanceof ParameterizedType))
            throw parameterError(paramInt, paramAnnotation.getSimpleName() + " must include generic type (e.g., " + paramAnnotation.getSimpleName() + "<String>)", new Object[0]);
          if (!al.class.isAssignableFrom(Utils.getRawType(Utils.getParameterUpperBound(0, (ParameterizedType)paramType))))
            throw parameterError(paramInt, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
          return ParameterHandler.RawPart.INSTANCE.iterable();
        }
        if (paramAnnotation.isArray())
        {
          if (!al.class.isAssignableFrom(paramAnnotation.getComponentType()))
            throw parameterError(paramInt, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
          return ParameterHandler.RawPart.INSTANCE.array();
        }
        if (al.class.isAssignableFrom(paramAnnotation))
          return ParameterHandler.RawPart.INSTANCE;
        throw parameterError(paramInt, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
      }
      localObject = ab.a(new String[] { "Content-Disposition", "form-data; name=\"" + str + "\"", "Content-Transfer-Encoding", ((Part)localObject).encoding() });
      if (Iterable.class.isAssignableFrom(paramAnnotation))
      {
        if (!(paramType instanceof ParameterizedType))
          throw parameterError(paramInt, paramAnnotation.getSimpleName() + " must include generic type (e.g., " + paramAnnotation.getSimpleName() + "<String>)", new Object[0]);
        paramType = Utils.getParameterUpperBound(0, (ParameterizedType)paramType);
        if (al.class.isAssignableFrom(Utils.getRawType(paramType)))
          throw parameterError(paramInt, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
        return new ParameterHandler.Part((ab)localObject, this.retrofit.requestBodyConverter(paramType, paramArrayOfAnnotation, this.methodAnnotations)).iterable();
      }
      if (paramAnnotation.isArray())
      {
        paramType = ServiceMethod.boxIfPrimitive(paramAnnotation.getComponentType());
        if (al.class.isAssignableFrom(paramType))
          throw parameterError(paramInt, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
        return new ParameterHandler.Part((ab)localObject, this.retrofit.requestBodyConverter(paramType, paramArrayOfAnnotation, this.methodAnnotations)).array();
      }
      if (al.class.isAssignableFrom(paramAnnotation))
        throw parameterError(paramInt, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
      return new ParameterHandler.Part((ab)localObject, this.retrofit.requestBodyConverter(paramType, paramArrayOfAnnotation, this.methodAnnotations));
    }
    if ((paramAnnotation instanceof PartMap))
    {
      if (!this.isMultipart)
        throw parameterError(paramInt, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
      this.gotPart = true;
      localObject = Utils.getRawType(paramType);
      if (!Map.class.isAssignableFrom((Class)localObject))
        throw parameterError(paramInt, "@PartMap parameter type must be Map.", new Object[0]);
      paramType = Utils.getSupertype(paramType, (Class)localObject, Map.class);
      if (!(paramType instanceof ParameterizedType))
        throw parameterError(paramInt, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
      paramType = (ParameterizedType)paramType;
      localObject = Utils.getParameterUpperBound(0, paramType);
      if (String.class != localObject)
        throw parameterError(paramInt, "@PartMap keys must be of type String: " + localObject, new Object[0]);
      paramType = Utils.getParameterUpperBound(1, paramType);
      if (al.class.isAssignableFrom(Utils.getRawType(paramType)))
        throw parameterError(paramInt, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
      return new ParameterHandler.PartMap(this.retrofit.requestBodyConverter(paramType, paramArrayOfAnnotation, this.methodAnnotations), ((PartMap)paramAnnotation).encoding());
    }
    if ((paramAnnotation instanceof Body))
    {
      if ((this.isFormEncoded) || (this.isMultipart))
        throw parameterError(paramInt, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
      if (this.gotBody)
        throw parameterError(paramInt, "Multiple @Body method annotations found.", new Object[0]);
      try
      {
        paramArrayOfAnnotation = this.retrofit.requestBodyConverter(paramType, paramArrayOfAnnotation, this.methodAnnotations);
        this.gotBody = true;
        return new ParameterHandler.Body(paramArrayOfAnnotation);
      }
      catch (RuntimeException paramArrayOfAnnotation)
      {
        throw parameterError(paramArrayOfAnnotation, paramInt, "Unable to create @Body converter for %s", new Object[] { paramType });
      }
    }
    return null;
  }

  private void validatePathName(int paramInt, String paramString)
  {
    if (!ServiceMethod.PARAM_NAME_REGEX.matcher(paramString).matches())
      throw parameterError(paramInt, "@Path parameter name must match %s. Found: %s", new Object[] { ServiceMethod.PARAM_URL_REGEX.pattern(), paramString });
    if (!this.relativeUrlParamNames.contains(paramString))
      throw parameterError(paramInt, "URL \"%s\" does not contain \"{%s}\".", new Object[] { this.relativeUrl, paramString });
  }

  public final ServiceMethod build()
  {
    this.callAdapter = createCallAdapter();
    this.responseType = this.callAdapter.responseType();
    if ((this.responseType == Response.class) || (this.responseType == az.class))
      throw methodError("'" + Utils.getRawType(this.responseType).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
    this.responseConverter = createResponseConverter();
    Object localObject = this.methodAnnotations;
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      parseMethodAnnotation(localObject[i]);
      i += 1;
    }
    if (this.httpMethod == null)
      throw methodError("HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
    if (!this.hasBody)
    {
      if (this.isMultipart)
        throw methodError("Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
      if (this.isFormEncoded)
        throw methodError("FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
    }
    j = this.parameterAnnotationsArray.length;
    this.parameterHandlers = new ParameterHandler[j];
    i = 0;
    while (i < j)
    {
      localObject = this.parameterTypes[i];
      if (Utils.hasUnresolvableType((Type)localObject))
        throw parameterError(i, "Parameter type must not include a type variable or wildcard: %s", new Object[] { localObject });
      Annotation[] arrayOfAnnotation = this.parameterAnnotationsArray[i];
      if (arrayOfAnnotation == null)
        throw parameterError(i, "No Retrofit annotation found.", new Object[0]);
      this.parameterHandlers[i] = parseParameter(i, (Type)localObject, arrayOfAnnotation);
      i += 1;
    }
    if ((this.relativeUrl == null) && (!this.gotUrl))
      throw methodError("Missing either @%s URL or @Url parameter.", new Object[] { this.httpMethod });
    if ((!this.isFormEncoded) && (!this.isMultipart) && (!this.hasBody) && (this.gotBody))
      throw methodError("Non-body HTTP method cannot contain @Body.", new Object[0]);
    if ((this.isFormEncoded) && (!this.gotField))
      throw methodError("Form-encoded method must contain at least one @Field.", new Object[0]);
    if ((this.isMultipart) && (!this.gotPart))
      throw methodError("Multipart method must contain at least one @Part.", new Object[0]);
    return new ServiceMethod(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ServiceMethod.Builder
 * JD-Core Version:    0.6.2
 */