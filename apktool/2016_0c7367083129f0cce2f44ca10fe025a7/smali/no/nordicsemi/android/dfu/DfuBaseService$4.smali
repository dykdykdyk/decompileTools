.class Lno/nordicsemi/android/dfu/DfuBaseService$4;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "DfuBaseService.java"


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/DfuBaseService;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method private parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1007
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    .line 1008
    if-nez v1, :cond_0

    .line 1009
    const-string v0, ""

    .line 1022
    :goto_0
    return-object v0

    .line 1010
    :cond_0
    array-length v2, v1

    .line 1011
    if-nez v2, :cond_1

    .line 1012
    const-string v0, ""

    goto :goto_0

    .line 1014
    :cond_1
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, -0x1

    new-array v3, v0, [C

    .line 1015
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 1016
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    .line 1017
    mul-int/lit8 v5, v0, 0x3

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->HEX_ARRAY:[C
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3300()[C

    move-result-object v6

    ushr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    .line 1018
    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->HEX_ARRAY:[C
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3300()[C

    move-result-object v6

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 1019
    add-int/lit8 v4, v2, -0x1

    if-eq v0, v4, :cond_2

    .line 1020
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    const/16 v5, 0x2d

    aput-char v5, v3, v4

    .line 1015
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1022
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    .prologue
    const/16 v2, 0x11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 950
    invoke-virtual {p2, v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 952
    packed-switch v0, :pswitch_data_0

    .line 988
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2200(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 990
    const/4 v0, 0x2

    invoke-virtual {p2, v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 991
    if-eq v0, v1, :cond_0

    .line 992
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2202(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 994
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Notification received from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value (0x): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2400(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 995
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3002(Lno/nordicsemi/android/dfu/DfuBaseService;[B)[B

    .line 1000
    :cond_1
    :goto_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1001
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1002
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    .line 954
    :pswitch_0
    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_SERVICE_UUID:Ljava/util/UUID;
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3100()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1400()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 957
    :try_start_1
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesConfirmed:I
    invoke-static {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3202(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    .line 958
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 v2, 0x0

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I
    invoke-static {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    .line 960
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->waitIfPaused()V
    invoke-static {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2100(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    .line 963
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z
    invoke-static {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$500(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$800(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z
    invoke-static {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2200(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z
    invoke-static {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2300(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 964
    :cond_2
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v1, 0xf

    const-string v2, "Upload terminated"

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2400(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V
    :try_end_1
    .catch Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v1, "Invalid HEX file"

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v1, 0x1003

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto :goto_0

    .line 968
    :cond_3
    :try_start_2
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mBuffer:[B
    invoke-static {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2500(Lno/nordicsemi/android/dfu/DfuBaseService;)[B

    move-result-object v1

    .line 969
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    invoke-static {v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2600(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 970
    iget-object v3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    invoke-static {v3, p1, v0, v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2700(Lno/nordicsemi/android/dfu/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 971
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification()V
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2800(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    :try_end_2
    .catch Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 976
    :catch_1
    move-exception v0

    .line 977
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v2, "Error while reading the input stream"

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 978
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v1, 0x1004

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto/16 :goto_0

    .line 1002
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 952
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .prologue
    .line 930
    if-nez p3, :cond_0

    .line 934
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Read Response received from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value (0x): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2400(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 935
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3002(Lno/nordicsemi/android/dfu/DfuBaseService;[B)[B

    .line 936
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 v1, 0x1

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$602(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 943
    :goto_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 944
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 945
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 938
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Characteristic read error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 v1, p3, 0x4000

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto :goto_0

    .line 945
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 845
    if-nez p3, :cond_9

    .line 855
    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1400()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 856
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1500(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1600(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 858
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    array-length v3, v3

    # += operator for: Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I
    invoke-static {v0, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1712(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    .line 859
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # operator++ for: Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1808(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    .line 863
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsBeforeNotification:I
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1900(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1800(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v0

    iget-object v3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsBeforeNotification:I
    invoke-static {v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1900(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 864
    :goto_0
    iget-object v3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I
    invoke-static {v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1700(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v3

    iget-object v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I
    invoke-static {v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2000(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 866
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 925
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 863
    goto :goto_0

    :cond_2
    move v1, v2

    .line 864
    goto :goto_1

    .line 871
    :cond_3
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->waitIfPaused()V
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2100(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    .line 874
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$500(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$800(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2200(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2300(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 876
    :cond_4
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 877
    :try_start_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v2, 0xf

    const-string v3, "Upload terminated"

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    invoke-static {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2400(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 878
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 879
    monitor-exit v1

    goto :goto_2

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 889
    :catch_0
    move-exception v0

    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v1, "Invalid HEX file"

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v1, 0x1003

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    .line 923
    :goto_3
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 924
    :try_start_3
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 925
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 883
    :cond_5
    :try_start_4
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mBuffer:[B
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2500(Lno/nordicsemi/android/dfu/DfuBaseService;)[B

    move-result-object v0

    .line 884
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    invoke-static {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2600(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 885
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    invoke-static {v2, p1, p2, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2700(Lno/nordicsemi/android/dfu/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 886
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification()V
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2800(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    :try_end_4
    .catch Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 891
    :catch_1
    move-exception v0

    .line 892
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v2, "Error while reading the input stream"

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 893
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v1, 0x1004

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto :goto_3

    .line 895
    :cond_6
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1500(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 897
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data written to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value (0x): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    invoke-static {v0, v4, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2400(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 898
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1502(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    goto :goto_3

    .line 901
    :cond_7
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data written to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value (0x): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    invoke-static {v0, v4, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2400(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 902
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1602(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    goto/16 :goto_3

    .line 906
    :cond_8
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data written to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value (0x): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    invoke-static {v0, v4, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2400(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 907
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$602(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    goto/16 :goto_3

    .line 914
    :cond_9
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2300(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 915
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$602(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    goto/16 :goto_3

    .line 917
    :cond_a
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Characteristic write error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 v1, p3, 0x4000

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto/16 :goto_3
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 723
    if-nez p2, :cond_5

    .line 724
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 725
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v1, "Connected to GATT server"

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 v1, -0x2

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$202(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    .line 740
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 742
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :try_start_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v1, "Waiting 1600 ms for a possible Service Changed indication..."

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$700(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 744
    const-wide/16 v0, 0x640

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 750
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v1

    .line 758
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Attempting to start service discovery... "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v0, "succeed"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 760
    if-nez v1, :cond_2

    .line 761
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v1, 0x1005

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    .line 778
    :cond_1
    :goto_2
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 779
    :try_start_2
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 780
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    return-void

    .line 750
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 758
    :cond_3
    const-string v0, "failed"

    goto :goto_1

    .line 766
    :cond_4
    if-nez p3, :cond_1

    .line 767
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v1, "Disconnected from GATT server"

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z
    invoke-static {v0, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$402(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 769
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I
    invoke-static {v0, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$202(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto :goto_2

    .line 772
    :cond_5
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection state change error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z
    invoke-static {v0, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$402(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 774
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const v1, 0x8000

    or-int/2addr v1, p2

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto :goto_2

    .line 780
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 801
    if-nez p3, :cond_2

    .line 802
    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1000()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1100()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 805
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v1

    :cond_0
    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mServiceChangedIndicationsEnabled:Z
    invoke-static {v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1202(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 806
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$602(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 815
    :cond_1
    :goto_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 816
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 817
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 810
    :cond_2
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Descriptor read error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 v1, p3, 0x4000

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto :goto_0

    .line 817
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 822
    if-nez p3, :cond_4

    .line 823
    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1000()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1100()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 826
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_0
    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mServiceChangedIndicationsEnabled:Z
    invoke-static {v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1202(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 838
    :cond_0
    :goto_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 840
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    move v0, v1

    .line 826
    goto :goto_0

    .line 829
    :cond_2
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v1

    if-ne v3, v0, :cond_3

    :goto_2
    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mNotificationsEnabled:Z
    invoke-static {v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1302(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 833
    :cond_4
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Descriptor write error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 v1, p3, 0x4000

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto :goto_1

    .line 840
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .prologue
    .line 785
    if-nez p2, :cond_0

    .line 786
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v1, "Services discovered"

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 v1, -0x3

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$202(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    .line 794
    :goto_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 795
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 796
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service discovery error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 v1, p2, 0x4000

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto :goto_0

    .line 796
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
