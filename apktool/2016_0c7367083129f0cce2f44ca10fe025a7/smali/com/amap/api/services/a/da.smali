.class public Lcom/amap/api/services/a/da;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/services/a/da;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 131
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/da;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x35

    if-ne v1, v2, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 145
    invoke-static {p0}, Lcom/amap/api/services/a/da;->b(Landroid/content/Context;)[B

    move-result-object v1

    .line 147
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 149
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    invoke-static {v2}, Lcom/amap/api/services/a/bb;->c([B)[B

    move-result-object v0

    .line 154
    new-instance v1, Lcom/amap/api/services/a/bf;

    const-string v2, "2"

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/a/bf;-><init>([BLjava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/amap/api/services/a/cp;->a()Lcom/amap/api/services/a/cp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cp;->b(Lcom/amap/api/services/a/cv;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    const-string v1, "StatisticsManager"

    const-string v2, "updateStaticsData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 288
    const-string v0, "c.log"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/be;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 293
    :cond_0
    const/4 v2, 0x0

    .line 295
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 297
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    if-eqz v1, :cond_1

    .line 311
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 317
    :cond_1
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    if-eqz v1, :cond_1

    .line 311
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 313
    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 306
    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 309
    if-eqz v1, :cond_1

    .line 311
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 313
    :catch_3
    move-exception v0

    goto :goto_2

    .line 309
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_2

    .line 311
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 309
    :cond_2
    :goto_5
    throw v0

    .line 313
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_2

    .line 309
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 306
    :catch_6
    move-exception v0

    goto :goto_3

    .line 301
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;[B)[B
    .locals 1

    .prologue
    .line 167
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/services/a/av;->a(Landroid/content/Context;[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-static {p0}, Lcom/amap/api/services/a/da;->c(Landroid/content/Context;)[B

    move-result-object v0

    .line 110
    invoke-static {p0}, Lcom/amap/api/services/a/da;->e(Landroid/content/Context;)[B

    move-result-object v1

    .line 112
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 115
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    invoke-static {p0, v2}, Lcom/amap/api/services/a/da;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 121
    return-object v0
.end method

.method private static c(Landroid/content/Context;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 177
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    new-array v0, v0, [B

    .line 182
    :try_start_0
    const-string v1, "1.2.13.6"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 184
    const-string v1, "Android"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 185
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 188
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 189
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 192
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 193
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 194
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 196
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 198
    invoke-static {p0}, Lcom/amap/api/services/a/as;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 199
    invoke-static {p0}, Lcom/amap/api/services/a/as;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Lcom/amap/api/services/a/as;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v1, v3

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 204
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 209
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 214
    :goto_0
    return-object v0

    .line 206
    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "StatisticsManager"

    const-string v4, "getHeader"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 211
    :catch_1
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 208
    :goto_2
    throw v0

    .line 211
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static d(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 220
    .line 222
    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/be;->e:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/amap/api/services/a/be;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    :goto_0
    return v0

    .line 228
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    const-string v2, "StatisticsManager"

    const-string v3, "getFileNum"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)[B
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 237
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    new-array v0, v1, [B

    .line 239
    sget-object v2, Lcom/amap/api/services/a/be;->e:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/amap/api/services/a/be;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    const/4 v2, 0x0

    .line 242
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/32 v8, 0x19000

    invoke-static {v5, v6, v7, v8, v9}, Lcom/amap/api/services/a/cl;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/cl;

    move-result-object v2

    .line 243
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 245
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 246
    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 247
    const-string v7, ".0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 251
    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 252
    invoke-static {v2, v6}, Lcom/amap/api/services/a/db;->a(Lcom/amap/api/services/a/cl;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 264
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 269
    :goto_1
    if-eqz v2, :cond_2

    .line 271
    :try_start_2
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    .line 277
    :cond_2
    :goto_2
    return-object v0

    .line 258
    :catch_0
    move-exception v1

    :try_start_3
    const-string v4, "StatisticsManager"

    const-string v5, "getContent"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 269
    :goto_3
    if-eqz v2, :cond_2

    .line 271
    :try_start_5
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 273
    :catch_1
    move-exception v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 260
    :catch_2
    move-exception v1

    :try_start_6
    const-string v4, "StatisticsManager"

    const-string v5, "getContent"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 264
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 269
    :goto_5
    if-eqz v2, :cond_2

    .line 271
    :try_start_8
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 273
    :catch_3
    move-exception v1

    goto :goto_4

    .line 262
    :catchall_0
    move-exception v0

    .line 264
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 269
    :goto_6
    if-eqz v2, :cond_3

    .line 271
    :try_start_a
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 262
    :cond_3
    :goto_7
    throw v0

    .line 266
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 273
    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 266
    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 273
    :catch_9
    move-exception v1

    goto :goto_4
.end method

.method private static f(Landroid/content/Context;)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 323
    const-string v2, "c.log"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/be;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-wide v0

    .line 328
    :cond_1
    const/4 v4, 0x0

    .line 330
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 331
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 332
    new-array v2, v2, [B

    .line 333
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 334
    invoke-static {v2}, Lcom/amap/api/services/a/bb;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 354
    if-eqz v3, :cond_0

    .line 356
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 339
    :catch_1
    move-exception v2

    move-object v3, v4

    :goto_2
    :try_start_3
    const-string v4, "StatisticsManager"

    const-string v5, "getUpdateTime"

    invoke-static {v2, v4, v5}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    if-eqz v3, :cond_0

    .line 356
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 359
    :catch_2
    move-exception v2

    goto :goto_1

    .line 342
    :catch_3
    move-exception v2

    move-object v3, v4

    :goto_3
    :try_start_5
    const-string v4, "StatisticsManager"

    const-string v5, "getUpdateTime"

    invoke-static {v2, v4, v5}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 354
    if-eqz v3, :cond_0

    .line 356
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 359
    :catch_4
    move-exception v2

    goto :goto_1

    .line 345
    :catch_5
    move-exception v2

    move-object v3, v4

    :goto_4
    :try_start_7
    const-string v4, "StatisticsManager"

    const-string v6, "getUpdateTime"

    invoke-static {v2, v4, v6}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 347
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 354
    :cond_2
    :goto_5
    if-eqz v3, :cond_0

    .line 356
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 359
    :catch_6
    move-exception v2

    goto :goto_1

    .line 351
    :catch_7
    move-exception v2

    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 354
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v3, :cond_3

    .line 356
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    .line 354
    :cond_3
    :goto_7
    throw v0

    .line 359
    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 354
    :catchall_1
    move-exception v0

    move-object v3, v4

    goto :goto_6

    .line 345
    :catch_9
    move-exception v2

    goto :goto_4

    .line 342
    :catch_a
    move-exception v2

    goto :goto_3

    .line 339
    :catch_b
    move-exception v2

    goto :goto_2
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 370
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_0

    sget-boolean v2, Lcom/amap/api/services/a/da;->a:Z

    if-eqz v2, :cond_0

    .line 373
    invoke-static {p0}, Lcom/amap/api/services/a/da;->d(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/da;->f(Landroid/content/Context;)J

    move-result-wide v2

    .line 377
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 379
    sub-long v2, v4, v2

    const-wide/32 v6, 0x36ee80

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 382
    invoke-static {p0, v4, v5}, Lcom/amap/api/services/a/da;->a(Landroid/content/Context;J)V

    .line 384
    const/4 v2, 0x0

    sput-boolean v2, Lcom/amap/api/services/a/da;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 385
    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    const-string v2, "StatisticsManager"

    const-string v3, "isUpdate"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
