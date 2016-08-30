package com.nut.blehunter.ble;

import android.os.ParcelUuid;
import android.util.Log;
import android.util.SparseArray;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;

public final class af
{
  public static final ParcelUuid a = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");
  final List<ParcelUuid> b;
  final SparseArray<byte[]> c;
  final String d;
  private final int e;
  private final Map<ParcelUuid, byte[]> f;
  private final int g;
  private final byte[] h;

  private af(List<ParcelUuid> paramList, SparseArray<byte[]> paramSparseArray, Map<ParcelUuid, byte[]> paramMap, int paramInt1, int paramInt2, String paramString, byte[] paramArrayOfByte)
  {
    this.b = paramList;
    this.c = paramSparseArray;
    this.f = paramMap;
    this.d = paramString;
    this.e = paramInt1;
    this.g = paramInt2;
    this.h = paramArrayOfByte;
  }

  private static int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, List<ParcelUuid> paramList)
  {
    while (paramInt2 > 0)
    {
      paramList.add(b(a(paramArrayOfByte, paramInt1, paramInt3)));
      paramInt2 -= paramInt3;
      paramInt1 += paramInt3;
    }
    return paramInt1;
  }

  public static af a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    int k = 0;
    ArrayList localArrayList2 = new ArrayList();
    SparseArray localSparseArray = new SparseArray();
    HashMap localHashMap = new HashMap();
    int i = -2147483648;
    Object localObject1 = null;
    int j = -1;
    int m;
    try
    {
      if (k >= paramArrayOfByte.length)
        break label370;
      int n = k + 1;
      k = paramArrayOfByte[k] & 0xFF;
      if (k == 0)
        break label370;
      k -= 1;
      m = n + 1;
      switch (paramArrayOfByte[n] & 0xFF)
      {
      case 2:
      case 3:
        a(paramArrayOfByte, m, k, 2, localArrayList2);
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 22:
      case 255:
      default:
      case 1:
      case 10:
      }
    }
    catch (Exception localException)
    {
      Log.e("ScanRecord", "unable to parse scan record: " + Arrays.toString(paramArrayOfByte));
      return new af(null, null, null, -1, -2147483648, null, paramArrayOfByte);
    }
    a(paramArrayOfByte, m, k, 4, localArrayList2);
    break label410;
    a(paramArrayOfByte, m, k, 16, localArrayList2);
    break label410;
    Object localObject2 = new String(a(paramArrayOfByte, m, k));
    break label410;
    localHashMap.put(b(a(paramArrayOfByte, m, 2)), a(paramArrayOfByte, m + 2, k - 2));
    break label410;
    localSparseArray.put(((paramArrayOfByte[(m + 1)] & 0xFF) << 8) + (paramArrayOfByte[m] & 0xFF), a(paramArrayOfByte, m + 2, k - 2));
    break label410;
    label370: ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2.isEmpty())
      localArrayList1 = null;
    localObject2 = new af(localArrayList1, localSparseArray, localHashMap, j, i, (String)localObject2, paramArrayOfByte);
    return localObject2;
    while (true)
    {
      label410: k += m;
      break;
      j = paramArrayOfByte[m] & 0xFF;
      continue;
      i = paramArrayOfByte[m];
    }
  }

  private static String a(SparseArray<byte[]> paramSparseArray)
  {
    if (paramSparseArray == null)
      return "null";
    if (paramSparseArray.size() == 0)
      return "{}";
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('{');
    int i = 0;
    while (i < paramSparseArray.size())
    {
      localStringBuilder.append(paramSparseArray.keyAt(i)).append("=").append(Arrays.toString((byte[])paramSparseArray.valueAt(i)));
      i += 1;
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }

  private static <T> String a(Map<T, byte[]> paramMap)
  {
    if (paramMap == null)
      return "null";
    if (paramMap.isEmpty())
      return "{}";
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('{');
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = ((Map.Entry)localIterator.next()).getKey();
      localStringBuilder.append(localObject).append("=").append(Arrays.toString((byte[])paramMap.get(localObject)));
      if (localIterator.hasNext())
        localStringBuilder.append(", ");
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }

  private static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }

  private static ParcelUuid b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("uuidBytes cannot be null");
    int i = paramArrayOfByte.length;
    if ((i != 2) && (i != 4) && (i != 16))
      throw new IllegalArgumentException("uuidBytes length invalid - " + i);
    if (i == 16)
    {
      paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte).order(ByteOrder.LITTLE_ENDIAN);
      return new ParcelUuid(new UUID(paramArrayOfByte.getLong(8), paramArrayOfByte.getLong(0)));
    }
    if (i == 2);
    for (long l = (paramArrayOfByte[0] & 0xFF) + ((paramArrayOfByte[1] & 0xFF) << 8); ; l = (paramArrayOfByte[0] & 0xFF) + ((paramArrayOfByte[1] & 0xFF) << 8) + ((paramArrayOfByte[2] & 0xFF) << 16) + ((paramArrayOfByte[3] & 0xFF) << 24))
      return new ParcelUuid(new UUID(a.getUuid().getMostSignificantBits() + (l << 32), a.getUuid().getLeastSignificantBits()));
  }

  public final String toString()
  {
    return "ScanRecord [mAdvertiseFlags=" + this.e + ", mServiceUuids=" + this.b + ", mManufacturerSpecificData=" + a(this.c) + ", mServiceData=" + a(this.f) + ", mTxPowerLevel=" + this.g + ", mDeviceName=" + this.d + "]";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.af
 * JD-Core Version:    0.6.2
 */