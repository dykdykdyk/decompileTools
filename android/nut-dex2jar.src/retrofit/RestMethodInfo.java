package retrofit;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import retrofit.client.Response;
import retrofit.http.Body;
import retrofit.http.EncodedPath;
import retrofit.http.EncodedQuery;
import retrofit.http.EncodedQueryMap;
import retrofit.http.Field;
import retrofit.http.FieldMap;
import retrofit.http.FormUrlEncoded;
import retrofit.http.Headers;
import retrofit.http.Multipart;
import retrofit.http.Part;
import retrofit.http.PartMap;
import retrofit.http.Path;
import retrofit.http.Query;
import retrofit.http.QueryMap;
import retrofit.http.RestMethod;
import retrofit.http.Streaming;

final class RestMethodInfo
{
  private static final String PARAM = "[a-zA-Z][a-zA-Z0-9_-]*";
  private static final Pattern PARAM_NAME_REGEX = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");
  private static final Pattern PARAM_URL_REGEX = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");
  String contentTypeHeader;
  List<retrofit.client.Header> headers;
  final boolean isObservable;
  boolean isStreaming;
  final boolean isSynchronous;
  boolean loaded = false;
  final Method method;
  boolean requestHasBody;
  String requestMethod;
  String[] requestParamNames;
  RestMethodInfo.ParamUsage[] requestParamUsage;
  String requestQuery;
  RestMethodInfo.RequestType requestType = RestMethodInfo.RequestType.SIMPLE;
  String requestUrl;
  Set<String> requestUrlParamNames;
  Type responseObjectType;
  final RestMethodInfo.ResponseType responseType;

  RestMethodInfo(Method paramMethod)
  {
    this.method = paramMethod;
    this.responseType = parseResponseType();
    if (this.responseType == RestMethodInfo.ResponseType.OBJECT)
    {
      bool1 = true;
      this.isSynchronous = bool1;
      if (this.responseType != RestMethodInfo.ResponseType.OBSERVABLE)
        break label71;
    }
    label71: for (boolean bool1 = bool2; ; bool1 = false)
    {
      this.isObservable = bool1;
      return;
      bool1 = false;
      break;
    }
  }

  private static Type getParameterUpperBound(ParameterizedType paramParameterizedType)
  {
    paramParameterizedType = paramParameterizedType.getActualTypeArguments();
    int i = 0;
    while (i < paramParameterizedType.length)
    {
      Object localObject = paramParameterizedType[i];
      if ((localObject instanceof WildcardType))
        paramParameterizedType[i] = ((WildcardType)localObject).getUpperBounds()[0];
      i += 1;
    }
    return paramParameterizedType[0];
  }

  private RuntimeException methodError(String paramString, Object[] paramArrayOfObject)
  {
    String str = paramString;
    if (paramArrayOfObject.length > 0)
      str = String.format(paramString, paramArrayOfObject);
    return new IllegalArgumentException(this.method.getDeclaringClass().getSimpleName() + "." + this.method.getName() + ": " + str);
  }

  private RuntimeException parameterError(int paramInt, String paramString, Object[] paramArrayOfObject)
  {
    return methodError(paramString + " (parameter #" + (paramInt + 1) + ")", paramArrayOfObject);
  }

