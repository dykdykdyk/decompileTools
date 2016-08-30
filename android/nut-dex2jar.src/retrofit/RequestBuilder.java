package retrofit;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import retrofit.client.Header;
import retrofit.client.Request;
import retrofit.converter.Converter;
import retrofit.mime.FormUrlEncodedTypedOutput;
import retrofit.mime.MultipartTypedOutput;
import retrofit.mime.TypedOutput;
import retrofit.mime.TypedString;

final class RequestBuilder
  implements RequestInterceptor.RequestFacade
{
  private final String apiUrl;
  private TypedOutput body;
  private String contentTypeHeader;
  private final Converter converter;
  private final FormUrlEncodedTypedOutput formBody;
  private List<Header> headers;
  private final boolean isObservable;
  private final boolean isSynchronous;
  private final MultipartTypedOutput multipartBody;
  private final String[] paramNames;
  private final RestMethodInfo.ParamUsage[] paramUsages;
  private StringBuilder queryParams;
  private String relativeUrl;
  private final String requestMethod;

  RequestBuilder(String paramString, RestMethodInfo paramRestMethodInfo, Converter paramConverter)
  {
    this.apiUrl = paramString;
    this.converter = paramConverter;
    this.paramNames = paramRestMethodInfo.requestParamNames;
    this.paramUsages = paramRestMethodInfo.requestParamUsage;
    this.requestMethod = paramRestMethodInfo.requestMethod;
    this.isSynchronous = paramRestMethodInfo.isSynchronous;
    this.isObservable = paramRestMethodInfo.isObservable;
    if (paramRestMethodInfo.headers != null)
      this.headers = new ArrayList(paramRestMethodInfo.headers);
    this.contentTypeHeader = paramRestMethodInfo.contentTypeHeader;
    this.relativeUrl = paramRestMethodInfo.requestUrl;
    paramString = paramRestMethodInfo.requestQuery;
    if (paramString != null)
      this.queryParams = new StringBuilder("?").append(paramString);
    switch (RequestBuilder.1.$SwitchMap$retrofit$RestMethodInfo$RequestType[paramRestMethodInfo.requestType.ordinal()])
    {
    default:
      throw new IllegalArgumentException("Unknown request type: " + paramRestMethodInfo.requestType);
    case 1:
      this.formBody = new FormUrlEncodedTypedOutput();
      this.multipartBody = null;
      this.body = this.formBody;
      return;
    case 2:
      this.formBody = null;
      this.multipartBody = new MultipartTypedOutput();
      this.body = this.multipartBody;
      return;
    case 3:
    }
    this.formBody = null;
    this.multipartBody = null;
  }

  private void addPathParam(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("Path replacement name must not be null.");
    if (paramString2 == null)
      throw new IllegalArgumentException("Path replacement \"" + paramString1 + "\" value must not be null.");
    if (paramBoolean);
    try
    {
      String str = URLEncoder.encode(String.valueOf(paramString2), "UTF-8").replace("+", "%20");
      this.relativeUrl = this.relativeUrl.replace("{" + paramString1 + "}", str);
      return;
      this.relativeUrl = this.relativeUrl.replace("{" + paramString1 + "}", String.valueOf(paramString2));
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("Unable to convert path parameter \"" + paramString1 + "\" value to UTF-8:" + paramString2, localUnsupportedEncodingException);
    }
  }

  private void addQueryParam(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("Query param name must not be null.");
    if (paramString2 == null)
      throw new IllegalArgumentException("Query param \"" + paramString1 + "\" value must not be null.");
    String str1 = paramString2;
    String str2;
    if (paramBoolean)
      str2 = paramString2;
    while (true)
      try
      {
        str1 = URLEncoder.encode(String.valueOf(paramString2), "UTF-8");
        str2 = str1;
        paramString2 = this.queryParams;
        if (paramString2 == null)
        {
          str2 = str1;
          paramString2 = new StringBuilder();
          str2 = str1;
          this.queryParams = paramString2;
          str2 = str1;
          if (paramString2.length() > 0)
          {
            c = '&';
            str2 = str1;
            paramString2.append(c);
            str2 = str1;
            paramString2.append(paramString1).append('=').append(str1);
            return;
          }
          char c = '?';
        }
      }
      catch (UnsupportedEncodingException paramString2)
      {
        throw new RuntimeException("Unable to convert query parameter \"" + paramString1 + "\" value to UTF-8: " + str2, paramString2);
      }
  }

  public final void addEncodedPathParam(String paramString1, String paramString2)
  {
    addPathParam(paramString1, paramString2, false);
  }

  public final void addEncodedQueryParam(String paramString1, String paramString2)
  {
    addQueryParam(paramString1, paramString2, false);
  }

  public final void addHeader(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("Header name must not be null.");
    if ("Content-Type".equalsIgnoreCase(paramString1))
    {
      this.contentTypeHeader = paramString2;
      return;
    }
    List localList = this.headers;
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList(2);
      this.headers = ((List)localObject);
    }
    ((List)localObject).add(new Header(paramString1, paramString2));
  }

  public final void addPathParam(String paramString1, String paramString2)
  {
    addPathParam(paramString1, paramString2, true);
  }

  public final void addQueryParam(String paramString1, String paramString2)
  {
    addQueryParam(paramString1, paramString2, true);
  }

  final Request build()
    throws UnsupportedEncodingException
  {
    if ((this.multipartBody != null) && (this.multipartBody.getPartCount() == 0))
      throw new IllegalStateException("Multipart requests must contain at least one part.");
    Object localObject = this.apiUrl;
    StringBuilder localStringBuilder = new StringBuilder((String)localObject);
    if (((String)localObject).endsWith("/"))
      localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
    localStringBuilder.append(this.relativeUrl);
    localObject = this.queryParams;
    if (localObject != null)
      localStringBuilder.append((CharSequence)localObject);
    localObject = this.body;
    List localList = this.headers;
    if (this.contentTypeHeader != null)
      if (localObject != null)
        localObject = new RequestBuilder.MimeOverridingTypedOutput((TypedOutput)localObject, this.contentTypeHeader);
    while (true)
    {
      return new Request(this.requestMethod, localStringBuilder.toString(), localList, (TypedOutput)localObject);
      localList.add(new Header("Content-Type", this.contentTypeHeader));
    }
  }

  final void setArguments(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      return;
    int i = paramArrayOfObject.length;
    if ((!this.isSynchronous) && (!this.isObservable))
      i -= 1;
    while (true)
    {
      int j = 0;
      if (j >= i)
        break;
      Object localObject1 = this.paramNames[j];
      Object localObject2 = paramArrayOfObject[j];
      Object localObject3 = this.paramUsages[j];
      switch (RequestBuilder.1.$SwitchMap$retrofit$RestMethodInfo$ParamUsage[localObject3.ordinal()])
      {
      default:
        throw new IllegalArgumentException("Unknown parameter usage: " + localObject3);
      case 1:
        if (localObject2 == null)
          throw new IllegalArgumentException("Path parameter \"" + (String)localObject1 + "\" value must not be null.");
        addPathParam((String)localObject1, localObject2.toString());
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      }
      while (true)
      {
        j += 1;
        break;
        if (localObject2 == null)
          throw new IllegalArgumentException("Path parameter \"" + (String)localObject1 + "\" value must not be null.");
        addEncodedPathParam((String)localObject1, localObject2.toString());
        continue;
        if (localObject2 != null)
        {
          if (localObject3 == RestMethodInfo.ParamUsage.QUERY);
          for (boolean bool = true; ; bool = false)
          {
            if (!(localObject2 instanceof Iterable))
              break label336;
            localObject2 = ((Iterable)localObject2).iterator();
            while (((Iterator)localObject2).hasNext())
            {
              localObject3 = ((Iterator)localObject2).next();
              if (localObject3 != null)
                addQueryParam((String)localObject1, localObject3.toString(), bool);
            }
          }
          label336: int m;
          int k;
          if (localObject2.getClass().isArray())
          {
            m = Array.getLength(localObject2);
            k = 0;
            while (k < m)
            {
              localObject3 = Array.get(localObject2, k);
              if (localObject3 != null)
                addQueryParam((String)localObject1, localObject3.toString(), bool);
              k += 1;
            }
          }
          addQueryParam((String)localObject1, localObject2.toString(), bool);
          continue;
          if (localObject2 != null)
          {
            if (localObject3 == RestMethodInfo.ParamUsage.QUERY_MAP);
            for (bool = true; ; bool = false)
            {
              localObject1 = ((Map)localObject2).entrySet().iterator();
              while (((Iterator)localObject1).hasNext())
              {
                localObject2 = (Map.Entry)((Iterator)localObject1).next();
                localObject3 = ((Map.Entry)localObject2).getValue();
                if (localObject3 != null)
                  addQueryParam(((Map.Entry)localObject2).getKey().toString(), localObject3.toString(), bool);
              }
            }
            if (localObject2 != null)
            {
              addHeader((String)localObject1, localObject2.toString());
              continue;
              if (localObject2 != null)
              {
                if ((localObject2 instanceof Iterable))
                {
                  localObject2 = ((Iterable)localObject2).iterator();
                  while (((Iterator)localObject2).hasNext())
                  {
                    localObject3 = ((Iterator)localObject2).next();
                    if (localObject3 != null)
                      this.formBody.addField((String)localObject1, localObject3.toString());
                  }
                }
                if (localObject2.getClass().isArray())
                {
                  m = Array.getLength(localObject2);
                  k = 0;
                  while (k < m)
                  {
                    localObject3 = Array.get(localObject2, k);
                    if (localObject3 != null)
                      this.formBody.addField((String)localObject1, localObject3.toString());
                    k += 1;
                  }
                }
                this.formBody.addField((String)localObject1, localObject2.toString());
                continue;
                if (localObject2 != null)
                {
                  localObject1 = ((Map)localObject2).entrySet().iterator();
                  while (((Iterator)localObject1).hasNext())
                  {
                    localObject2 = (Map.Entry)((Iterator)localObject1).next();
                    localObject3 = ((Map.Entry)localObject2).getValue();
                    if (localObject3 != null)
                      this.formBody.addField(((Map.Entry)localObject2).getKey().toString(), localObject3.toString());
                  }
                  if (localObject2 != null)
                    if ((localObject2 instanceof TypedOutput))
                    {
                      this.multipartBody.addPart((String)localObject1, (TypedOutput)localObject2);
                    }
                    else if ((localObject2 instanceof String))
                    {
                      this.multipartBody.addPart((String)localObject1, new TypedString((String)localObject2));
                    }
                    else
                    {
                      this.multipartBody.addPart((String)localObject1, this.converter.toBody(localObject2));
                      continue;
                      if (localObject2 != null)
                      {
                        localObject1 = ((Map)localObject2).entrySet().iterator();
                        while (((Iterator)localObject1).hasNext())
                        {
                          localObject3 = (Map.Entry)((Iterator)localObject1).next();
                          localObject2 = ((Map.Entry)localObject3).getKey().toString();
                          localObject3 = ((Map.Entry)localObject3).getValue();
                          if (localObject3 != null)
                            if ((localObject3 instanceof TypedOutput))
                              this.multipartBody.addPart((String)localObject2, (TypedOutput)localObject3);
                            else if ((localObject3 instanceof String))
                              this.multipartBody.addPart((String)localObject2, new TypedString((String)localObject3));
                            else
                              this.multipartBody.addPart((String)localObject2, this.converter.toBody(localObject3));
                        }
                        if (localObject2 == null)
                          throw new IllegalArgumentException("Body parameter value must not be null.");
                        if ((localObject2 instanceof TypedOutput))
                          this.body = ((TypedOutput)localObject2);
                        else
                          this.body = this.converter.toBody(localObject2);
                      }
                    }
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RequestBuilder
 * JD-Core Version:    0.6.2
 */