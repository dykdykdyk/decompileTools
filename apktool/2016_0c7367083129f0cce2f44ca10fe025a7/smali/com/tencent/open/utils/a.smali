.class public final Lcom/tencent/open/utils/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Lcom/tencent/open/utils/u;

.field private static final b:Lcom/tencent/open/utils/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/tencent/open/utils/u;

    invoke-direct {v0}, Lcom/tencent/open/utils/u;-><init>()V

    sput-object v0, Lcom/tencent/open/utils/a;->a:Lcom/tencent/open/utils/u;

    .line 119
    new-instance v0, Lcom/tencent/open/utils/v;

    invoke-direct {v0}, Lcom/tencent/open/utils/v;-><init>()V

    sput-object v0, Lcom/tencent/open/utils/a;->b:Lcom/tencent/open/utils/v;

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v0, "channelNo"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x2

    .line 131
    .line 134
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    invoke-static {v1}, Lcom/tencent/open/utils/a;->a(Ljava/io/RandomAccessFile;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 136
    if-nez v2, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :goto_0
    return-object v0

    .line 140
    :cond_0
    :try_start_2
    new-instance v0, Lcom/tencent/open/utils/b;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/tencent/open/utils/b;-><init>(B)V

    .line 1023
    if-eqz v2, :cond_3

    .line 1027
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2014
    sget-object v4, Lcom/tencent/open/utils/a;->b:Lcom/tencent/open/utils/v;

    .line 2061
    const/4 v5, 0x2

    new-array v5, v5, [B

    .line 2062
    const/4 v6, 0x0

    iget v7, v4, Lcom/tencent/open/utils/v;->a:I

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 2063
    const/4 v6, 0x1

    iget v4, v4, Lcom/tencent/open/utils/v;->a:I

    const v7, 0xff00

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    .line 1029
    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 1030
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3014
    sget-object v5, Lcom/tencent/open/utils/a;->b:Lcom/tencent/open/utils/v;

    .line 1032
    new-instance v6, Lcom/tencent/open/utils/v;

    invoke-direct {v6, v4}, Lcom/tencent/open/utils/v;-><init>([B)V

    invoke-virtual {v5, v6}, Lcom/tencent/open/utils/v;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1034
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknow protocl ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    throw v0

    .line 1036
    :cond_2
    :try_start_3
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    if-le v4, v8, :cond_3

    .line 1041
    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 1042
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1043
    new-instance v5, Lcom/tencent/open/utils/v;

    invoke-direct {v5, v4}, Lcom/tencent/open/utils/v;-><init>([B)V

    .line 3074
    iget v4, v5, Lcom/tencent/open/utils/v;->a:I

    .line 1045
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v5, v5, -0x2

    if-lt v5, v4, :cond_3

    .line 1050
    new-array v5, v4, [B

    .line 1051
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1052
    iget-object v6, v0, Lcom/tencent/open/utils/b;->a:Ljava/util/Properties;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1054
    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    .line 1055
    if-lez v2, :cond_3

    .line 1057
    new-array v2, v2, [B

    iput-object v2, v0, Lcom/tencent/open/utils/b;->b:[B

    .line 1058
    iget-object v2, v0, Lcom/tencent/open/utils/b;->b:[B

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 142
    :cond_3
    iget-object v0, v0, Lcom/tencent/open/utils/b;->a:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 148
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_0

    .line 146
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1
.end method

.method private static a(Ljava/io/RandomAccessFile;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    sub-long v4, v2, v4

    .line 178
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 179
    sget-object v2, Lcom/tencent/open/utils/a;->a:Lcom/tencent/open/utils/u;

    .line 4063
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 4064
    iget-wide v6, v2, Lcom/tencent/open/utils/u;->a:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    .line 4065
    iget-wide v6, v2, Lcom/tencent/open/utils/u;->a:J

    const-wide/32 v8, 0xff00

    and-long/2addr v6, v8

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 4066
    iget-wide v6, v2, Lcom/tencent/open/utils/u;->a:J

    const-wide/32 v8, 0xff0000

    and-long/2addr v6, v8

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 4067
    iget-wide v6, v2, Lcom/tencent/open/utils/u;->a:J

    const-wide v8, 0xff000000L

    and-long/2addr v6, v8

    const/16 v2, 0x18

    shr-long/2addr v6, v2

    long-to-int v2, v6

    int-to-byte v2, v2

    aput-byte v2, v3, v11

    .line 180
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 184
    :goto_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 186
    aget-byte v6, v3, v1

    if-ne v2, v6, :cond_0

    .line 188
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 189
    aget-byte v6, v3, v0

    if-ne v2, v6, :cond_0

    .line 191
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 192
    aget-byte v6, v3, v10

    if-ne v2, v6, :cond_0

    .line 194
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 195
    aget-byte v6, v3, v11

    if-ne v2, v6, :cond_0

    .line 206
    :goto_1
    if-nez v0, :cond_1

    .line 208
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive is not a ZIP archive"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 204
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    goto :goto_0

    .line 212
    :cond_1
    const-wide/16 v0, 0x10

    add-long/2addr v0, v4

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 214
    new-array v0, v10, [B

    .line 215
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 217
    new-instance v1, Lcom/tencent/open/utils/v;

    invoke-direct {v1, v0}, Lcom/tencent/open/utils/v;-><init>([B)V

    .line 4074
    iget v0, v1, Lcom/tencent/open/utils/v;->a:I

    .line 218
    if-nez v0, :cond_2

    .line 220
    const/4 v0, 0x0

    .line 224
    :goto_2
    return-object v0

    .line 222
    :cond_2
    new-array v0, v0, [B

    .line 223
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method
