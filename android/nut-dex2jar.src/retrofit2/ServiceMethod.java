package retrofit2;

import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.ab;
import okhttp3.ad;
import okhttp3.ai;
import okhttp3.at;
import okhttp3.bb;
import okhttp3.h;

final class ServiceMethod<T>
{
  static final String PARAM = "[a-zA-Z][a-zA-Z0-9_-]*";
  static final Pattern PARAM_NAME_REGEX = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");
  static final Pattern PARAM_URL_REGEX = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");
  private final ad baseUrl;
  final CallAdapter<?> callAdapter;
  final h callFactory;
  private final ai contentType;
  private final boolean hasBody;
  private final ab headers;
  private final String httpMethod;
  private final boolean isFormEncoded;
  private final boolean isMultipart;
  private final ParameterHandler<?>[] parameterHandlers;
  private final String relativeUrl;
  private final Converter<bb, T> responseConverter;

  ServiceMethod(ServiceMethod.Builder<T> paramBuilder)
  {
    this.callFactory = paramBuilder.retrofit.callFactory();
    this.callAdapter = paramBuilder.callAdapter;
    this.baseUrl = paramBuilder.retrofit.baseUrl();
    this.responseConverter = paramBuilder.responseConverter;
    this.httpMethod = paramBuilder.httpMethod;
    this.relativeUrl = paramBuilder.relativeUrl;
    this.headers = paramBuilder.headers;
    this.contentType = paramBuilder.contentType;
    this.hasBody = paramBuilder.hasBody;
    this.isFormEncoded = paramBuilder.isFormEncoded;
    this.isMultipart = paramBuilder.isMultipart;
    this.parameterHandlers = paramBuilder.parameterHandlers;
  }

  static Class<?> boxIfPrimitive(Class<?> paramClass)
  {
    Object localObject;
    if (Boolean.TYPE == paramClass)
      localObject = Boolean.class;
    do
    {
      return localObject;
      if (Byte.TYPE == paramClass)
        return Byte.class;
      if (Character.TYPE == paramClass)
        return Character.class;
      if (Double.TYPE == paramClass)
        return Double.class;
      if (Float.TYPE == paramClass)
        return Float.class;
      if (Integer.TYPE == paramClass)
        return Integer.class;
      if (Long.TYPE == paramClass)
        return Long.class;
      localObject = paramClass;
    }
    while (Short.TYPE != paramClass);
    return Short.class;
  }

  static Set<String> parsePathParameters(String paramString)
  {
    paramString = PARAM_URL_REGEX.matcher(paramString);
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    while (paramString.find())
      localLinkedHashSet.add(paramString.group(1));
    return localLinkedHashSet;
  }

  final at toRequest(Object[] paramArrayOfObject)
    throws IOException
  {
    int j = 0;
    RequestBuilder localRequestBuilder = new RequestBuilder(this.httpMethod, this.baseUrl, this.relativeUrl, this.headers, this.contentType, this.hasBody, this.isFormEncoded, this.isMultipart);
    ParameterHandler[] arrayOfParameterHandler = (ParameterHandler[])this.parameterHandlers;
    if (paramArrayOfObject != null);
    for (int i = paramArrayOfObject.length; i != arrayOfParameterHandler.length; i = 0)
      throw new IllegalArgumentException("Argument count (" + i + ") doesn't match expected count (" + arrayOfParameterHandler.length + ")");
    while (j < i)
    {
      arrayOfParameterHandler[j].apply(localRequestBuilder, paramArrayOfObject[j]);
      j += 1;
    }
    return localRequestBuilder.build();
  }

  final T toResponse(bb parambb)
    throws IOException
  {
    return this.responseConverter.convert(parambb);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ServiceMethod
 * JD-Core Version:    0.6.2
 */