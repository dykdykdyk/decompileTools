package retrofit2;

import a.f;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ab;
import okhttp3.ad;
import okhttp3.ae;
import okhttp3.ai;
import okhttp3.aj;
import okhttp3.ak;
import okhttp3.al;
import okhttp3.at;
import okhttp3.au;
import okhttp3.av;
import okhttp3.y;
import okhttp3.z;

final class RequestBuilder
{
  private static final char[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private static final String PATH_SEGMENT_ALWAYS_ENCODE_SET = " \"<>^`{}|\\?#";
  private final ad baseUrl;
  private av body;
  private ai contentType;
  private z formBuilder;
  private final boolean hasBody;
  private final String method;
  private ak multipartBuilder;
  private String relativeUrl;
  private final au requestBuilder;
  private ae urlBuilder;

  RequestBuilder(String paramString1, ad paramad, String paramString2, ab paramab, ai paramai, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.method = paramString1;
    this.baseUrl = paramad;
    this.relativeUrl = paramString2;
    this.requestBuilder = new au();
    this.contentType = paramai;
    this.hasBody = paramBoolean1;
    if (paramab != null)
      this.requestBuilder.c = paramab.a();
    if (paramBoolean2)
      this.formBuilder = new z();
    while (!paramBoolean3)
      return;
    this.multipartBuilder = new ak();
    paramString1 = this.multipartBuilder;
    paramad = aj.e;
    if (paramad == null)
      throw new NullPointerException("type == null");
    if (!paramad.a.equals("multipart"))
      throw new IllegalArgumentException("multipart != " + paramad);
    paramString1.b = paramad;
  }

  private static String canonicalizeForPath(String paramString, boolean paramBoolean)
  {
    int j = paramString.length();
    int i = 0;
    while (true)
    {
      Object localObject = paramString;
      int k;
      if (i < j)
      {
        k = paramString.codePointAt(i);
        if ((k < 32) || (k >= 127) || (" \"<>^`{}|\\?#".indexOf(k) != -1) || ((!paramBoolean) && ((k == 47) || (k == 37))))
        {
          localObject = new f();
          ((f)localObject).a(paramString, 0, i);
          canonicalizeForPath((f)localObject, paramString, i, j, paramBoolean);
          localObject = ((f)localObject).m();
        }
      }
      else
      {
        return localObject;
      }
      i += Character.charCount(k);
    }
  }

  private static void canonicalizeForPath(f paramf, String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Object localObject3;
    for (Object localObject1 = null; paramInt1 < paramInt2; localObject1 = localObject3)
    {
      int i = paramString.codePointAt(paramInt1);
      if (paramBoolean)
      {
        localObject3 = localObject1;
        if (i != 9)
        {
          localObject3 = localObject1;
          if (i != 10)
          {
            localObject3 = localObject1;
            if (i != 12)
            {
              localObject3 = localObject1;
              if (i == 13);
            }
          }
        }
      }
      else
      {
        if ((i < 32) || (i >= 127) || (" \"<>^`{}|\\?#".indexOf(i) != -1) || ((!paramBoolean) && ((i == 47) || (i == 37))))
        {
          Object localObject2 = localObject1;
          if (localObject1 == null)
            localObject2 = new f();
          ((f)localObject2).a(i);
          while (true)
          {
            localObject3 = localObject2;
            if (((f)localObject2).c())
              break;
            int j = ((f)localObject2).f() & 0xFF;
            paramf.b(37);
            paramf.b(HEX_DIGITS[(j >> 4 & 0xF)]);
            paramf.b(HEX_DIGITS[(j & 0xF)]);
          }
        }
        paramf.a(i);
        localObject3 = localObject1;
      }
      paramInt1 += Character.charCount(i);
    }
  }

  final void addFormField(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localz = this.formBuilder;
      localz.a.add(ad.a(paramString1, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true));
      localz.b.add(ad.a(paramString2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true));
      return;
    }
    z localz = this.formBuilder;
    localz.a.add(ad.a(paramString1, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true));
    localz.b.add(ad.a(paramString2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true));
  }

  final void addHeader(String paramString1, String paramString2)
  {
    if ("Content-Type".equalsIgnoreCase(paramString1))
    {
      this.contentType = ai.a(paramString2);
      return;
    }
    this.requestBuilder.b(paramString1, paramString2);
  }

