.class public final Lcom/c/a/c/d;
.super Ljava/lang/Object;
.source "UTUtdid.java"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/c/a/c/d;

.field private static final j:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/c/a/c/e;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/c/a/b/a/c;

.field private i:Lcom/c/a/b/a/c;

.field private k:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/c/a/c/d;->b:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/c/a/c/d;->c:Lcom/c/a/c/d;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".UTSystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/c/d;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/c/a/c/d;->e:Lcom/c/a/c/e;

    .line 32
    const-string v0, "xx_utdid_key"

    iput-object v0, p0, Lcom/c/a/c/d;->f:Ljava/lang/String;

    .line 33
    const-string v0, "xx_utdid_domain"

    iput-object v0, p0, Lcom/c/a/c/d;->g:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/c/a/c/d;->h:Lcom/c/a/b/a/c;

    .line 39
    iput-object v1, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    .line 43
    const-string v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/c/d;->k:Ljava/util/regex/Pattern;

    .line 46
    iput-object p1, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/c/a/b/a/c;

    sget-object v1, Lcom/c/a/c/d;->j:Ljava/lang/String;

    const-string v2, "Alvin2"

    invoke-direct {v0, p1, v1, v2}, Lcom/c/a/b/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    .line 50
    new-instance v0, Lcom/c/a/b/a/c;

    const-string v1, ".DataStorage"

    const-string v2, "ContextData"

    invoke-direct {v0, p1, v1, v2}, Lcom/c/a/b/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/c/a/c/d;->h:Lcom/c/a/b/a/c;

    .line 52
    new-instance v0, Lcom/c/a/c/e;

    invoke-direct {v0}, Lcom/c/a/c/e;-><init>()V

    iput-object v0, p0, Lcom/c/a/c/d;->e:Lcom/c/a/c/e;

    .line 53
    const-string v0, "K_%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/c/a/c/d;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/c/a/a/a/h;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/c/d;->f:Ljava/lang/String;

    .line 54
    const-string v0, "D_%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/c/a/c/d;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/c/a/a/a/h;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/c/d;->g:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/c/a/c/d;
    .locals 2

    .prologue
    .line 58
    if-eqz p0, :cond_1

    .line 59
    sget-object v0, Lcom/c/a/c/d;->c:Lcom/c/a/c/d;

    if-nez v0, :cond_1

    .line 60
    sget-object v1, Lcom/c/a/c/d;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/c/a/c/d;->c:Lcom/c/a/c/d;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/c/a/c/d;

    invoke-direct {v0, p0}, Lcom/c/a/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/c/a/c/d;->c:Lcom/c/a/c/d;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/c/a/c/d;->c:Lcom/c/a/c/d;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/c/a/c/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    .line 106
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v1, "UTDID"

    invoke-virtual {v0, v1}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v1, "EI"

    invoke-virtual {v0, v1}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/a/a/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v2, "SI"

    invoke-virtual {v1, v2}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    iget-object v1, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/c/a/a/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v4, "DID"

    invoke-virtual {v2, v4}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v0

    .line 121
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 122
    :cond_4
    new-instance v3, Lcom/c/a/c/a;

    invoke-direct {v3}, Lcom/c/a/c/a;-><init>()V

    .line 1039
    iput-object v0, v3, Lcom/c/a/c/a;->a:Ljava/lang/String;

    .line 1047
    iput-object v1, v3, Lcom/c/a/c/a;->b:Ljava/lang/String;

    .line 1063
    iput-object p1, v3, Lcom/c/a/c/a;->d:Ljava/lang/String;

    .line 2055
    iput-object v2, v3, Lcom/c/a/c/a;->c:Ljava/lang/String;

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3031
    iput-wide v0, v3, Lcom/c/a/c/a;->e:J

    .line 129
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v1, "UTDID"

    invoke-virtual {v0, v1, p1}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v1, "EI"

    .line 3035
    iget-object v2, v3, Lcom/c/a/c/a;->a:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v1, "SI"

    .line 3043
    iget-object v2, v3, Lcom/c/a/c/a;->b:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v1, "DID"

    .line 3051
    iget-object v2, v3, Lcom/c/a/c/a;->c:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v1, "timestamp"

    .line 4027
    iget-wide v4, v3, Lcom/c/a/c/a;->e:J

    .line 133
    invoke-virtual {v0, v1, v4, v5}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;J)V

    .line 134
    iget-object v2, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v4, "S"

    .line 4078
    const-string v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 5059
    iget-object v5, v3, Lcom/c/a/c/a;->d:Ljava/lang/String;

    .line 4078
    aput-object v5, v1, v6

    const/4 v5, 0x1

    .line 6051
    iget-object v6, v3, Lcom/c/a/c/a;->c:Ljava/lang/String;

    .line 4078
    aput-object v6, v1, v5

    const/4 v5, 0x2

    .line 7027
    iget-wide v6, v3, Lcom/c/a/c/a;->e:J

    .line 4078
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    .line 7043
    iget-object v6, v3, Lcom/c/a/c/a;->b:Ljava/lang/String;

    .line 4078
    aput-object v6, v1, v5

    const/4 v5, 0x4

    .line 8035
    iget-object v3, v3, Lcom/c/a/c/a;->a:Ljava/lang/String;

    .line 4078
    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4082
    invoke-static {v0}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4083
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    .line 4084
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    .line 4085
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    .line 4086
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    .line 134
    :goto_0
    invoke-virtual {v2, v4, v0, v1}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;J)V

    .line 135
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    invoke-virtual {v0}, Lcom/c/a/b/a/c;->a()Z

    .line 140
    :cond_5
    return-void

    .line 4090
    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/c/a/c/d;->h:Lcom/c/a/b/a/c;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/c/a/c/d;->h:Lcom/c/a/b/a/c;

    iget-object v1, p0, Lcom/c/a/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/c/a/c/d;->h:Lcom/c/a/b/a/c;

    iget-object v1, p0, Lcom/c/a/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/c/a/c/d;->h:Lcom/c/a/b/a/c;

    invoke-virtual {v0}, Lcom/c/a/b/a/c;->a()Z

    .line 157
    :cond_0
    return-void
