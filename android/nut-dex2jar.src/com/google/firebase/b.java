package com.google.firebase;

import com.google.android.gms.common.b.g;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import java.util.Arrays;

public final class b
{
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;

  b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    if (!g.a(paramString1));
    for (boolean bool = true; ; bool = false)
    {
      com.google.android.gms.common.internal.b.a(bool, "ApplicationId must be set.");
      this.b = paramString1;
      this.a = paramString2;
      this.c = paramString3;
      this.d = paramString4;
      this.e = paramString5;
      this.f = paramString6;
      return;
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b));
    do
    {
      return false;
      paramObject = (b)paramObject;
    }
    while ((!bn.a(this.b, paramObject.b)) || (!bn.a(this.a, paramObject.a)) || (!bn.a(this.c, paramObject.c)) || (!bn.a(this.d, paramObject.d)) || (!bn.a(this.e, paramObject.e)) || (!bn.a(this.f, paramObject.f)));
    return true;
  }

  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.b, this.a, this.c, this.d, this.e, this.f });
  }

  public final String toString()
  {
    return bn.a(this).a("applicationId", this.b).a("apiKey", this.a).a("databaseUrl", this.c).a("gcmSenderId", this.e).a("storageBucket", this.f).toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.firebase.b
 * JD-Core Version:    0.6.2
 */