  final void addPart(ab paramab, av paramav)
  {
    this.multipartBuilder.a(al.a(paramab, paramav));
  }

  final void addPart(al paramal)
  {
    this.multipartBuilder.a(paramal);
  }

  final void addPathParam(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (this.relativeUrl == null)
      throw new AssertionError();
    this.relativeUrl = this.relativeUrl.replace("{" + paramString1 + "}", canonicalizeForPath(paramString2, paramBoolean));
  }

  final void addQueryParam(String paramString1, String paramString2, boolean paramBoolean)
  {
    Object localObject1 = null;
    if (this.relativeUrl != null)
    {
      this.urlBuilder = this.baseUrl.d(this.relativeUrl);
      if (this.urlBuilder == null)
        throw new IllegalArgumentException("Malformed URL. Base: " + this.baseUrl + ", Relative: " + this.relativeUrl);
      this.relativeUrl = null;
    }
    if (paramBoolean)
    {
      localObject1 = this.urlBuilder;
      if (paramString1 == null)
        throw new IllegalArgumentException("encodedName == null");
      if (((ae)localObject1).g == null)
        ((ae)localObject1).g = new ArrayList();
      ((ae)localObject1).g.add(ad.a(paramString1, " \"'<>#&=", true, false, true, true));
      localObject1 = ((ae)localObject1).g;
      if (paramString2 != null);
      for (paramString1 = ad.a(paramString2, " \"'<>#&=", true, false, true, true); ; paramString1 = null)
      {
        ((List)localObject1).add(paramString1);
        return;
      }
    }
    Object localObject2 = this.urlBuilder;
    if (paramString1 == null)
      throw new IllegalArgumentException("name == null");
    if (((ae)localObject2).g == null)
      ((ae)localObject2).g = new ArrayList();
    ((ae)localObject2).g.add(ad.a(paramString1, " \"'<>#&=", false, false, true, true));
    localObject2 = ((ae)localObject2).g;
    paramString1 = (String)localObject1;
    if (paramString2 != null)
      paramString1 = ad.a(paramString2, " \"'<>#&=", false, false, true, true);
    ((List)localObject2).add(paramString1);
  }

  final at build()
  {
    Object localObject1 = this.urlBuilder;
    Object localObject2;
    label54: ai localai;
    if (localObject1 != null)
    {
      localObject2 = ((ae)localObject1).b();
      localObject3 = this.body;
      localObject1 = localObject3;
      if (localObject3 == null)
      {
        if (this.formBuilder == null)
          break label159;
        localObject1 = this.formBuilder;
        localObject1 = new y(((z)localObject1).a, ((z)localObject1).b, (byte)0);
      }
      localai = this.contentType;
      localObject3 = localObject1;
      if (localai != null)
        if (localObject1 == null)
          break label237;
    }
    for (Object localObject3 = new RequestBuilder.ContentTypeOverridingRequestBody((av)localObject1, localai); ; localObject3 = localObject1)
    {
      return this.requestBuilder.a((ad)localObject2).a(this.method, (av)localObject3).a();
      localObject1 = this.baseUrl.c(this.relativeUrl);
      localObject2 = localObject1;
      if (localObject1 != null)
        break;
      throw new IllegalArgumentException("Malformed URL. Base: " + this.baseUrl + ", Relative: " + this.relativeUrl);
      label159: if (this.multipartBuilder != null)
      {
        localObject1 = this.multipartBuilder;
        if (((ak)localObject1).c.isEmpty())
          throw new IllegalStateException("Multipart body must have at least one part.");
        localObject1 = new aj(((ak)localObject1).a, ((ak)localObject1).b, ((ak)localObject1).c);
        break label54;
      }
      localObject1 = localObject3;
      if (!this.hasBody)
        break label54;
      localObject1 = av.create(null, new byte[0]);
      break label54;
      label237: this.requestBuilder.b("Content-Type", localai.toString());
    }
  }

  final void setBody(av paramav)
  {
    this.body = paramav;
  }

  final void setRelativeUrl(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException("@Url parameter is null.");
    this.relativeUrl = paramObject.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.RequestBuilder
 * JD-Core Version:    0.6.2
 */