.end method

.method private final b()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 398
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 400
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 403
    invoke-static {v0}, Lcom/c/a/a/a/f;->a(I)[B

    move-result-object v0

    .line 404
    invoke-static {v2}, Lcom/c/a/a/a/f;->a(I)[B

    move-result-object v2

    .line 405
    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 406
    invoke-virtual {v1, v2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 407
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 408
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/a/a/g;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 415
    :goto_0
    invoke-static {v0}, Lcom/c/a/a/a/h;->b(Ljava/lang/String;)I

    move-result v0

    .line 416
    invoke-static {v0}, Lcom/c/a/a/a/f;->a(I)[B

    move-result-object v0

    .line 417
    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 419
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 9433
    const-string v2, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    .line 9434
    const-string v3, "HmacSHA1"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 9435
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 9436
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 9437
    invoke-virtual {v3, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 9438
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/c/a/a/a/b;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lcom/c/a/a/a/h;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/c/a/a/a/f;->a(I)[B

    move-result-object v0

    .line 421
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 422
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 413
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 169
    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0, p1}, Lcom/c/a/c/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_0
    const/16 v0, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 215
    if-nez v0, :cond_0

    .line 216
    if-eqz p1, :cond_0

    .line 8197
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8200
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 247
    if-eqz p1, :cond_1

    .line 249
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 252
    :cond_0
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 253
    iget-object v1, p0, Lcom/c/a/c/d;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    const/4 v0, 0x1

    .line 260
    :cond_1
    return v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 275
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    new-instance v4, Lcom/c/a/c/f;

    invoke-direct {v4}, Lcom/c/a/c/f;-><init>()V

    .line 283
    const/4 v2, 0x0

    .line 287
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {v3}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 291
    invoke-virtual {v4, v3}, Lcom/c/a/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 294
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 298
    :cond_2
    :try_start_2
    invoke-virtual {v4, v3}, Lcom/c/a/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 300
    iget-object v5, p0, Lcom/c/a/c/d;->e:Lcom/c/a/c/e;

    invoke-virtual {v5, v0}, Lcom/c/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 303
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->d(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/c/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_1
    iget-object v3, p0, Lcom/c/a/c/d;->e:Lcom/c/a/c/e;

    invoke-virtual {v3, v0}, Lcom/c/a/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-direct {p0, v3}, Lcom/c/a/c/d;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 312
    iput-object v3, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;

    .line 314
    invoke-direct {p0, v3}, Lcom/c/a/c/d;->a(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->b(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/c/a/c/d;->c(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 324
    :cond_3
    const/4 v0, 0x1

    move v2, v0

    .line 8228
    :cond_4
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    if-eqz v0, :cond_6

    .line 8229
    iget-object v0, p0, Lcom/c/a/c/d;->i:Lcom/c/a/b/a/c;

    const-string v3, "UTDID"

    invoke-virtual {v0, v3}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8230
    invoke-static {v0}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 8231
    iget-object v3, p0, Lcom/c/a/c/d;->e:Lcom/c/a/c/e;

    invoke-virtual {v3, v0}, Lcom/c/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8232
    if-eqz v3, :cond_6

    .line 329
    :goto_2
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 330
    iget-object v1, p0, Lcom/c/a/c/d;->e:Lcom/c/a/c/e;

    invoke-virtual {v1, v0}, Lcom/c/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    if-eqz v2, :cond_5

    .line 333
    invoke-direct {p0, v1}, Lcom/c/a/c/d;->d(Ljava/lang/String;)V

    .line 336
    :cond_5
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->c(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, v1}, Lcom/c/a/c/d;->b(Ljava/lang/String;)V

    .line 339
    iput-object v0, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 8237
    goto :goto_2

    .line 344
    :cond_7
    iget-object v0, p0, Lcom/c/a/c/d;->h:Lcom/c/a/b/a/c;

    iget-object v3, p0, Lcom/c/a/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/c/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-static {v3}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 346
    invoke-virtual {v4, v3}, Lcom/c/a/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 348
    iget-object v0, p0, Lcom/c/a/c/d;->e:Lcom/c/a/c/e;

    invoke-virtual {v0, v3}, Lcom/c/a/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_8
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 351
    iget-object v3, p0, Lcom/c/a/c/d;->e:Lcom/c/a/c/e;

    invoke-virtual {v3, v0}, Lcom/c/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-static {v0}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 353
    iput-object v0, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;

    .line 354
    if-eqz v2, :cond_9

    .line 356
    invoke-direct {p0, v3}, Lcom/c/a/c/d;->d(Ljava/lang/String;)V

    .line 359
    :cond_9
    iget-object v0, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/c/a/c/d;->a(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 368
    :cond_a
    :try_start_3
    invoke-direct {p0}, Lcom/c/a/c/d;->b()[B

    move-result-object v0

    .line 369
    if-eqz v0, :cond_d

    .line 371
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/c/a/a/a/b;->a([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;

    .line 372
    iget-object v3, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/c/a/c/d;->a(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/c/a/c/d;->e:Lcom/c/a/c/e;

    .line 9026
    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/c/a/a/a/b;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 9027
    iget-object v3, v3, Lcom/c/a/c/e;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/c/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_c

    .line 376
    if-eqz v2, :cond_b

    .line 378
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->d(Ljava/lang/String;)V

    .line 381
    :cond_b
    invoke-direct {p0, v0}, Lcom/c/a/c/d;->b(Ljava/lang/String;)V

    .line 383
    :cond_c
    iget-object v0, p0, Lcom/c/a/c/d;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 386
    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    move-object v0, v1

    .line 388
    goto/16 :goto_0

    :cond_e
    move-object v0, v3

    goto/16 :goto_1
.end method
