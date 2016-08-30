package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.umeng.analytics.r;
import java.io.File;
import java.nio.ByteBuffer;
import org.json.JSONObject;

public final class fe
{
  private final byte[] a = { 0, 0, 0, 0, 0, 0, 0, 0 };
  private final int b = 1;
  private final int c = 0;
  private String d = "1.0";
  private String e = null;
  private byte[] f = null;
  private byte[] g = null;
  private byte[] h = null;
  private int i = 0;
  private int j = 0;
  private int k = 0;
  private byte[] l = null;
  private byte[] m = null;
  private boolean n = false;

  private fe(byte[] paramArrayOfByte1, String paramString, byte[] paramArrayOfByte2)
    throws Exception
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte1.length == 0))
      throw new Exception("entity is null or empty");
    this.e = paramString;
    this.k = paramArrayOfByte1.length;
    this.l = cq.a(paramArrayOfByte1);
    this.j = ((int)(System.currentTimeMillis() / 1000L));
    this.m = paramArrayOfByte2;
  }

  public static String a(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("umeng_general_config", 0);
    if (paramContext == null)
      return null;
    return paramContext.getString("signature", null);
  }

  public static fe a(Context paramContext, String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      String str2 = cr.n(paramContext);
      String str3 = cr.c(paramContext);
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("umeng_general_config", 0);
      String str1 = localSharedPreferences.getString("signature", null);
      int i1 = localSharedPreferences.getInt("serial", 1);
      paramString = new fe(paramArrayOfByte, paramString, (str3 + str2).getBytes());
      paramString.a(str1);
      paramString.i = i1;
      paramString.b();
      localSharedPreferences.edit().putInt("serial", i1 + 1).putString("signature", r.a(paramString.f)).commit();
      paramString.b(paramContext);
      return paramString;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }

  private void a(String paramString)
  {
    this.f = r.a(paramString);
  }

  private byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    int i6 = 0;
    byte[] arrayOfByte1 = r.b(this.m);
    byte[] arrayOfByte2 = r.b(this.l);
    int i7 = arrayOfByte1.length;
    byte[] arrayOfByte3 = new byte[i7 * 2];
    int i5 = 0;
    while (i5 < i7)
    {
      arrayOfByte3[(i5 * 2)] = arrayOfByte2[i5];
      arrayOfByte3[(i5 * 2 + 1)] = arrayOfByte1[i5];
      i5 += 1;
    }
    i5 = 0;
    while (i5 < 2)
    {
      arrayOfByte3[i5] = paramArrayOfByte[i5];
      arrayOfByte3[(arrayOfByte3.length - i5 - 1)] = paramArrayOfByte[(paramArrayOfByte.length - i5 - 1)];
      i5 += 1;
    }
    int i1 = (byte)(paramInt & 0xFF);
    int i2 = (byte)(paramInt >> 8 & 0xFF);
    int i3 = (byte)(paramInt >> 16 & 0xFF);
    int i4 = (byte)(paramInt >>> 24);
    paramInt = i6;
    while (paramInt < arrayOfByte3.length)
    {
      arrayOfByte3[paramInt] = ((byte)(arrayOfByte3[paramInt] ^ new byte[] { i1, i2, i3, i4 }[(paramInt % 4)]));
      paramInt += 1;
    }
    return arrayOfByte3;
  }

  public static fe b(Context paramContext, String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      String str2 = cr.n(paramContext);
      String str3 = cr.c(paramContext);
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("umeng_general_config", 0);
      String str1 = localSharedPreferences.getString("signature", null);
      int i1 = localSharedPreferences.getInt("serial", 1);
      paramString = new fe(paramArrayOfByte, paramString, (str3 + str2).getBytes());
      paramString.n = true;
      paramString.a(str1);
      paramString.i = i1;
      paramString.b();
      localSharedPreferences.edit().putInt("serial", i1 + 1).putString("signature", r.a(paramString.f)).commit();
      paramString.b(paramContext);
      return paramString;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }

  private void b()
  {
    if (this.f == null)
      this.f = a(this.a, (int)(System.currentTimeMillis() / 1000L));
    Object localObject;
    if (this.n)
      localObject = new byte[16];
    try
    {
      System.arraycopy(this.f, 1, localObject, 0, 16);
      this.l = r.a(this.l, (byte[])localObject);
      label63: this.g = a(this.f, this.j);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(r.a(this.f));
      ((StringBuilder)localObject).append(this.i);
      ((StringBuilder)localObject).append(this.j);
      ((StringBuilder)localObject).append(this.k);
      ((StringBuilder)localObject).append(r.a(this.g));
      this.h = r.b(((StringBuilder)localObject).toString().getBytes());
      return;
    }
    catch (Exception localException)
    {
      break label63;
    }
  }

  private void b(Context paramContext)
  {
    String str1 = this.e;
    String str2 = fj.a(paramContext).b.d;
    String str3 = r.a(this.f);
    Object localObject = new byte[16];
    System.arraycopy(this.f, 2, localObject, 0, 16);
    localObject = r.a(r.b((byte[])localObject));
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("appkey", str1);
      if (str2 != null)
        localJSONObject.put("umid", str2);
      localJSONObject.put("signature", str3);
      localJSONObject.put("checksum", localObject);
      str1 = localJSONObject.toString();
      paramContext = new File(paramContext.getFilesDir(), ".umeng");
      if (!paramContext.exists())
        paramContext.mkdir();
      cs.a(new File(paramContext, "exchangeIdentity.json"), str1);
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  public final byte[] a()
  {
    cf localcf = new cf();
    localcf.a = this.d;
    localcf.b = this.e;
    localcf.c = r.a(this.f);
    localcf.d = this.i;
    localcf.a();
    localcf.e = this.j;
    localcf.b();
    localcf.f = this.k;
    localcf.c();
    Object localObject = this.l;
    if (localObject == null)
      localObject = null;
    while (true)
    {
      localcf.g = ((ByteBuffer)localObject);
      int i1;
      if (this.n)
      {
        i1 = 1;
        localcf.j = i1;
        localcf.e();
        localcf.h = r.a(this.g);
        localcf.i = r.a(this.h);
      }
      try
      {
        localObject = new da().a(localcf);
        return localObject;
        localObject = ByteBuffer.wrap((byte[])localObject);
        continue;
        i1 = 0;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return null;
  }

  public final String toString()
  {
    int i1 = 1;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(String.format("version : %s\n", new Object[] { this.d }));
    localStringBuilder.append(String.format("address : %s\n", new Object[] { this.e }));
    localStringBuilder.append(String.format("signature : %s\n", new Object[] { r.a(this.f) }));
    localStringBuilder.append(String.format("serial : %s\n", new Object[] { Integer.valueOf(this.i) }));
    localStringBuilder.append(String.format("timestamp : %d\n", new Object[] { Integer.valueOf(this.j) }));
    localStringBuilder.append(String.format("length : %d\n", new Object[] { Integer.valueOf(this.k) }));
    localStringBuilder.append(String.format("guid : %s\n", new Object[] { r.a(this.g) }));
    localStringBuilder.append(String.format("checksum : %s ", new Object[] { r.a(this.h) }));
    if (this.n);
    while (true)
    {
      localStringBuilder.append(String.format("codex : %d", new Object[] { Integer.valueOf(i1) }));
      return localStringBuilder.toString();
      i1 = 0;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.fe
 * JD-Core Version:    0.6.2
 */