.class public final Lcom/nut/blehunter/ble/r;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "NutDeviceController.java"


# instance fields
.field private A:Lcom/nut/blehunter/ble/p;

.field private B:Landroid/content/Context;

.field private C:Lcom/nut/blehunter/ble/u;

.field private D:Lcom/nut/blehunter/ble/w;

.field private E:Ljava/util/concurrent/ScheduledFuture;

.field private F:Ljava/util/concurrent/ScheduledFuture;

.field a:Landroid/bluetooth/BluetoothDevice;

.field b:Landroid/bluetooth/BluetoothGatt;

.field c:Lcom/nut/blehunter/ble/y;

.field d:Lcom/nut/blehunter/ble/aa;

.field e:Lcom/nut/blehunter/ble/x;

.field f:Lcom/nut/blehunter/ble/ac;

.field g:Lcom/nut/blehunter/ble/z;

.field h:Ljava/util/concurrent/ScheduledFuture;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:[B

.field m:I

.field n:Z

.field o:Z

.field p:I

.field q:Z

.field r:Z

.field s:I

.field t:I

.field u:I

.field v:I

.field w:Z

.field x:Ljava/util/concurrent/ScheduledExecutorService;

.field private y:Lcom/nut/blehunter/ble/t;

.field private z:Lcom/nut/blehunter/ble/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;ZLcom/nut/blehunter/ble/t;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->i:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->j:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->k:Ljava/lang/String;

    .line 127
    iput-boolean v3, p0, Lcom/nut/blehunter/ble/r;->n:Z

    .line 129
    iput-boolean v3, p0, Lcom/nut/blehunter/ble/r;->o:Z

    .line 133
    iput-boolean v3, p0, Lcom/nut/blehunter/ble/r;->q:Z

    .line 135
    iput-boolean v4, p0, Lcom/nut/blehunter/ble/r;->r:Z

    .line 141
    iput v3, p0, Lcom/nut/blehunter/ble/r;->u:I

    .line 143
    const/16 v0, 0xf

    iput v0, p0, Lcom/nut/blehunter/ble/r;->v:I

    .line 145
    iput-boolean v4, p0, Lcom/nut/blehunter/ble/r;->w:Z

    .line 181
    iput-object p1, p0, Lcom/nut/blehunter/ble/r;->B:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 183
    iput-boolean p3, p0, Lcom/nut/blehunter/ble/r;->n:Z

    .line 184
    iput-object p4, p0, Lcom/nut/blehunter/ble/r;->y:Lcom/nut/blehunter/ble/t;

    .line 185
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->x:Ljava/util/concurrent/ScheduledExecutorService;

    .line 186
    new-instance v0, Lcom/nut/blehunter/ble/v;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ble/v;-><init>(Lcom/nut/blehunter/ble/r;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->z:Lcom/nut/blehunter/ble/v;

    .line 187
    new-instance v0, Lcom/nut/blehunter/ble/u;

    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->z:Lcom/nut/blehunter/ble/v;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/ble/u;-><init>(Lcom/nut/blehunter/ble/v;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->C:Lcom/nut/blehunter/ble/u;

    .line 188
    new-instance v0, Lcom/nut/blehunter/ble/w;

    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->z:Lcom/nut/blehunter/ble/v;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/ble/w;-><init>(Lcom/nut/blehunter/ble/v;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->D:Lcom/nut/blehunter/ble/w;

    .line 189
    new-instance v0, Lcom/nut/blehunter/ble/z;

    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->z:Lcom/nut/blehunter/ble/v;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/ble/z;-><init>(Lcom/nut/blehunter/ble/v;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->g:Lcom/nut/blehunter/ble/z;

    .line 190
    iput p5, p0, Lcom/nut/blehunter/ble/r;->p:I

    .line 191
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NutDeviceController NutDeviceController product="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget v1, v0, Lcom/nut/blehunter/entity/t;->j:I

    iput v1, p0, Lcom/nut/blehunter/ble/r;->v:I

    .line 195
    iput-boolean v3, p0, Lcom/nut/blehunter/ble/r;->w:Z

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NutDeviceController NutDeviceController product.appAlertDelay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/nut/blehunter/entity/t;->j:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-boolean v4, p0, Lcom/nut/blehunter/ble/r;->w:Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothGatt;
    .locals 5

    .prologue
    .line 219
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "connectGatt"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/bluetooth/BluetoothGattCallback;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 222
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TRANSPORT_LE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 224
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 235
    :goto_0
    return-object v0

    .line 227
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 235
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 231
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 233
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/nut/blehunter/ble/r;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method private declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    const-string v0, "controller current state is %s new state %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nut/blehunter/ble/r;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget v0, p0, Lcom/nut/blehunter/ble/r;->m:I

    if-eq v0, p1, :cond_0

    .line 297
    iput p1, p0, Lcom/nut/blehunter/ble/r;->m:I

    .line 298
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->y:Lcom/nut/blehunter/ble/t;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->y:Lcom/nut/blehunter/ble/t;

    invoke-interface {v0, p0, p1}, Lcom/nut/blehunter/ble/t;->a(Lcom/nut/blehunter/ble/r;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static a(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "refresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Refreshing result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    const-string v1, "An exception occurred while refreshing device"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 826
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 827
    const-string v0, "BluetoothAdapter not initialized"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    :goto_0
    return-void

    .line 831
    :cond_0
    if-nez p1, :cond_1

    .line 832
    const-string v0, "characteristic %s not found"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 837
    sget-object v0, Lcom/nut/blehunter/ble/aj;->b:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 839
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_0
.end method

.method public static a(Landroid/bluetooth/BluetoothGattCharacteristic;B)V
    .locals 2

    .prologue
    .line 1006
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 1007
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 1008
    return-void
.end method

.method private a(Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 844
    sget-object v0, Lcom/nut/blehunter/ble/aj;->o:Ljava/util/UUID;

    invoke-virtual {p0, v0, p1}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 846
    if-nez v0, :cond_0

    .line 847
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 851
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/UUID;[B)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 585
    if-eqz p2, :cond_0

    .line 586
    const-string v0, "device info is %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    const/4 v1, 0x0

    .line 589
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :try_start_1
    const-string v1, "read device info is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    :cond_0
    :goto_1
    return-void

    .line 592
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    const-string v2, "parse device info exception"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, La/a/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 597
    :cond_1
    sget-object v1, Lcom/nut/blehunter/ble/aj;->q:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->i:Ljava/lang/String;

    goto :goto_1

    .line 599
    :cond_2
    sget-object v1, Lcom/nut/blehunter/ble/aj;->p:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 600
    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->j:Ljava/lang/String;

    goto :goto_1

    .line 601
    :cond_3
    sget-object v1, Lcom/nut/blehunter/ble/aj;->r:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->k:Ljava/lang/String;

    goto :goto_1

    .line 592
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private b(Ljava/util/UUID;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 987
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_1

    .line 990
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 994
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ble/r;->b(Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 996
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 998
    :cond_0
    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->d:Lcom/nut/blehunter/ble/aa;

    .line 389
    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->A:Lcom/nut/blehunter/ble/p;

    .line 390
    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->c:Lcom/nut/blehunter/ble/y;

    .line 391
    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->e:Lcom/nut/blehunter/ble/x;

    .line 392
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 532
    sget-object v0, Lcom/nut/blehunter/ble/aj;->o:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->b(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    sget-object v0, Lcom/nut/blehunter/ble/aj;->o:Ljava/util/UUID;

    sget-object v1, Lcom/nut/blehunter/ble/aj;->q:Ljava/util/UUID;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->b(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/nut/blehunter/ble/aj;->q:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;)V

    .line 545
    :goto_0
    return-void

    .line 536
    :cond_0
    sget-object v0, Lcom/nut/blehunter/ble/aj;->o:Ljava/util/UUID;

    sget-object v1, Lcom/nut/blehunter/ble/aj;->p:Ljava/util/UUID;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->b(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    sget-object v0, Lcom/nut/blehunter/ble/aj;->p:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;)V

    goto :goto_0

    .line 540
    :cond_1
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->e()V

    goto :goto_0

    .line 543
    :cond_2
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 577
    sget-object v0, Lcom/nut/blehunter/ble/aj;->h:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->b(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3921
    sget-object v0, Lcom/nut/blehunter/ble/aj;->h:Ljava/util/UUID;

    sget-object v1, Lcom/nut/blehunter/ble/aj;->i:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 3923
    if-nez v0, :cond_0

    .line 3924
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 3925
    :goto_0
    return-void

    .line 3927
    :cond_0
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 3928
    sget-object v1, Lcom/nut/blehunter/ble/aj;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 3930
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 3931
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    .line 580
    :cond_1
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 935
    const-string v0, "startOauth start"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 936
    sget-object v0, Lcom/nut/blehunter/ble/aj;->a:Ljava/util/UUID;

    sget-object v1, Lcom/nut/blehunter/ble/aj;->c:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 939
    if-nez v0, :cond_0

    .line 940
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 949
    :goto_0
    return-void

    .line 943
    :cond_0
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 944
    sget-object v1, Lcom/nut/blehunter/ble/aj;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 946
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 947
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->E:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->E:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->E:Ljava/util/concurrent/ScheduledFuture;

    .line 1039
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->F:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->F:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1072
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->F:Ljava/util/concurrent/ScheduledFuture;

    .line 1074
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 971
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_1

    .line 972
    const-string v1, "Bluetooth device not connected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, La/a/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    iget v1, p0, Lcom/nut/blehunter/ble/r;->m:I

    if-eqz v1, :cond_0

    .line 974
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 983
    :cond_0
    :goto_0
    return-object v0

    .line 978
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 979
    if-nez v1, :cond_2

    .line 980
    const-string v1, "service %s not found"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 983
    :cond_2
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 744
    iput-object v2, p0, Lcom/nut/blehunter/ble/r;->c:Lcom/nut/blehunter/ble/y;

    .line 745
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->h:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 747
    iput-object v2, p0, Lcom/nut/blehunter/ble/r;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 749
    :cond_0
    return-void
.end method

.method public final a(Lcom/nut/blehunter/ble/p;Lcom/nut/blehunter/ble/ad;Lcom/nut/blehunter/ble/ai;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iput-object p1, p0, Lcom/nut/blehunter/ble/r;->A:Lcom/nut/blehunter/ble/p;

    .line 206
    new-instance v0, Lcom/nut/blehunter/ble/ag;

    invoke-direct {v0, p0, p2, p3}, Lcom/nut/blehunter/ble/ag;-><init>(Lcom/nut/blehunter/ble/r;Lcom/nut/blehunter/ble/ad;Lcom/nut/blehunter/ble/ai;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    .line 207
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->a(I)V

    .line 209
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->B:Landroid/content/Context;

    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    .line 210
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->B:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    .line 214
    :cond_0
    const-string v0, "Start connect device"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 854
    sget-object v0, Lcom/nut/blehunter/ble/aj;->a:Ljava/util/UUID;

    sget-object v1, Lcom/nut/blehunter/ble/aj;->d:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    iput p2, p0, Lcom/nut/blehunter/ble/r;->s:I

    .line 861
    iput p3, p0, Lcom/nut/blehunter/ble/r;->t:I

    .line 863
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 864
    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 865
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 866
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 867
    const-string v1, "byte uuid array is %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 869
    const/16 v1, 0x11

    new-array v1, v1, [B

    .line 870
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 871
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 872
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 873
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 875
    const-string v2, "wechat data is %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    const-string v2, "wechat data hex is %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 402
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->B:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->B:Landroid/content/Context;

    const v2, 0x7f060257

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    array-length v0, p2

    if-nez v0, :cond_2

    .line 2023
    :goto_0
    sget-object v0, Lcom/nut/blehunter/q;->a:Lcom/nut/blehunter/q;

    if-nez v0, :cond_0

    .line 2024
    new-instance v0, Lcom/nut/blehunter/q;

    invoke-direct {v0}, Lcom/nut/blehunter/q;-><init>()V

    sput-object v0, Lcom/nut/blehunter/q;->a:Lcom/nut/blehunter/q;

    .line 2026
    :cond_0
    sget-object v0, Lcom/nut/blehunter/q;->a:Lcom/nut/blehunter/q;

    .line 2036
    const-string v1, ""

    .line 3030
    iget-object v2, v0, Lcom/nut/blehunter/q;->b:Ljava/lang/StringBuilder;

    new-instance v3, Lcom/nut/blehunter/s;

    invoke-direct {v3, p1, v1}, Lcom/nut/blehunter/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/nut/blehunter/s;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    iget-object v1, v0, Lcom/nut/blehunter/q;->b:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->B:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v4

    .line 3144
    iget-object v4, v4, Lcom/nut/blehunter/NutTrackerApplication;->c:Ljava/lang/String;

    .line 3045
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/nut/blehunter/q;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nut/blehunter/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3046
    iget-object v0, v0, Lcom/nut/blehunter/q;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 409
    :cond_1
    return-void

    .line 405
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->g()V

    .line 346
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->h()V

    .line 347
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/ac;->a()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->c()V

    .line 1381
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->a(I)V

    .line 1382
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 1383
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 353
    :cond_1
    if-nez p1, :cond_2

    .line 355
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :try_start_1
    const-string v0, "Waiting 3200 ms for manually disconnect."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    const-wide/16 v0, 0xc80

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 358
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :goto_0
    invoke-direct {p0, v3}, Lcom/nut/blehunter/ble/r;->a(I)V

    .line 364
    :cond_2
    const-string v0, "terminateConnection isWaitCallback=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    return-void

    .line 358
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final a([B)V
    .locals 2

    .prologue
    .line 1011
    sget-object v0, Lcom/nut/blehunter/ble/aj;->a:Ljava/util/UUID;

    sget-object v1, Lcom/nut/blehunter/ble/aj;->d:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 1013
    if-nez v0, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1016
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 1017
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 755
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 757
    const/4 v1, 0x6

    aput-byte v1, v0, v3

    .line 762
    sget-object v1, Lcom/nut/blehunter/ble/aj;->a:Ljava/util/UUID;

    sget-object v2, Lcom/nut/blehunter/ble/aj;->n:Ljava/util/UUID;

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 764
    if-nez v1, :cond_0

    .line 770
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 768
    iget-object v2, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 769
    const-string v1, "Device Sleep value=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 791
    sget-object v0, Lcom/nut/blehunter/ble/aj;->k:Ljava/util/UUID;

    sget-object v3, Lcom/nut/blehunter/ble/aj;->m:Ljava/util/UUID;

    invoke-virtual {p0, v0, v3}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 793
    if-nez v3, :cond_0

    .line 800
    :goto_0
    return-void

    .line 796
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/nut/blehunter/ble/r;->a(Landroid/bluetooth/BluetoothGattCharacteristic;B)V

    .line 798
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 799
    const-string v0, "Disconnect Immediate Alert value=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 796
    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 444
    instance-of v2, p1, Lcom/nut/blehunter/ble/r;

    if-nez v2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 447
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 448
    goto :goto_0

    .line 451
    :cond_2
    check-cast p1, Lcom/nut/blehunter/ble/r;

    .line 3309
    iget-object v2, p1, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 454
    iget-object v3, p0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    move v0, v1

    .line 455
    goto :goto_0

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 457
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x3e

    .line 439
    return v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 626
    const-string v0, "device %s onCharacteristicChanged: %s, value=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    const-string v0, "CharacteristicChanged:uuid=%s, value=%s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->h()V

    .line 630
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 631
    sget-object v1, Lcom/nut/blehunter/ble/aj;->c:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 632
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 633
    invoke-static {v0}, Lcom/nut/blehunter/d/q;->a([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    aget-byte v1, v0, v4

    .line 637
    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    .line 638
    const-string v1, "set device configs result is %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 640
    :cond_2
    const/16 v2, 0x1d

    if-ne v1, v2, :cond_3

    .line 641
    const-string v1, "device configs hex is %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/nut/blehunter/ble/r;->l:[B

    .line 643
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->l:[B

    iget-object v2, p0, Lcom/nut/blehunter/ble/r;->l:[B

    array-length v2, v2

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->e:Lcom/nut/blehunter/ble/x;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->e:Lcom/nut/blehunter/ble/x;

    invoke-interface {v0, p0}, Lcom/nut/blehunter/ble/x;->d(Lcom/nut/blehunter/ble/r;)V

    goto :goto_0

    .line 647
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/ble/ac;->a(Ljava/lang/String;[B)V

    goto :goto_0

    .line 650
    :cond_4
    sget-object v1, Lcom/nut/blehunter/ble/aj;->i:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 651
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->A:Lcom/nut/blehunter/ble/p;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->A:Lcom/nut/blehunter/ble/p;

    invoke-interface {v0, p0}, Lcom/nut/blehunter/ble/p;->b(Lcom/nut/blehunter/ble/r;)V

    goto :goto_0

    .line 654
    :cond_5
    sget-object v1, Lcom/nut/blehunter/ble/aj;->g:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 656
    aget-byte v0, v0, v4

    iput v0, p0, Lcom/nut/blehunter/ble/r;->u:I

    .line 657
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->A:Lcom/nut/blehunter/ble/p;

    if-eqz v0, :cond_6

    .line 658
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->A:Lcom/nut/blehunter/ble/p;

    iget v1, p0, Lcom/nut/blehunter/ble/r;->u:I

    invoke-interface {v0, p0, v1}, Lcom/nut/blehunter/ble/p;->b(Lcom/nut/blehunter/ble/r;I)V

    .line 661
    :cond_6
    const-string v0, "battery is %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/nut/blehunter/ble/r;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 550
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 551
    const-string v1, "read characteristic %s , status is %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    const-string v1, "CharacteristicRead:uuid=%s, value=%s, status=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-static {v3}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->h()V

    .line 555
    sget-object v1, Lcom/nut/blehunter/ble/aj;->q:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;[B)V

    .line 557
    sget-object v0, Lcom/nut/blehunter/ble/aj;->p:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    sget-object v1, Lcom/nut/blehunter/ble/aj;->p:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 559
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;[B)V

    .line 560
    sget-object v0, Lcom/nut/blehunter/ble/aj;->o:Ljava/util/UUID;

    sget-object v1, Lcom/nut/blehunter/ble/aj;->r:Ljava/util/UUID;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->b(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    sget-object v0, Lcom/nut/blehunter/ble/aj;->r:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;)V

    goto :goto_0

    .line 564
    :cond_2
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->e()V

    goto :goto_0

    .line 566
    :cond_3
    sget-object v1, Lcom/nut/blehunter/ble/aj;->r:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;[B)V

    .line 568
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->e()V

    goto :goto_0
.end method

.method public final onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 610
    const-string v0, "characteristic %s value %s is write status is %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    const-string v0, "CharacteristicWrite:uuid=%s, value=%s, status=%s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/nut/blehunter/ble/aj;->n:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 616
    aget-byte v0, v0, v3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->d:Lcom/nut/blehunter/ble/aa;

    if-eqz v0, :cond_0

    .line 617
    iput-boolean v3, p0, Lcom/nut/blehunter/ble/r;->n:Z

    .line 618
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->d:Lcom/nut/blehunter/ble/aa;

    invoke-interface {v0, p0, v4}, Lcom/nut/blehunter/ble/aa;->a(Lcom/nut/blehunter/ble/r;Z)V

    .line 621
    :cond_0
    return-void
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 466
    const-string v1, "device %s Connection State Changed: %s new state is %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    if-ne p3, v4, :cond_0

    const-string v0, "Connected"

    :goto_0
    aput-object v0, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    const-string v0, "Connection State Changed: status=%s newState=%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    if-ne p3, v4, :cond_1

    .line 472
    iput-object p1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    .line 473
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->a(I)V

    .line 475
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :try_start_1
    const-string v0, "Waiting 1600 ms for a possible Service Changed indication..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    const-wide/16 v0, 0x640

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 483
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :goto_1
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->g()V

    .line 489
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->z:Lcom/nut/blehunter/ble/v;

    new-instance v1, Lcom/nut/blehunter/ble/s;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ble/s;-><init>(Lcom/nut/blehunter/ble/r;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ble/v;->post(Ljava/lang/Runnable;)Z

    .line 498
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->x:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->C:Lcom/nut/blehunter/ble/u;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->E:Ljava/util/concurrent/ScheduledFuture;

    .line 511
    :goto_2
    return-void

    .line 466
    :cond_0
    const-string v0, "Disconnected"

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 502
    :cond_1
    invoke-direct {p0, v3}, Lcom/nut/blehunter/ble/r;->a(I)V

    .line 503
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->g()V

    .line 504
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->h()V

    .line 505
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/ac;->a()V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->c()V

    goto :goto_2
.end method

.method public final onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 668
    const-string v0, "device %s onDescriptorRead: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    const-string v0, "DescriptorRead:uuid=%s, value=%s, status=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    return-void
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 677
    const-string v0, "device %s onDescriptorWrite: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    const-string v0, "onDescriptorWrite:uuid=%s, value=%s, status=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 682
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->h()V

    .line 683
    sget-object v1, Lcom/nut/blehunter/ble/aj;->i:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->f()V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    sget-object v1, Lcom/nut/blehunter/ble/aj;->g:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nut/blehunter/ble/r;->p:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->d()V

    goto :goto_0
.end method

.method public final onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 696
    const-string v0, "read rssi is %d status is %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    if-nez p3, :cond_1

    .line 698
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->c:Lcom/nut/blehunter/ble/y;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->c:Lcom/nut/blehunter/ble/y;

    invoke-interface {v0, p2}, Lcom/nut/blehunter/ble/y;->a(I)V

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    const-string v0, "read rssi %d status %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ble/r;->a(Z)V

    goto :goto_0
.end method

.method public final onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .prologue
    .line 692
    return-void
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 515
    const-string v0, "service discovered status is %d"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    const-string v0, "discover service complete, status=%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->g()V

    .line 518
    if-nez p2, :cond_2

    .line 519
    iget v0, p0, Lcom/nut/blehunter/ble/r;->p:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 3907
    sget-object v0, Lcom/nut/blehunter/ble/aj;->f:Ljava/util/UUID;

    sget-object v1, Lcom/nut/blehunter/ble/aj;->g:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 3909
    if-nez v0, :cond_0

    .line 3910
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ble/r;->x:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->D:Lcom/nut/blehunter/ble/w;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ble/r;->F:Ljava/util/concurrent/ScheduledFuture;

    .line 529
    :goto_1
    return-void

    .line 3913
    :cond_0
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/r;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 3914
    sget-object v1, Lcom/nut/blehunter/ble/aj;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 3916
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 3917
    iget-object v1, p0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    .line 522
    :cond_1
    invoke-direct {p0}, Lcom/nut/blehunter/ble/r;->d()V

    goto :goto_0

    .line 527
    :cond_2
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ble/r;->a(Z)V

    goto :goto_1
.end method
