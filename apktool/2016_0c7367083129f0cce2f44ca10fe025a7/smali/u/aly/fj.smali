.class public final Lu/aly/fj;
.super Ljava/lang/Object;
.source "ImprintHandler.java"


# static fields
.field private static final e:[B

.field private static f:Lu/aly/fj;


# instance fields
.field a:Lu/aly/t;

.field b:Lu/aly/fk;

.field c:Lu/aly/bl;

.field d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "pbl0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lu/aly/fj;->e:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lu/aly/fk;

    invoke-direct {v0}, Lu/aly/fk;-><init>()V

    iput-object v0, p0, Lu/aly/fj;->b:Lu/aly/fk;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/fj;->c:Lu/aly/bl;

    .line 40
    iput-object p1, p0, Lu/aly/fj;->d:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static a(Lu/aly/bl;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    new-instance v0, Ljava/util/TreeMap;

    .line 2201
    iget-object v1, p0, Lu/aly/bl;->a:Ljava/util/Map;

    .line 58
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 60
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bs;

    invoke-virtual {v1}, Lu/aly/bs;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bs;

    .line 3173
    iget-object v1, v1, Lu/aly/bs;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bs;

    .line 3200
    iget-wide v4, v1, Lu/aly/bs;->b:J

    .line 65
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bs;

    .line 3226
    iget-object v0, v0, Lu/aly/bs;->c:Ljava/lang/String;

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 69
    :cond_1
    iget v0, p0, Lu/aly/bl;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/fj;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 44
    const-class v3, Lu/aly/fj;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lu/aly/fj;->f:Lu/aly/fj;

    if-nez v0, :cond_0

    .line 45
    new-instance v4, Lu/aly/fj;

    invoke-direct {v4, p0}, Lu/aly/fj;-><init>(Landroid/content/Context;)V

    .line 46
    sput-object v4, Lu/aly/fj;->f:Lu/aly/fj;

    .line 1216
    new-instance v0, Ljava/io/File;

    iget-object v1, v4, Lu/aly/fj;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v5, ".imprint"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    :try_start_1
    iget-object v0, v4, Lu/aly/fj;->d:Landroid/content/Context;

    const-string v1, ".imprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1226
    :try_start_2
    invoke-static {v1}, Lu/aly/cs;->b(Ljava/io/InputStream;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 1230
    :try_start_3
    invoke-static {v1}, Lu/aly/cs;->c(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1233
    :goto_0
    if-eqz v2, :cond_0

    .line 1235
    :try_start_4
    new-instance v0, Lu/aly/bl;

    invoke-direct {v0}, Lu/aly/bl;-><init>()V

    .line 1236
    new-instance v1, Lu/aly/cz;

    invoke-direct {v1}, Lu/aly/cz;-><init>()V

    invoke-virtual {v1, v0, v2}, Lu/aly/cz;->a(Lu/aly/cw;[B)V

    .line 1237
    iput-object v0, v4, Lu/aly/fj;->c:Lu/aly/bl;

    .line 1238
    iget-object v1, v4, Lu/aly/fj;->b:Lu/aly/fk;

    invoke-virtual {v1, v0}, Lu/aly/fk;->a(Lu/aly/bl;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    :cond_0
    :goto_1
    :try_start_5
    sget-object v0, Lu/aly/fj;->f:Lu/aly/fj;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v3

    return-object v0

    .line 1228
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1230
    :try_start_7
    invoke-static {v1}, Lu/aly/cs;->c(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 1230
    :catchall_1
    move-exception v0

    :goto_3
    :try_start_8
    invoke-static {v2}, Lu/aly/cs;->c(Ljava/io/InputStream;)V

    throw v0

    .line 1240
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 1230
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1228
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 157
    if-nez p0, :cond_1

    .line 158
    if-eqz p1, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    .line 161
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lu/aly/bs;)[B
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 93
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4200
    iget-wide v2, p0, Lu/aly/bs;->b:J

    .line 95
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 98
    sget-object v2, Lu/aly/fj;->e:[B

    .line 99
    new-array v3, v6, [B

    .line 101
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    .line 102
    aget-byte v4, v1, v0

    aget-byte v5, v2, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-object v3
.end method

.method static b(Lu/aly/bl;)Lu/aly/bl;
    .locals 5

    .prologue
    .line 191
    .line 4201
    iget-object v2, p0, Lu/aly/bl;->a:Ljava/util/Map;

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bs;

    invoke-virtual {v1}, Lu/aly/bs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 204
    :cond_2
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()Lu/aly/bl;
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/fj;->c:Lu/aly/bl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
