package com.nut.blehunter.d;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

public final class a
{
  public static void a(String paramString1, String paramString2, String paramString3)
    throws IOException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException
  {
    paramString2 = new File(paramString2);
    paramString3 = new File(paramString3);
    if ((paramString2.exists()) && (paramString2.isFile()))
    {
      if (!paramString3.getParentFile().exists())
        paramString3.getParentFile().mkdirs();
      paramString3.createNewFile();
      paramString2 = new FileInputStream(paramString2);
      paramString3 = new FileOutputStream(paramString3);
      paramString1 = new SecretKeySpec(paramString1.getBytes("utf-8"), "AES");
      Object localObject = Cipher.getInstance("AES");
      ((Cipher)localObject).init(2, paramString1);
      paramString1 = new CipherOutputStream(paramString3, (Cipher)localObject);
      localObject = new byte[1024];
      while (true)
      {
        int i = paramString2.read((byte[])localObject);
        if (i == -1)
          break;
        paramString1.write((byte[])localObject, 0, i);
        paramString1.flush();
      }
      paramString1.close();
      paramString3.close();
      paramString2.close();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.a
 * JD-Core Version:    0.6.2
 */