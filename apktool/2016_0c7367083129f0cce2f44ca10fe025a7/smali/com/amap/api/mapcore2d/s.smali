.class Lcom/amap/api/mapcore2d/s;
.super Ljava/lang/Object;
.source "DiskCachManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore2d/az;

.field private c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/amap/api/mapcore2d/am;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/s;->b:Lcom/amap/api/mapcore2d/az;

    .line 54
    const-string v0, "/sdcard/Amap/RMap"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    .line 56
    const/16 v0, 0x80

    iput v0, p0, Lcom/amap/api/mapcore2d/s;->d:I

    .line 24
    iput-object p1, p0, Lcom/amap/api/mapcore2d/s;->a:Landroid/content/Context;

    .line 25
    if-nez p3, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    iget-object v1, p3, Lcom/amap/api/mapcore2d/am;->m:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p3, Lcom/amap/api/mapcore2d/am;->m:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 34
    new-instance v1, Ljava/io/File;

    iget-object v0, p3, Lcom/amap/api/mapcore2d/am;->m:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 39
    :cond_3
    iget-object v1, p3, Lcom/amap/api/mapcore2d/am;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    .line 41
    :cond_4
    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/amap/api/mapcore2d/s;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lcom/amap/api/mapcore2d/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/mapcore2d/am;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(II)I
    .locals 2

    .prologue
    .line 142
    rem-int/lit16 v0, p1, 0x80

    .line 143
    rem-int/lit16 v1, p2, 0x80

    .line 144
    mul-int/lit16 v0, v0, 0x80

    add-int/2addr v0, v1

    .line 145
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/mapcore2d/am;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/ck;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a([B)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    aget-byte v0, p1, v2

    .line 126
    aget-byte v1, p1, v5

    aput-byte v1, p1, v2

    .line 127
    aput-byte v0, p1, v5

    .line 128
    aget-byte v0, p1, v3

    .line 129
    aget-byte v1, p1, v4

    aput-byte v1, p1, v3

    .line 130
    aput-byte v0, p1, v4

    goto :goto_0
.end method

.method private a(I)[B
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 114
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 115
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 116
    const/4 v1, 0x2

    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 117
    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    return-object v0
.end method

.method private a(IIIZ)[Ljava/lang/String;
    .locals 7

    .prologue
    .line 76
    div-int/lit16 v0, p1, 0x80

    .line 77
    div-int/lit16 v1, p2, 0x80

    .line 78
    div-int/lit8 v2, v0, 0xa

    .line 79
    div-int/lit8 v3, v1, 0xa

    .line 81
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    iget-object v6, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    if-nez p4, :cond_0

    .line 92
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 97
    :cond_0
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, "_"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v0, "_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 104
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 105
    return-object v4
.end method

.method private b([B)I
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 135
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 136
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 137
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 138
    return v0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/bp;)I
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v0, -0x1

    .line 149
    const-string v6, "getTileFromCach"

    .line 150
    iget v1, p1, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v4, p1, Lcom/amap/api/mapcore2d/bp;->c:I

    iget v5, p1, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/amap/api/mapcore2d/s;->a(IIIZ)[Ljava/lang/String;

    move-result-object v4

    .line 152
    if-eqz v4, :cond_0

    array-length v1, v4

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    aget-object v1, v4, v7

    const-string v5, ""

    .line 153
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, v4

    new-array v1, v1, [Ljava/lang/String;

    .line 154
    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    new-instance v5, Ljava/io/File;

    aget-object v1, v4, v7

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget v1, p1, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v7, p1, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-direct {p0, v1, v7}, Lcom/amap/api/mapcore2d/s;->a(II)I

    move-result v7

    .line 162
    if-ltz v7, :cond_0

    .line 167
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v1, v5, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :goto_1
    if-eqz v1, :cond_0

    .line 176
    mul-int/lit8 v5, v7, 0x4

    int-to-long v8, v5

    :try_start_1
    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 181
    :goto_2
    new-array v7, v10, [B

    .line 183
    const/4 v5, 0x0

    const/4 v8, 0x4

    :try_start_2
    invoke-virtual {v1, v7, v5, v8}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 188
    :goto_3
    invoke-direct {p0, v7}, Lcom/amap/api/mapcore2d/s;->a([B)V

    .line 189
    invoke-direct {p0, v7}, Lcom/amap/api/mapcore2d/s;->b([B)I

    move-result v8

    .line 192
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 199
    :goto_4
    if-ltz v8, :cond_0

    .line 203
    new-instance v5, Ljava/io/File;

    aget-object v1, v4, v3

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    :try_start_4
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v1, v5, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v5, v1

    .line 214
    :goto_5
    if-eqz v5, :cond_0

    .line 218
    int-to-long v8, v8

    :try_start_5
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 224
    :goto_6
    const/4 v1, 0x0

    const/4 v4, 0x4

    :try_start_6
    invoke-virtual {v5, v7, v1, v4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 229
    :goto_7
    invoke-direct {p0, v7}, Lcom/amap/api/mapcore2d/s;->a([B)V

    .line 230
    invoke-direct {p0, v7}, Lcom/amap/api/mapcore2d/s;->b([B)I

    move-result v1

    .line 231
    if-lez v1, :cond_2

    const v4, 0x32000

    if-le v1, v4, :cond_3

    .line 233
    :cond_2
    :try_start_7
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    const-string v2, "CachManager"

    invoke-static {v1, v2, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :catch_1
    move-exception v1

    const-string v5, "CachManager"

    invoke-static {v1, v5, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    .line 179
    :catch_2
    move-exception v5

    const-string v7, "CachManager"

    invoke-static {v5, v7, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 186
    :catch_3
    move-exception v5

    const-string v8, "CachManager"

    invoke-static {v5, v8, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 195
    :catch_4
    move-exception v1

    const-string v5, "CachManager"

    invoke-static {v1, v5, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 212
    :catch_5
    move-exception v1

    const-string v4, "CachManager"

    invoke-static {v1, v4, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_5

    .line 221
    :catch_6
    move-exception v1

    const-string v4, "CachManager"

    invoke-static {v1, v4, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 227
    :catch_7
    move-exception v1

    const-string v4, "CachManager"

    invoke-static {v1, v4, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 243
    :cond_3
    :try_start_8
    new-array v4, v1, [B
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 244
    const/4 v7, 0x0

    :try_start_9
    invoke-virtual {v5, v4, v7, v1}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a

    move-object v1, v4

    .line 250
    :goto_8
    :try_start_a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 256
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    iget v5, p1, Lcom/amap/api/mapcore2d/bp;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget v5, p1, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v5, p1, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    iget-object v5, p0, Lcom/amap/api/mapcore2d/s;->b:Lcom/amap/api/mapcore2d/az;

    if-eqz v5, :cond_0

    .line 265
    iget-object v0, p0, Lcom/amap/api/mapcore2d/s;->b:Lcom/amap/api/mapcore2d/az;

    .line 266
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v2

    .line 265
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/az;->a([B[BZLjava/util/List;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 247
    :catch_8
    move-exception v1

    move-object v4, v2

    :goto_a
    const-string v7, "CachManager"

    invoke-static {v1, v7, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_8

    .line 253
    :catch_9
    move-exception v4

    const-string v5, "CachManager"

    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 247
    :catch_a
    move-exception v1

    goto :goto_a
.end method

.method public a(Lcom/amap/api/mapcore2d/az;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amap/api/mapcore2d/s;->b:Lcom/amap/api/mapcore2d/az;

    .line 110
    return-void
.end method

.method public declared-synchronized a([BIII)Z
    .locals 8

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    const-string v3, "addDataToCach"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-nez p1, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 426
    :goto_0
    monitor-exit p0

    return v0

    .line 282
    :cond_0
    :try_start_1
    array-length v4, p1

    .line 283
    if-gtz v4, :cond_1

    .line 284
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/amap/api/mapcore2d/s;->a(IIIZ)[Ljava/lang/String;

    move-result-object v6

    .line 287
    if-eqz v6, :cond_2

    array-length v0, v6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v0, v6, v0

    const-string v1, ""

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, v6

    new-array v0, v0, [Ljava/lang/String;

    .line 289
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 293
    :cond_3
    new-instance v2, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 295
    const/4 v0, 0x0

    .line 297
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 302
    :goto_1
    if-nez v0, :cond_4

    .line 303
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    :try_start_3
    const-string v5, "CachManager"

    invoke-static {v1, v5, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_4
    const/4 v1, 0x0

    .line 309
    :try_start_4
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "rws"

    invoke-direct {v0, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v0

    .line 314
    :goto_2
    if-nez v2, :cond_5

    .line 315
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :catch_1
    move-exception v0

    :try_start_5
    const-string v2, "CachManager"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_2

    .line 318
    :cond_5
    invoke-direct {p0, v4}, Lcom/amap/api/mapcore2d/s;->a(I)[B

    move-result-object v7

    .line 319
    invoke-direct {p0, v7}, Lcom/amap/api/mapcore2d/s;->a([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 320
    const-wide/16 v0, 0x0

    .line 322
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v0

    move-wide v4, v0

    .line 328
    :goto_3
    :try_start_7
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 334
    :goto_4
    :try_start_8
    invoke-virtual {v2, v7}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 340
    :goto_5
    :try_start_9
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 346
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 353
    :goto_7
    :try_start_b
    new-instance v2, Ljava/io/File;

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 355
    const/4 v0, 0x0

    .line 357
    :try_start_c
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v0

    .line 362
    :goto_8
    if-nez v0, :cond_6

    .line 363
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 325
    :catch_2
    move-exception v4

    :try_start_d
    const-string v5, "CachManager"

    invoke-static {v4, v5, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v0

    goto :goto_3

    .line 331
    :catch_3
    move-exception v0

    const-string v1, "CachManager"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 337
    :catch_4
    move-exception v0

    const-string v1, "CachManager"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 343
    :catch_5
    move-exception v0

    const-string v1, "CachManager"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 349
    :catch_6
    move-exception v0

    const-string v1, "CachManager"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 360
    :catch_7
    move-exception v1

    const-string v6, "CachManager"

    invoke-static {v1, v6, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    .line 366
    :cond_6
    const/4 v1, 0x0

    .line 368
    :try_start_e
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v6, "rws"

    invoke-direct {v0, v2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v2, v0

    .line 373
    :goto_9
    if-nez v2, :cond_7

    .line 374
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 371
    :catch_8
    move-exception v0

    :try_start_f
    const-string v2, "CachManager"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object v2, v1

    goto :goto_9

    .line 376
    :cond_7
    const-wide/16 v0, 0x0

    .line 378
    :try_start_10
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-wide v0

    .line 383
    :goto_a
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_8

    .line 384
    const/high16 v0, 0x10000

    :try_start_11
    new-array v0, v0, [B

    .line 385
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 387
    :try_start_12
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 394
    :cond_8
    :goto_b
    :try_start_13
    invoke-direct {p0, p2, p3}, Lcom/amap/api/mapcore2d/s;->a(II)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result v0

    .line 395
    if-gez v0, :cond_9

    .line 397
    :try_start_14
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 402
    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 381
    :catch_9
    move-exception v6

    :try_start_15
    const-string v7, "CachManager"

    invoke-static {v6, v7, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 390
    :catch_a
    move-exception v0

    const-string v1, "CachManager"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 400
    :catch_b
    move-exception v0

    const-string v1, "CachManager"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_c

    .line 405
    :cond_9
    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    :try_start_16
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 410
    :goto_d
    long-to-int v0, v4

    :try_start_17
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/s;->a(I)[B

    move-result-object v0

    .line 411
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/s;->a([B)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 413
    :try_start_18
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 419
    :goto_e
    :try_start_19
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 426
    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 408
    :catch_c
    move-exception v0

    :try_start_1a
    const-string v1, "CachManager"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 416
    :catch_d
    move-exception v0

    const-string v1, "CachManager"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 422
    :catch_e
    move-exception v0

    const-string v1, "CachManager"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_f
.end method
