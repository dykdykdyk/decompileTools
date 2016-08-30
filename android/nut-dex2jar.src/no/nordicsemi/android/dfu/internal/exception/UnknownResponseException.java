package no.nordicsemi.android.dfu.internal.exception;

public class UnknownResponseException extends Exception
{
  private static final char[] HEX_ARRAY = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private static final long serialVersionUID = -8716125467309979289L;
  private final int mExpectedOpCode;
  private final byte[] mResponse;

  public UnknownResponseException(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    super(paramString);
    if (paramArrayOfByte != null);
    while (true)
    {
      this.mResponse = paramArrayOfByte;
      this.mExpectedOpCode = paramInt;
      return;
      paramArrayOfByte = new byte[0];
    }
  }

  public static String bytesToHex(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= paramInt1) || (paramInt2 <= 0))
      return "";
    int i = Math.min(paramInt2, paramArrayOfByte.length - paramInt1);
    char[] arrayOfChar = new char[i * 2];
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      int j = paramArrayOfByte[(paramInt1 + paramInt2)] & 0xFF;
      arrayOfChar[(paramInt2 * 2)] = HEX_ARRAY[(j >>> 4)];
      arrayOfChar[(paramInt2 * 2 + 1)] = HEX_ARRAY[(j & 0xF)];
      paramInt2 += 1;
    }
    return "0x" + new String(arrayOfChar);
  }

  public String getMessage()
  {
    return String.format("%s (response: %s, expected: 0x10%02X..)", new Object[] { super.getMessage(), bytesToHex(this.mResponse, 0, this.mResponse.length), Integer.valueOf(this.mExpectedOpCode) });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.exception.UnknownResponseException
 * JD-Core Version:    0.6.2
 */