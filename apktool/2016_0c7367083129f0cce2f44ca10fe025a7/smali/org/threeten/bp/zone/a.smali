.class final Lorg/threeten/bp/zone/a;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field private a:B

.field private b:Ljava/lang/Object;


# direct methods
.method private static a(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 137
    packed-switch p0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2245
    :pswitch_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 2246
    new-array v1, v2, [J

    move v0, v6

    .line 2247
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2248
    invoke-static {p1}, Lorg/threeten/bp/zone/a;->c(Ljava/io/DataInput;)J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 2247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2250
    :cond_0
    add-int/lit8 v0, v2, 0x1

    new-array v2, v0, [Lorg/threeten/bp/af;

    move v0, v6

    .line 2251
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2252
    invoke-static {p1}, Lorg/threeten/bp/zone/a;->b(Ljava/io/DataInput;)Lorg/threeten/bp/af;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2254
    :cond_1
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 2255
    new-array v3, v4, [J

    move v0, v6

    .line 2256
    :goto_2
    if-ge v0, v4, :cond_2

    .line 2257
    invoke-static {p1}, Lorg/threeten/bp/zone/a;->c(Ljava/io/DataInput;)J

    move-result-wide v8

    aput-wide v8, v3, v0

    .line 2256
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2259
    :cond_2
    add-int/lit8 v0, v4, 0x1

    new-array v4, v0, [Lorg/threeten/bp/af;

    move v0, v6

    .line 2260
    :goto_3
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 2261
    invoke-static {p1}, Lorg/threeten/bp/zone/a;->b(Ljava/io/DataInput;)Lorg/threeten/bp/af;

    move-result-object v5

    aput-object v5, v4, v0

    .line 2260
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2263
    :cond_3
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 2264
    new-array v5, v0, [Lorg/threeten/bp/zone/f;

    .line 2265
    :goto_4
    if-ge v6, v0, :cond_4

    .line 2266
    invoke-static {p1}, Lorg/threeten/bp/zone/f;->a(Ljava/io/DataInput;)Lorg/threeten/bp/zone/f;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2265
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2268
    :cond_4
    new-instance v0, Lorg/threeten/bp/zone/b;

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/zone/b;-><init>([J[Lorg/threeten/bp/af;[J[Lorg/threeten/bp/af;[Lorg/threeten/bp/zone/f;)V

    .line 143
    :goto_5
    return-object v0

    .line 141
    :pswitch_1
    invoke-static {p1}, Lorg/threeten/bp/zone/e;->a(Ljava/io/DataInput;)Lorg/threeten/bp/zone/e;

    move-result-object v0

    goto :goto_5

    .line 143
    :pswitch_2
    invoke-static {p1}, Lorg/threeten/bp/zone/f;->a(Ljava/io/DataInput;)Lorg/threeten/bp/zone/f;

    move-result-object v0

    goto :goto_5

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 133
    invoke-static {v0, p0}, Lorg/threeten/bp/zone/a;->a(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(JLjava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x384

    .line 196
    const-wide v0, -0x110bc5000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x26cb5db00L

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    rem-long v0, p0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 197
    const-wide v0, 0x110bc5000L

    add-long/2addr v0, p0

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 198
    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 199
    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 200
    and-int/lit16 v0, v0, 0xff

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    const/16 v0, 0xff

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 203
    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0
.end method

.method private static a(Lorg/threeten/bp/af;Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x7f

    .line 167
    .line 2449
    iget v2, p0, Lorg/threeten/bp/af;->g:I

    .line 168
    rem-int/lit16 v0, v2, 0x384

    if-nez v0, :cond_1

    div-int/lit16 v0, v2, 0x384

    .line 169
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 170
    if-ne v0, v1, :cond_0

    .line 171
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 173
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method static b(Ljava/io/DataInput;)Lorg/threeten/bp/af;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 184
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    mul-int/lit16 v0, v0, 0x384

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Ljava/io/DataInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 216
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 217
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 222
    :goto_0
    return-wide v0

    .line 219
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 220
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 221
    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    int-to-long v0, v0

    .line 222
    const-wide/16 v2, 0x384

    mul-long/2addr v0, v2

    const-wide v2, 0x110bc5000L

    sub-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/threeten/bp/zone/a;->a:B

    .line 128
    iget-byte v0, p0, Lorg/threeten/bp/zone/a;->a:B

    invoke-static {v0, p1}, Lorg/threeten/bp/zone/a;->a(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/zone/a;->b:Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-byte v2, p0, Lorg/threeten/bp/zone/a;->a:B

    iget-object v0, p0, Lorg/threeten/bp/zone/a;->b:Ljava/lang/Object;

    .line 1104
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1105
    packed-switch v2, :pswitch_data_0

    .line 1116
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :pswitch_0
    check-cast v0, Lorg/threeten/bp/zone/b;

    .line 1217
    iget-object v2, v0, Lorg/threeten/bp/zone/b;->a:[J

    array-length v2, v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1218
    iget-object v3, v0, Lorg/threeten/bp/zone/b;->a:[J

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-wide v6, v3, v2

    .line 1219
    invoke-static {v6, v7, p1}, Lorg/threeten/bp/zone/a;->a(JLjava/io/DataOutput;)V

    .line 1218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1221
    :cond_0
    iget-object v3, v0, Lorg/threeten/bp/zone/b;->b:[Lorg/threeten/bp/af;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 1222
    invoke-static {v5, p1}, Lorg/threeten/bp/zone/a;->a(Lorg/threeten/bp/af;Ljava/io/DataOutput;)V

    .line 1221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1224
    :cond_1
    iget-object v2, v0, Lorg/threeten/bp/zone/b;->c:[J

    array-length v2, v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1225
    iget-object v3, v0, Lorg/threeten/bp/zone/b;->c:[J

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_2

    aget-wide v6, v3, v2

    .line 1226
    invoke-static {v6, v7, p1}, Lorg/threeten/bp/zone/a;->a(JLjava/io/DataOutput;)V

    .line 1225
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1228
    :cond_2
    iget-object v3, v0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    array-length v4, v3

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 1229
    invoke-static {v5, p1}, Lorg/threeten/bp/zone/a;->a(Lorg/threeten/bp/af;Ljava/io/DataOutput;)V

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1231
    :cond_3
    iget-object v2, v0, Lorg/threeten/bp/zone/b;->e:[Lorg/threeten/bp/zone/f;

    array-length v2, v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1232
    iget-object v2, v0, Lorg/threeten/bp/zone/b;->e:[Lorg/threeten/bp/zone/f;

    array-length v3, v2

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_4

    aget-object v1, v2, v0

    .line 1233
    invoke-virtual {v1, p1}, Lorg/threeten/bp/zone/f;->a(Ljava/io/DataOutput;)V

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1110
    :pswitch_1
    check-cast v0, Lorg/threeten/bp/zone/e;

    .line 2157
    invoke-virtual {v0}, Lorg/threeten/bp/zone/e;->a()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lorg/threeten/bp/zone/a;->a(JLjava/io/DataOutput;)V

    .line 2158
    iget-object v1, v0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    invoke-static {v1, p1}, Lorg/threeten/bp/zone/a;->a(Lorg/threeten/bp/af;Ljava/io/DataOutput;)V

    .line 2159
    iget-object v0, v0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    invoke-static {v0, p1}, Lorg/threeten/bp/zone/a;->a(Lorg/threeten/bp/af;Ljava/io/DataOutput;)V

    .line 1114
    :cond_4
    :goto_5
    return-void

    .line 1113
    :pswitch_2
    check-cast v0, Lorg/threeten/bp/zone/f;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/zone/f;->a(Ljava/io/DataOutput;)V

    goto :goto_5

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
