package no.nordicsemi.android.dfu;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;
import no.nordicsemi.android.dfu.internal.exception.HexFileValidationException;

class DfuBaseService$4 extends BluetoothGattCallback
{
  DfuBaseService$4(DfuBaseService paramDfuBaseService)
  {
  }

  private String parse(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
  {
    paramBluetoothGattCharacteristic = paramBluetoothGattCharacteristic.getValue();
    if (paramBluetoothGattCharacteristic == null)
      return "";
    int j = paramBluetoothGattCharacteristic.length;
    if (j == 0)
      return "";
    char[] arrayOfChar = new char[j * 3 - 1];
    int i = 0;
    while (i < j)
    {
      int k = paramBluetoothGattCharacteristic[i] & 0xFF;
      arrayOfChar[(i * 3)] = DfuBaseService.access$3300()[(k >>> 4)];
      arrayOfChar[(i * 3 + 1)] = DfuBaseService.access$3300()[(k & 0xF)];
      if (i != j - 1)
        arrayOfChar[(i * 3 + 2)] = '-';
      i += 1;
    }
    return new String(arrayOfChar);
  }

  public void onCharacteristicChanged(BluetoothGatt arg1, BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
  {
    switch (paramBluetoothGattCharacteristic.getIntValue(17, 0).intValue())
    {
    default:
      if (!DfuBaseService.access$2200(this.this$0))
      {
        if (paramBluetoothGattCharacteristic.getIntValue(17, 2).intValue() != 1)
          DfuBaseService.access$2202(this.this$0, true);
        DfuBaseService.access$2400(this.this$0, 5, "Notification received from " + paramBluetoothGattCharacteristic.getUuid() + ", value (0x): " + parse(paramBluetoothGattCharacteristic));
        DfuBaseService.access$3002(this.this$0, paramBluetoothGattCharacteristic.getValue());
      }
      break;
    case 17:
    }
    synchronized (DfuBaseService.access$300(this.this$0))
    {
      while (true)
      {
        DfuBaseService.access$300(this.this$0).notifyAll();
        return;
        BluetoothGattCharacteristic localBluetoothGattCharacteristic = ???.getService(DfuBaseService.access$3100()).getCharacteristic(DfuBaseService.access$1400());
        try
        {
          DfuBaseService.access$3202(this.this$0, paramBluetoothGattCharacteristic.getIntValue(20, 1).intValue());
          DfuBaseService.access$1802(this.this$0, 0);
          DfuBaseService.access$2100(this.this$0);
          if ((DfuBaseService.access$500(this.this$0)) || (DfuBaseService.access$800(this.this$0) != 0) || (DfuBaseService.access$2200(this.this$0)) || (DfuBaseService.access$2300(this.this$0)))
            DfuBaseService.access$2400(this.this$0, 15, "Upload terminated");
        }
        catch (HexFileValidationException )
        {
          DfuBaseService.access$900(this.this$0, "Invalid HEX file");
          DfuBaseService.access$802(this.this$0, 4099);
          continue;
          paramBluetoothGattCharacteristic = DfuBaseService.access$2500(this.this$0);
          int i = DfuBaseService.access$2600(this.this$0).read(paramBluetoothGattCharacteristic);
          DfuBaseService.access$2700(this.this$0, ???, localBluetoothGattCharacteristic, paramBluetoothGattCharacteristic, i);
          DfuBaseService.access$2800(this.this$0);
          return;
        }
        catch (IOException )
        {
          DfuBaseService.access$2900(this.this$0, "Error while reading the input stream", ???);
          DfuBaseService.access$802(this.this$0, 4100);
        }
      }
    }
  }

  public void onCharacteristicRead(BluetoothGatt arg1, BluetoothGattCharacteristic paramBluetoothGattCharacteristic, int paramInt)
  {
    if (paramInt == 0)
    {
      DfuBaseService.access$2400(this.this$0, 5, "Read Response received from " + paramBluetoothGattCharacteristic.getUuid() + ", value (0x): " + parse(paramBluetoothGattCharacteristic));
      DfuBaseService.access$3002(this.this$0, paramBluetoothGattCharacteristic.getValue());
      DfuBaseService.access$602(this.this$0, true);
    }
    synchronized (DfuBaseService.access$300(this.this$0))
    {
      DfuBaseService.access$300(this.this$0).notifyAll();
      return;
      DfuBaseService.access$900(this.this$0, "Characteristic read error: " + paramInt);
      DfuBaseService.access$802(this.this$0, paramInt | 0x4000);
    }
  }

  public void onCharacteristicWrite(BluetoothGatt arg1, BluetoothGattCharacteristic paramBluetoothGattCharacteristic, int paramInt)
  {
    int i = 1;
    if (paramInt == 0)
      if (DfuBaseService.access$1400().equals(paramBluetoothGattCharacteristic.getUuid()))
        if ((DfuBaseService.access$1500(this.this$0)) && (DfuBaseService.access$1600(this.this$0)))
        {
          DfuBaseService.access$1712(this.this$0, paramBluetoothGattCharacteristic.getValue().length);
          DfuBaseService.access$1808(this.this$0);
          if ((DfuBaseService.access$1900(this.this$0) > 0) && (DfuBaseService.access$1800(this.this$0) == DfuBaseService.access$1900(this.this$0)))
          {
            paramInt = 1;
            if (DfuBaseService.access$1700(this.this$0) != DfuBaseService.access$2000(this.this$0))
              break label122;
          }
          while (true)
          {
            if ((paramInt == 0) && (i == 0))
              break label128;
            return;
            paramInt = 0;
            break;
            label122: i = 0;
          }
        }
    while (true)
    {
      try
      {
        label128: DfuBaseService.access$2100(this.this$0);
        if ((DfuBaseService.access$500(this.this$0)) || (DfuBaseService.access$800(this.this$0) != 0) || (DfuBaseService.access$2200(this.this$0)) || (DfuBaseService.access$2300(this.this$0)))
          synchronized (DfuBaseService.access$300(this.this$0))
          {
            DfuBaseService.access$2400(this.this$0, 15, "Upload terminated");
            DfuBaseService.access$300(this.this$0).notifyAll();
            return;
          }
      }
      catch (HexFileValidationException )
      {
        DfuBaseService.access$900(this.this$0, "Invalid HEX file");
        DfuBaseService.access$802(this.this$0, 4099);
        synchronized (DfuBaseService.access$300(this.this$0))
        {
          DfuBaseService.access$300(this.this$0).notifyAll();
          return;
        }
        byte[] arrayOfByte = DfuBaseService.access$2500(this.this$0);
        paramInt = DfuBaseService.access$2600(this.this$0).read(arrayOfByte);
        DfuBaseService.access$2700(this.this$0, ???, paramBluetoothGattCharacteristic, arrayOfByte, paramInt);
        DfuBaseService.access$2800(this.this$0);
        return;
      }
      catch (IOException )
      {
        DfuBaseService.access$2900(this.this$0, "Error while reading the input stream", ???);
        DfuBaseService.access$802(this.this$0, 4100);
        continue;
      }
      if (!DfuBaseService.access$1500(this.this$0))
      {
        DfuBaseService.access$2400(this.this$0, 5, "Data written to " + paramBluetoothGattCharacteristic.getUuid() + ", value (0x): " + parse(paramBluetoothGattCharacteristic));
        DfuBaseService.access$1502(this.this$0, true);
      }
      else
      {
        DfuBaseService.access$2400(this.this$0, 5, "Data written to " + paramBluetoothGattCharacteristic.getUuid() + ", value (0x): " + parse(paramBluetoothGattCharacteristic));
        DfuBaseService.access$1602(this.this$0, true);
        continue;
        DfuBaseService.access$2400(this.this$0, 5, "Data written to " + paramBluetoothGattCharacteristic.getUuid() + ", value (0x): " + parse(paramBluetoothGattCharacteristic));
        DfuBaseService.access$602(this.this$0, true);
        continue;
        if (DfuBaseService.access$2300(this.this$0))
        {
          DfuBaseService.access$602(this.this$0, true);
        }
        else
        {
          DfuBaseService.access$900(this.this$0, "Characteristic write error: " + paramInt);
          DfuBaseService.access$802(this.this$0, paramInt | 0x4000);
        }
      }
    }
  }

  // ERROR //
  public void onConnectionStateChange(BluetoothGatt arg1, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: iload_2
    //   1: ifne +199 -> 200
    //   4: iload_3
    //   5: iconst_2
    //   6: if_icmpne +159 -> 165
    //   9: aload_0
    //   10: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   13: ldc 237
    //   15: invokestatic 240	no/nordicsemi/android/dfu/DfuBaseService:access$100	(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    //   18: aload_0
    //   19: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   22: bipush 254
    //   24: invokestatic 243	no/nordicsemi/android/dfu/DfuBaseService:access$202	(Lno/nordicsemi/android/dfu/DfuBaseService;I)I
    //   27: pop
    //   28: aload_1
    //   29: invokevirtual 247	android/bluetooth/BluetoothGatt:getDevice	()Landroid/bluetooth/BluetoothDevice;
    //   32: invokevirtual 252	android/bluetooth/BluetoothDevice:getBondState	()I
    //   35: bipush 12
    //   37: if_icmpne +23 -> 60
    //   40: aload_0
    //   41: monitorenter
    //   42: aload_0
    //   43: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   46: ldc 254
    //   48: invokestatic 257	no/nordicsemi/android/dfu/DfuBaseService:access$700	(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    //   51: aload_0
    //   52: ldc2_w 258
    //   55: invokevirtual 263	java/lang/Object:wait	(J)V
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: invokevirtual 267	android/bluetooth/BluetoothGatt:discoverServices	()Z
    //   64: istore 4
    //   66: aload_0
    //   67: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   70: astore 5
    //   72: new 61	java/lang/StringBuilder
    //   75: dup
    //   76: ldc_w 269
    //   79: invokespecial 66	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: astore 6
    //   84: iload 4
    //   86: ifeq +72 -> 158
    //   89: ldc_w 271
    //   92: astore_1
    //   93: aload 5
    //   95: aload 6
    //   97: aload_1
    //   98: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: invokestatic 240	no/nordicsemi/android/dfu/DfuBaseService:access$100	(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    //   107: iload 4
    //   109: ifne +36 -> 145
    //   112: aload_0
    //   113: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   116: sipush 4101
    //   119: invokestatic 151	no/nordicsemi/android/dfu/DfuBaseService:access$802	(Lno/nordicsemi/android/dfu/DfuBaseService;I)I
    //   122: pop
    //   123: aload_0
    //   124: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   127: invokestatic 97	no/nordicsemi/android/dfu/DfuBaseService:access$300	(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;
    //   130: astore_1
    //   131: aload_1
    //   132: monitorenter
    //   133: aload_0
    //   134: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   137: invokestatic 97	no/nordicsemi/android/dfu/DfuBaseService:access$300	(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;
    //   140: invokevirtual 102	java/lang/Object:notifyAll	()V
    //   143: aload_1
    //   144: monitorexit
    //   145: return
    //   146: astore 5
    //   148: aload_0
    //   149: monitorexit
    //   150: aload 5
    //   152: athrow
    //   153: astore 5
    //   155: goto -95 -> 60
    //   158: ldc_w 273
    //   161: astore_1
    //   162: goto -69 -> 93
    //   165: iload_3
    //   166: ifne -43 -> 123
    //   169: aload_0
    //   170: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   173: ldc_w 275
    //   176: invokestatic 240	no/nordicsemi/android/dfu/DfuBaseService:access$100	(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    //   179: aload_0
    //   180: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   183: iconst_0
    //   184: invokestatic 278	no/nordicsemi/android/dfu/DfuBaseService:access$402	(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z
    //   187: pop
    //   188: aload_0
    //   189: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   192: iconst_0
    //   193: invokestatic 243	no/nordicsemi/android/dfu/DfuBaseService:access$202	(Lno/nordicsemi/android/dfu/DfuBaseService;I)I
    //   196: pop
    //   197: goto -74 -> 123
    //   200: aload_0
    //   201: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   204: new 61	java/lang/StringBuilder
    //   207: dup
    //   208: ldc_w 280
    //   211: invokespecial 66	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   214: iload_2
    //   215: invokevirtual 190	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   218: ldc_w 282
    //   221: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: iload_3
    //   225: invokevirtual 190	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   228: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   231: invokestatic 148	no/nordicsemi/android/dfu/DfuBaseService:access$900	(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    //   234: aload_0
    //   235: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   238: iconst_0
    //   239: invokestatic 278	no/nordicsemi/android/dfu/DfuBaseService:access$402	(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z
    //   242: pop
    //   243: aload_0
    //   244: getfield 10	no/nordicsemi/android/dfu/DfuBaseService$4:this$0	Lno/nordicsemi/android/dfu/DfuBaseService;
    //   247: ldc_w 283
    //   250: iload_2
    //   251: ior
    //   252: invokestatic 151	no/nordicsemi/android/dfu/DfuBaseService:access$802	(Lno/nordicsemi/android/dfu/DfuBaseService;I)I
    //   255: pop
    //   256: goto -133 -> 123
    //   259: astore 5
    //   261: aload_1
    //   262: monitorexit
    //   263: aload 5
    //   265: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   42	60	146	finally
    //   148	150	146	finally
    //   40	42	153	java/lang/InterruptedException
    //   150	153	153	java/lang/InterruptedException
    //   133	145	259	finally
    //   261	263	259	finally
  }

  public void onDescriptorRead(BluetoothGatt arg1, BluetoothGattDescriptor paramBluetoothGattDescriptor, int paramInt)
  {
    boolean bool = false;
    if (paramInt == 0)
      if ((DfuBaseService.access$1000().equals(paramBluetoothGattDescriptor.getUuid())) && (DfuBaseService.access$1100().equals(paramBluetoothGattDescriptor.getCharacteristic().getUuid())))
      {
        ??? = this.this$0;
        if (paramBluetoothGattDescriptor.getValue()[0] == 2)
          bool = true;
        DfuBaseService.access$1202(???, bool);
        DfuBaseService.access$602(this.this$0, true);
      }
    synchronized (DfuBaseService.access$300(this.this$0))
    {
      DfuBaseService.access$300(this.this$0).notifyAll();
      return;
      DfuBaseService.access$900(this.this$0, "Descriptor read error: " + paramInt);
      DfuBaseService.access$802(this.this$0, paramInt | 0x4000);
    }
  }

  public void onDescriptorWrite(BluetoothGatt arg1, BluetoothGattDescriptor paramBluetoothGattDescriptor, int paramInt)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramInt == 0)
      if (DfuBaseService.access$1000().equals(paramBluetoothGattDescriptor.getUuid()))
      {
        if (!DfuBaseService.access$1100().equals(paramBluetoothGattDescriptor.getCharacteristic().getUuid()))
          break label90;
        ??? = this.this$0;
        if (paramBluetoothGattDescriptor.getValue()[0] != 2)
          break label84;
      }
    while (true)
    {
      DfuBaseService.access$1202(???, bool1);
      synchronized (DfuBaseService.access$300(this.this$0))
      {
        DfuBaseService.access$300(this.this$0).notifyAll();
        return;
        label84: bool1 = false;
        continue;
        label90: ??? = this.this$0;
        if (paramBluetoothGattDescriptor.getValue()[0] == 1);
        for (bool1 = bool2; ; bool1 = false)
        {
          DfuBaseService.access$1302(???, bool1);
          break;
        }
        DfuBaseService.access$900(this.this$0, "Descriptor write error: " + paramInt);
        DfuBaseService.access$802(this.this$0, paramInt | 0x4000);
      }
    }
  }

  public void onServicesDiscovered(BluetoothGatt arg1, int paramInt)
  {
    if (paramInt == 0)
    {
      DfuBaseService.access$100(this.this$0, "Services discovered");
      DfuBaseService.access$202(this.this$0, -3);
    }
    synchronized (DfuBaseService.access$300(this.this$0))
    {
      DfuBaseService.access$300(this.this$0).notifyAll();
      return;
      DfuBaseService.access$900(this.this$0, "Service discovery error: " + paramInt);
      DfuBaseService.access$802(this.this$0, paramInt | 0x4000);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.DfuBaseService.4
 * JD-Core Version:    0.6.2
 */