  private void parseMethodAnnotations()
  {
    Annotation[] arrayOfAnnotation1 = this.method.getAnnotations();
    int k = arrayOfAnnotation1.length;
    int i = 0;
    if (i < k)
    {
      Annotation localAnnotation = arrayOfAnnotation1[i];
      Class localClass = localAnnotation.annotationType();
      String str = null;
      Annotation[] arrayOfAnnotation2 = localClass.getAnnotations();
      int m = arrayOfAnnotation2.length;
      int j = 0;
      Object localObject;
      while (true)
      {
        localObject = str;
        if (j < m)
        {
          localObject = arrayOfAnnotation2[j];
          if (RestMethod.class == ((Annotation)localObject).annotationType())
            localObject = (RestMethod)localObject;
        }
        else
        {
          if (localObject == null)
            break label215;
          if (this.requestMethod == null)
            break;
          throw methodError("Only one HTTP method is allowed. Found: %s and %s.", new Object[] { this.requestMethod, ((RestMethod)localObject).value() });
        }
        j += 1;
      }
      while (true)
      {
        try
        {
          str = (String)localClass.getMethod("value", new Class[0]).invoke(localAnnotation, new Object[0]);
          parsePath(str);
          this.requestMethod = ((RestMethod)localObject).value();
          this.requestHasBody = ((RestMethod)localObject).hasBody();
          i += 1;
        }
        catch (Exception localException)
        {
          throw methodError("Failed to extract String 'value' from @%s annotation.", new Object[] { localClass.getSimpleName() });
        }
        label215: if (localClass == Headers.class)
        {
          String[] arrayOfString = ((Headers)localAnnotation).value();
          if (arrayOfString.length == 0)
            throw methodError("@Headers annotation is empty.", new Object[0]);
          this.headers = parseHeaders(arrayOfString);
        }
        else if (localClass == Multipart.class)
        {
          if (this.requestType != RestMethodInfo.RequestType.SIMPLE)
            throw methodError("Only one encoding annotation is allowed.", new Object[0]);
          this.requestType = RestMethodInfo.RequestType.MULTIPART;
        }
        else if (localClass == FormUrlEncoded.class)
        {
          if (this.requestType != RestMethodInfo.RequestType.SIMPLE)
            throw methodError("Only one encoding annotation is allowed.", new Object[0]);
          this.requestType = RestMethodInfo.RequestType.FORM_URL_ENCODED;
        }
        else if (localClass == Streaming.class)
        {
          if (this.responseObjectType != Response.class)
            throw methodError("Only methods having %s as data type are allowed to have @%s annotation.", new Object[] { Response.class.getSimpleName(), Streaming.class.getSimpleName() });
          this.isStreaming = true;
        }
      }
    }
    if (this.requestMethod == null)
      throw methodError("HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
    if (!this.requestHasBody)
    {
      if (this.requestType == RestMethodInfo.RequestType.MULTIPART)
        throw methodError("Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
      if (this.requestType == RestMethodInfo.RequestType.FORM_URL_ENCODED)
        throw methodError("FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
    }
  }

  private void parseParameters()
  {
    Class[] arrayOfClass = this.method.getParameterTypes();
    Annotation[][] arrayOfAnnotation = this.method.getParameterAnnotations();
    int m = arrayOfAnnotation.length;
    if ((!this.isSynchronous) && (!this.isObservable))
      m -= 1;
    while (true)
    {
      String[] arrayOfString = new String[m];
      this.requestParamNames = arrayOfString;
      RestMethodInfo.ParamUsage[] arrayOfParamUsage = new RestMethodInfo.ParamUsage[m];
      this.requestParamUsage = arrayOfParamUsage;
      int j = 0;
      int k = 0;
      int i = 0;
      int n = 0;
      Class localClass1;
      int i2;
      int i3;
      int i4;
      int i1;
      label121: Object localObject;
      Class localClass2;
      if (n < m)
      {
        localClass1 = arrayOfClass[n];
        Annotation[] arrayOfAnnotation1 = arrayOfAnnotation[n];
        i2 = i;
        i3 = k;
        i4 = j;
        if (arrayOfAnnotation1 != null)
        {
          int i5 = arrayOfAnnotation1.length;
          i1 = 0;
          i2 = i;
          i3 = k;
          i4 = j;
          if (i1 < i5)
          {
            localObject = arrayOfAnnotation1[i1];
            localClass2 = ((Annotation)localObject).annotationType();
            if (localClass2 == Path.class)
            {
              localObject = ((Path)localObject).value();
              validatePathName(n, (String)localObject);
              arrayOfString[n] = localObject;
              arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.PATH;
              i2 = k;
              k = j;
              j = i2;
            }
          }
        }
      }
      while (true)
      {
        i2 = i1 + 1;
        i1 = k;
        k = j;
        j = i1;
        i1 = i2;
        break label121;
        if (localClass2 == EncodedPath.class)
        {
          localObject = ((EncodedPath)localObject).value();
          validatePathName(n, (String)localObject);
          arrayOfString[n] = localObject;
          arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.ENCODED_PATH;
          i2 = j;
          j = k;
          k = i2;
        }
        else if (localClass2 == Query.class)
        {
          arrayOfString[n] = ((Query)localObject).value();
          arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.QUERY;
          i2 = j;
          j = k;
          k = i2;
        }
        else if (localClass2 == EncodedQuery.class)
        {
          arrayOfString[n] = ((EncodedQuery)localObject).value();
          arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.ENCODED_QUERY;
          i2 = j;
          j = k;
          k = i2;
        }
        else if (localClass2 == QueryMap.class)
        {
          if (!Map.class.isAssignableFrom(localClass1))
            throw parameterError(n, "@QueryMap parameter type must be Map.", new Object[0]);
          arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.QUERY_MAP;
          i2 = j;
          j = k;
          k = i2;
        }
        else if (localClass2 == EncodedQueryMap.class)
        {
          if (!Map.class.isAssignableFrom(localClass1))
            throw parameterError(n, "@EncodedQueryMap parameter type must be Map.", new Object[0]);
          arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.ENCODED_QUERY_MAP;
          i2 = j;
          j = k;
          k = i2;
        }
        else if (localClass2 == retrofit.http.Header.class)
        {
          localObject = ((retrofit.http.Header)localObject).value();
          if (localClass1 != String.class)
            throw parameterError(n, "@Header parameter type must be String. Found: %s.", new Object[] { localClass1.getSimpleName() });
          arrayOfString[n] = localObject;
          arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.HEADER;
          i2 = j;
          j = k;
          k = i2;
        }
        else if (localClass2 == Field.class)
        {
          if (this.requestType != RestMethodInfo.RequestType.FORM_URL_ENCODED)
            throw parameterError(n, "@Field parameters can only be used with form encoding.", new Object[0]);
          arrayOfString[n] = ((Field)localObject).value();
          arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.FIELD;
          j = k;
          k = 1;
        }
        else if (localClass2 == FieldMap.class)
        {
          if (this.requestType != RestMethodInfo.RequestType.FORM_URL_ENCODED)
            throw parameterError(n, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
          if (!Map.class.isAssignableFrom(localClass1))
            throw parameterError(n, "@FieldMap parameter type must be Map.", new Object[0]);
          arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.FIELD_MAP;
          j = k;
          k = 1;
        }
        else if (localClass2 == Part.class)
        {
          if (this.requestType != RestMethodInfo.RequestType.MULTIPART)
            throw parameterError(n, "@Part parameters can only be used with multipart encoding.", new Object[0]);
          arrayOfString[n] = ((Part)localObject).value();
          arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.PART;
          k = j;
          j = 1;
        }
        else if (localClass2 == PartMap.class)
        {
          if (this.requestType != RestMethodInfo.RequestType.MULTIPART)
            throw parameterError(n, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
          if (!Map.class.isAssignableFrom(localClass1))
            throw parameterError(n, "@PartMap parameter type must be Map.", new Object[0]);
          arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.PART_MAP;
          k = j;
          j = 1;
        }
        else
        {
          if (localClass2 == Body.class)
          {
            if (this.requestType != RestMethodInfo.RequestType.SIMPLE)
              throw parameterError(n, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
            if (i != 0)
              throw methodError("Multiple @Body method annotations found.", new Object[0]);
            i = 1;
            arrayOfParamUsage[n] = RestMethodInfo.ParamUsage.BODY;
            i2 = j;
            j = k;
            k = i2;
            continue;
            if (arrayOfParamUsage[n] == null)
              throw parameterError(n, "No Retrofit annotation found.", new Object[0]);
            n += 1;
            i = i2;
            k = i3;
            j = i4;
            break;
            if ((this.requestType == RestMethodInfo.RequestType.SIMPLE) && (!this.requestHasBody) && (i != 0))
              throw methodError("Non-body HTTP method cannot contain @Body or @TypedOutput.", new Object[0]);
            if ((this.requestType == RestMethodInfo.RequestType.FORM_URL_ENCODED) && (j == 0))
              throw methodError("Form-encoded method must contain at least one @Field.", new Object[0]);
            if ((this.requestType == RestMethodInfo.RequestType.MULTIPART) && (k == 0))
              throw methodError("Multipart method must contain at least one @Part.", new Object[0]);
            return;
          }
          i2 = j;
          j = k;
          k = i2;
        }
      }
    }
  }

  private void parsePath(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0) || (paramString.charAt(0) != '/'))
      throw methodError("URL path \"%s\" must start with '/'.", new Object[] { paramString });
    Object localObject = null;
    int i = paramString.indexOf('?');
    String str1;
    if ((i != -1) && (i < paramString.length() - 1))
    {
      str1 = paramString.substring(0, i);
      String str2 = paramString.substring(i + 1);
      localObject = str2;
      if (PARAM_URL_REGEX.matcher(str2).find())
        throw methodError("URL query string \"%s\" must not have replace block.", new Object[] { str2 });
    }
    else
    {
      str1 = paramString;
    }
    paramString = parsePathParameters(paramString);
    this.requestUrl = str1;
    this.requestUrlParamNames = paramString;
    this.requestQuery = localObject;
  }

  static Set<String> parsePathParameters(String paramString)
  {
    paramString = PARAM_URL_REGEX.matcher(paramString);
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    while (paramString.find())
      localLinkedHashSet.add(paramString.group(1));
    return localLinkedHashSet;
  }

  private RestMethodInfo.ResponseType parseResponseType()
  {
    Type localType2 = this.method.getGenericReturnType();
    Object localObject = this.method.getGenericParameterTypes();
    Type localType1;
    if (localObject.length > 0)
    {
      localType1 = localObject[(localObject.length - 1)];
      if ((localType1 instanceof ParameterizedType))
      {
        localObject = ((ParameterizedType)localType1).getRawType();
        if ((localObject instanceof Class))
          localObject = (Class)localObject;
      }
    }
    while (true)
    {
      int i;
      if (localType2 != Void.TYPE)
      {
        i = 1;
        if ((localObject == null) || (!Callback.class.isAssignableFrom((Class)localObject)))
          break label112;
      }
      label112: for (int j = 1; ; j = 0)
      {
        if ((i == 0) || (j == 0))
          break label117;
        throw methodError("Must have return type or Callback as last argument, not both.", new Object[0]);
        i = 0;
        break;
      }
      label117: if ((i == 0) && (j == 0))
        throw methodError("Must have either a return type or Callback as last argument.", new Object[0]);
      if (i != 0)
      {
        if (Platform.HAS_RX_JAVA)
        {
          localObject = Types.getRawType(localType2);
          if (RestMethodInfo.RxSupport.isObservable((Class)localObject))
          {
            this.responseObjectType = getParameterUpperBound((ParameterizedType)RestMethodInfo.RxSupport.getObservableType(localType2, (Class)localObject));
            return RestMethodInfo.ResponseType.OBSERVABLE;
          }
        }
        this.responseObjectType = localType2;
        return RestMethodInfo.ResponseType.OBJECT;
      }
      localObject = Types.getSupertype(localType1, Types.getRawType(localType1), Callback.class);
      if ((localObject instanceof ParameterizedType))
      {
        this.responseObjectType = getParameterUpperBound((ParameterizedType)localObject);
        return RestMethodInfo.ResponseType.VOID;
      }
      throw methodError("Last parameter must be of type Callback<X> or Callback<? super X>.", new Object[0]);
      localObject = null;
      continue;
      localObject = localType1;
      break;
      localObject = null;
      localType1 = null;
    }
  }

  private void validatePathName(int paramInt, String paramString)
  {
    if (!PARAM_NAME_REGEX.matcher(paramString).matches())
      throw parameterError(paramInt, "@Path parameter name must match %s. Found: %s", new Object[] { PARAM_URL_REGEX.pattern(), paramString });
    if (!this.requestUrlParamNames.contains(paramString))
      throw parameterError(paramInt, "URL \"%s\" does not contain \"{%s}\".", new Object[] { this.requestUrl, paramString });
  }

  final void init()
  {
    try
    {
      boolean bool = this.loaded;
      if (bool);
      while (true)
      {
        return;
        parseMethodAnnotations();
        parseParameters();
        this.loaded = true;
      }
    }
    finally
    {
    }
  }

  final List<retrofit.client.Header> parseHeaders(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
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
        this.contentTypeHeader = str2;
      while (true)
      {
        i += 1;
        break;
        localArrayList.add(new retrofit.client.Header(str1, str2));
      }
    }
    return localArrayList;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RestMethodInfo
 * JD-Core Version:    0.6.2
 */