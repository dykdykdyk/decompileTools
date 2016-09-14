.class public final Lcom/nut/blehunter/ble/af;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field public static final a:Landroid/os/ParcelUuid;


# instance fields
.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/ble/af;->a:Landroid/os/ParcelUuid;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/nut/blehunter/ble/af;->b:Ljava/util/List;

    .line 178
    iput-object p2, p0, Lcom/nut/blehunter/ble/af;->c:Landroid/util/SparseArray;

    .line 179
    iput-object p3, p0, Lcom/nut/blehunter/ble/af;->f:Ljava/util/Map;

    .line 180
    iput-object p6, p0, Lcom/nut/blehunter/ble/af;->d:Ljava/lang/String;

    .line 181
    iput p4, p0, Lcom/nut/blehunter/ble/af;->e:I

    .line 182
    iput p5, p0, Lcom/nut/blehunter/ble/af;->g:I

    .line 183
    iput-object p7, p0, Lcom/nut/blehunter/ble/af;->h:[B

    .line 184
    return-void
.end method

.method private static a([BIIILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 295
    :goto_0
    if-lez p2, :cond_0

    .line 296
    invoke-static {p0, p1, p3}, Lcom/nut/blehunter/ble/af;->a([BII)[B

    move-result-object v0

    .line 298
    invoke-static {v0}, Lcom/nut/blehunter/ble/af;->b([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    sub-int/2addr p2, p3

    .line 300
    add-int/2addr p1, p3

    .line 301
    goto :goto_0

    .line 302
    :cond_0
    return p1
.end method

.method public static a([B)Lcom/nut/blehunter/ble/af;
    .locals 14

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x80000000

    const/4 v8, 0x0

    .line 197
    if-nez p0, :cond_0

    move-object v0, v8

    .line 280
    :goto_0
    return-object v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 206
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v5, v9

    move-object v6, v8

    move v4, v10

    .line 208
    :goto_1
    :try_start_0
    array-length v7, p0

    if-ge v0, v7, :cond_1

    .line 210
    add-int/lit8 v7, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 211
    if-eqz v0, :cond_1

    .line 215
    add-int/lit8 v0, v0, -0x1

    .line 217
    add-int/lit8 v11, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    .line 218
    sparse-switch v7, :sswitch_data_0

    .line 269
    :goto_2
    add-int/2addr v0, v11

    .line 270
    goto :goto_1

    .line 220
    :sswitch_0
    aget-byte v4, p0, v11

    and-int/lit16 v4, v4, 0xff

    .line 221
    goto :goto_2

    .line 224
    :sswitch_1
    const/4 v7, 0x2

    invoke-static {p0, v11, v0, v7, v1}, Lcom/nut/blehunter/ble/af;->a([BIIILjava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 277
    :catch_0
    move-exception v0

    const-string v0, "ScanRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to parse scan record: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Lcom/nut/blehunter/ble/af;

    move-object v1, v8

    move-object v2, v8

    move-object v3, v8

    move v4, v10

    move v5, v9

    move-object v6, v8

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/nut/blehunter/ble/af;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    goto :goto_0

    .line 229
    :sswitch_2
    const/4 v7, 0x4

    :try_start_1
    invoke-static {p0, v11, v0, v7, v1}, Lcom/nut/blehunter/ble/af;->a([BIIILjava/util/List;)I

    goto :goto_2

    .line 234
    :sswitch_3
    const/16 v7, 0x10

    invoke-static {p0, v11, v0, v7, v1}, Lcom/nut/blehunter/ble/af;->a([BIIILjava/util/List;)I

    goto :goto_2

    .line 239
    :sswitch_4
    new-instance v6, Ljava/lang/String;

    invoke-static {p0, v11, v0}, Lcom/nut/blehunter/ble/af;->a([BII)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 242
    :sswitch_5
    aget-byte v5, p0, v11

    goto :goto_2

    .line 248
    :sswitch_6
    const/4 v7, 0x2

    invoke-static {p0, v11, v7}, Lcom/nut/blehunter/ble/af;->a([BII)[B

    move-result-object v7

    .line 250
    invoke-static {v7}, Lcom/nut/blehunter/ble/af;->b([B)Landroid/os/ParcelUuid;

    move-result-object v7

    .line 252
    add-int/lit8 v12, v11, 0x2

    add-int/lit8 v13, v0, -0x2

    invoke-static {p0, v12, v13}, Lcom/nut/blehunter/ble/af;->a([BII)[B

    move-result-object v12

    .line 254
    invoke-interface {v3, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 259
    :sswitch_7
    add-int/lit8 v7, v11, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v12, p0, v11

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v7, v12

    .line 261
    add-int/lit8 v12, v11, 0x2

    add-int/lit8 v13, v0, -0x2

    invoke-static {p0, v12, v13}, Lcom/nut/blehunter/ble/af;->a([BII)[B

    move-result-object v12

    .line 263
    invoke-virtual {v2, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 271
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v8

    .line 274
    :cond_2
    new-instance v0, Lcom/nut/blehunter/ble/af;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/nut/blehunter/ble/af;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 218
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x16 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method private static a(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 358
    if-nez p0, :cond_0

    .line 359
    const-string v0, "null"

    .line 370
    :goto_0
    return-object v0

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 362
    const-string v0, "{}"

    goto :goto_0

    .line 364
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 367
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 369
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 377
    if-nez p0, :cond_0

    .line 378
    const-string v0, "null"

    .line 395
    :goto_0
    return-object v0

    .line 380
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    const-string v0, "{}"

    goto :goto_0

    .line 383
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 386
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 388
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 389
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 394
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([BII)[B
    .locals 2

    .prologue
    .line 307
    new-array v0, p2, [B

    .line 308
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    return-object v0
.end method

.method private static b([B)Landroid/os/ParcelUuid;
    .locals 6

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 322
    if-nez p0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuidBytes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    array-length v0, p0

    .line 326
    if-eq v0, v5, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_1

    .line 328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uuidBytes length invalid - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_1
    if-ne v0, v3, :cond_2

    .line 332
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 333
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 334
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 335
    new-instance v0, Landroid/os/ParcelUuid;

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 351
    :goto_0
    return-object v0

    .line 340
    :cond_2
    if-ne v0, v5, :cond_3

    .line 341
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 342
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 349
    :goto_1
    sget-object v2, Lcom/nut/blehunter/ble/af;->a:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 350
    sget-object v0, Lcom/nut/blehunter/ble/af;->a:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 351
    new-instance v0, Landroid/os/ParcelUuid;

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    .line 344
    :cond_3
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 345
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 346
    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 347
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nut/blehunter/ble/af;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ble/af;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ble/af;->c:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/nut/blehunter/ble/af;->a(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ble/af;->f:Ljava/util/Map;

    invoke-static {v1}, Lcom/nut/blehunter/ble/af;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nut/blehunter/ble/af;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ble/af;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
