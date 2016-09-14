.class public final Lcom/nut/blehunter/ble/ag;
.super Lcom/nut/blehunter/ble/ac;
.source "TrackerOauthHandler.java"


# instance fields
.field b:I

.field c:Z

.field private d:Lcom/nut/blehunter/ble/ad;

.field private e:Lcom/nut/blehunter/ble/ai;

.field private f:Lcom/nut/blehunter/ble/ah;

.field private g:Lcom/nut/blehunter/ble/ab;

.field private h:[B

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ble/r;Lcom/nut/blehunter/ble/ad;Lcom/nut/blehunter/ble/ai;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ble/ac;-><init>(Lcom/nut/blehunter/ble/r;)V

    .line 100
    const/4 v0, 0x3

    iput v0, p0, Lcom/nut/blehunter/ble/ag;->b:I

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/ag;->h:[B

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ble/ag;->c:Z

    .line 113
    iput-object p2, p0, Lcom/nut/blehunter/ble/ag;->d:Lcom/nut/blehunter/ble/ad;

    .line 114
    iput-object p3, p0, Lcom/nut/blehunter/ble/ag;->e:Lcom/nut/blehunter/ble/ai;

    .line 115
    invoke-direct {p0}, Lcom/nut/blehunter/ble/ag;->b()V

    .line 116
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->d:Lcom/nut/blehunter/ble/ad;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->d:Lcom/nut/blehunter/ble/ad;

    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    invoke-interface {v0, v1, p1}, Lcom/nut/blehunter/ble/ad;->a(Lcom/nut/blehunter/ble/r;Z)V

    .line 322
    :cond_0
    return-void
.end method

.method private a([B)V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/nut/blehunter/ble/ag;->a(B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/ag;->a(Z)V

    .line 269
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/nut/blehunter/ble/ag;->j:Ljava/lang/String;

    .line 122
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/ble/ag;->i:Ljava/lang/String;

    .line 124
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/nut/blehunter/ble/ag;->b()V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 306
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ble/ag;->a(B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    .line 129
    iput-object v0, p0, Lcom/nut/blehunter/ble/ag;->d:Lcom/nut/blehunter/ble/ad;

    .line 130
    iput-object v0, p0, Lcom/nut/blehunter/ble/ag;->f:Lcom/nut/blehunter/ble/ah;

    .line 131
    iput-object v0, p0, Lcom/nut/blehunter/ble/ag;->e:Lcom/nut/blehunter/ble/ai;

    .line 132
    return-void
.end method

.method public final a(Lcom/nut/blehunter/ble/ab;)V
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 354
    const/4 v1, 0x0

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    .line 355
    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    sget-object v2, Lcom/nut/blehunter/ble/aj;->a:Ljava/util/UUID;

    sget-object v3, Lcom/nut/blehunter/ble/aj;->d:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_0

    .line 360
    iput-object p1, p0, Lcom/nut/blehunter/ble/ag;->g:Lcom/nut/blehunter/ble/ab;

    .line 361
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 362
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    .line 4313
    iget-object v0, v0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    .line 362
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method public final a(Lcom/nut/blehunter/ble/ah;)V
    .locals 3

    .prologue
    .line 325
    iput-object p1, p0, Lcom/nut/blehunter/ble/ag;->f:Lcom/nut/blehunter/ble/ah;

    .line 326
    invoke-direct {p0}, Lcom/nut/blehunter/ble/ag;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->f:Lcom/nut/blehunter/ble/ah;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->f:Lcom/nut/blehunter/ble/ah;

    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/ble/ah;->a(Lcom/nut/blehunter/ble/r;Z)V

    .line 331
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/16 v5, 0x55

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 136
    const-string v0, "handle auth result is %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-static {p2}, Lcom/nut/blehunter/d/q;->a([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ble/ag;->a(Z)V

    .line 2885
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {p1}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v3, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    .line 1317
    iget-boolean v3, v3, Lcom/nut/blehunter/ble/r;->n:Z

    .line 149
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v4

    .line 150
    aget-byte v0, p2, v2

    .line 152
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 154
    :sswitch_0
    invoke-static {p2}, Lcom/nut/blehunter/ble/d;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ble/ag;->h:[B

    .line 155
    if-eqz v3, :cond_8

    .line 156
    iget-boolean v0, v4, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_7

    .line 2295
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2296
    :cond_2
    invoke-direct {p0}, Lcom/nut/blehunter/ble/ag;->b()V

    .line 2298
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->j:Ljava/lang/String;

    iget-object v3, v4, Lcom/nut/blehunter/entity/Nut;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->i:Ljava/lang/String;

    iget-object v3, v4, Lcom/nut/blehunter/entity/Nut;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v2, v1

    .line 157
    :cond_5
    if-eqz v2, :cond_6

    .line 158
    iput v1, p0, Lcom/nut/blehunter/ble/ag;->b:I

    .line 159
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->h:[B

    invoke-static {p1, v4, v0}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/Nut;[B)[B

    move-result-object v0

    .line 175
    :goto_1
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/ag;->a([B)V

    goto :goto_0

    .line 161
    :cond_6
    iput v8, p0, Lcom/nut/blehunter/ble/ag;->b:I

    .line 162
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->h:[B

    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ble/ag;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 166
    :cond_7
    const/4 v0, 0x4

    iput v0, p0, Lcom/nut/blehunter/ble/ag;->b:I

    .line 167
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->h:[B

    invoke-static {p1, v4, v0}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/Nut;[B)[B

    move-result-object v0

    goto :goto_1

    .line 171
    :cond_8
    iput v6, p0, Lcom/nut/blehunter/ble/ag;->b:I

    .line 172
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->h:[B

    invoke-static {p1, v0}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_1

    .line 179
    :sswitch_1
    aget-byte v0, p2, v1

    if-ne v0, v5, :cond_b

    .line 180
    iget v0, p0, Lcom/nut/blehunter/ble/ag;->b:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/nut/blehunter/ble/ag;->b:I

    if-ne v0, v6, :cond_a

    if-eqz v3, :cond_a

    .line 181
    :cond_9
    invoke-direct {p0}, Lcom/nut/blehunter/ble/ag;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ble/ag;->a(Z)V

    goto/16 :goto_0

    .line 185
    :cond_a
    invoke-direct {p0, v1}, Lcom/nut/blehunter/ble/ag;->a(Z)V

    goto/16 :goto_0

    .line 189
    :cond_b
    if-eqz v3, :cond_e

    .line 190
    iget v0, p0, Lcom/nut/blehunter/ble/ag;->b:I

    if-ne v0, v1, :cond_c

    .line 191
    iput v8, p0, Lcom/nut/blehunter/ble/ag;->b:I

    .line 192
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->h:[B

    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ble/ag;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 194
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/ag;->a([B)V

    goto/16 :goto_0

    .line 195
    :cond_c
    iget v0, p0, Lcom/nut/blehunter/ble/ag;->b:I

    if-ne v0, v8, :cond_d

    .line 196
    iput v6, p0, Lcom/nut/blehunter/ble/ag;->b:I

    .line 197
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->h:[B

    invoke-static {p1, v0}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/ag;->a([B)V

    goto/16 :goto_0

    .line 200
    :cond_d
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ble/ag;->a(Z)V

    goto/16 :goto_0

    .line 203
    :cond_e
    iget v0, p0, Lcom/nut/blehunter/ble/ag;->b:I

    if-ne v0, v6, :cond_f

    .line 204
    iput v8, p0, Lcom/nut/blehunter/ble/ag;->b:I

    .line 205
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->h:[B

    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ble/ag;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 207
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ble/ag;->a([B)V

    goto/16 :goto_0

    .line 209
    :cond_f
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ble/ag;->a(Z)V

    goto/16 :goto_0

    .line 218
    :sswitch_2
    aget-byte v0, p2, v1

    if-ne v0, v5, :cond_10

    move v0, v1

    .line 219
    :goto_2
    iget-boolean v5, p0, Lcom/nut/blehunter/ble/ag;->c:Z

    if-eqz v5, :cond_12

    .line 220
    if-eqz v0, :cond_11

    .line 221
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/r;->b()V

    goto/16 :goto_0

    :cond_10
    move v0, v2

    .line 218
    goto :goto_2

    .line 223
    :cond_11
    iput-boolean v2, p0, Lcom/nut/blehunter/ble/ag;->c:Z

    goto/16 :goto_0

    .line 227
    :cond_12
    if-eqz v3, :cond_14

    .line 228
    iget-boolean v0, v4, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_13

    .line 2310
    if-eqz v4, :cond_13

    .line 2313
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->j:Ljava/lang/String;

    iput-object v0, v4, Lcom/nut/blehunter/entity/Nut;->e:Ljava/lang/String;

    .line 2314
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->i:Ljava/lang/String;

    iput-object v0, v4, Lcom/nut/blehunter/entity/Nut;->d:Ljava/lang/String;

    .line 2315
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 232
    :cond_13
    invoke-direct {p0, v1}, Lcom/nut/blehunter/ble/ag;->a(Z)V

    goto/16 :goto_0

    .line 2334
    :cond_14
    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->f:Lcom/nut/blehunter/ble/ah;

    if-eqz v1, :cond_0

    .line 2335
    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->f:Lcom/nut/blehunter/ble/ah;

    iget-object v2, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    invoke-interface {v1, v2, v0}, Lcom/nut/blehunter/ble/ah;->a(Lcom/nut/blehunter/ble/r;Z)V

    goto/16 :goto_0

    .line 240
    :sswitch_3
    aget-byte v0, p2, v1

    if-ne v0, v5, :cond_0

    .line 241
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->e:Lcom/nut/blehunter/ble/ai;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->e:Lcom/nut/blehunter/ble/ai;

    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ble/ai;->a(Lcom/nut/blehunter/ble/r;)V

    goto/16 :goto_0

    .line 248
    :sswitch_4
    aget-byte v0, p2, v1

    if-ne v0, v5, :cond_0

    .line 249
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->g:Lcom/nut/blehunter/ble/ab;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->g:Lcom/nut/blehunter/ble/ab;

    iget-object v1, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ble/ab;->c(Lcom/nut/blehunter/ble/r;)V

    goto/16 :goto_0

    .line 257
    :sswitch_5
    aget-byte v0, p2, v1

    if-ne v0, v5, :cond_0

    .line 258
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    .line 2882
    sget-object v3, Lcom/nut/blehunter/ble/aj;->a:Ljava/util/UUID;

    sget-object v4, Lcom/nut/blehunter/ble/aj;->d:Ljava/util/UUID;

    invoke-virtual {v0, v3, v4}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 2884
    iget-object v4, v0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 2887
    iget v4, v0, Lcom/nut/blehunter/ble/r;->s:I

    invoke-static {v4}, Lcom/nut/blehunter/d/q;->a(I)[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v4, v8, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 2888
    const-string v5, "byte major array is %s"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2890
    iget v5, v0, Lcom/nut/blehunter/ble/r;->t:I

    invoke-static {v5}, Lcom/nut/blehunter/d/q;->a(I)[B

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v8, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 2891
    const-string v6, "byte minor array is %s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2893
    const/4 v6, 0x5

    new-array v6, v6, [B

    .line 2894
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2895
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2896
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2897
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2898
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2900
    const-string v4, "wechat data is %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {v4, v5}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2901
    const-string v4, "wechat data hex is %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v5}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2903
    iget-object v0, v0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_0

    .line 152
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x9 -> :sswitch_5
        0x15 -> :sswitch_4
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method final a(B[B)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 272
    const-string v2, "send auth pwd to device command is %s pwd is %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2}, Lcom/nut/blehunter/d/q;->c([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    if-nez v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    const/16 v2, 0x11

    new-array v2, v2, [B

    .line 282
    aput-byte p1, v2, v0

    .line 283
    const/16 v3, 0x10

    invoke-static {p2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v3, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    sget-object v4, Lcom/nut/blehunter/ble/aj;->a:Ljava/util/UUID;

    sget-object v5, Lcom/nut/blehunter/ble/aj;->d:Ljava/util/UUID;

    invoke-virtual {v3, v4, v5}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 286
    if-eqz v3, :cond_0

    .line 289
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 290
    iget-object v0, p0, Lcom/nut/blehunter/ble/ag;->a:Lcom/nut/blehunter/ble/r;

    .line 3313
    iget-object v0, v0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    .line 290
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move v0, v1

    .line 291
    goto :goto_0
.end method
