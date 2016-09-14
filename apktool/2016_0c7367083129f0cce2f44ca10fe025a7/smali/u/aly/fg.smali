.class public final Lu/aly/fg;
.super Ljava/lang/Object;
.source "IdTracker.java"


# static fields
.field public static b:Lu/aly/fg;


# instance fields
.field a:Lu/aly/bf;

.field private final c:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:J

.field private f:J

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lu/aly/fc;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lu/aly/fh;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "umeng_it.cache"

    iput-object v0, p0, Lu/aly/fg;->c:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lu/aly/fg;->a:Lu/aly/bf;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lu/aly/fg;->g:Ljava/util/Set;

    .line 40
    iput-object v1, p0, Lu/aly/fg;->h:Lu/aly/fh;

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "umeng_it.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lu/aly/fg;->d:Ljava/io/File;

    .line 46
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lu/aly/fg;->f:J

    .line 47
    new-instance v0, Lu/aly/fh;

    invoke-direct {v0, p1}, Lu/aly/fh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/fg;->h:Lu/aly/fh;

    .line 48
    iget-object v0, p0, Lu/aly/fg;->h:Lu/aly/fh;

    invoke-virtual {v0}, Lu/aly/fh;->b()V

    .line 49
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/fg;
    .locals 6

    .prologue
    .line 52
    const-class v1, Lu/aly/fg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/fg;->b:Lu/aly/fg;

    if-nez v0, :cond_3

    .line 53
    new-instance v0, Lu/aly/fg;

    invoke-direct {v0, p0}, Lu/aly/fg;-><init>(Landroid/content/Context;)V

    .line 55
    sput-object v0, Lu/aly/fg;->b:Lu/aly/fg;

    new-instance v2, Lu/aly/fi;

    invoke-direct {v2, p0}, Lu/aly/fi;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lu/aly/fg;->a(Lu/aly/fc;)Z

    .line 56
    sget-object v0, Lu/aly/fg;->b:Lu/aly/fg;

    new-instance v2, Lu/aly/fd;

    invoke-direct {v2, p0}, Lu/aly/fd;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lu/aly/fg;->a(Lu/aly/fc;)Z

    .line 57
    sget-object v0, Lu/aly/fg;->b:Lu/aly/fg;

    new-instance v2, Lu/aly/c;

    invoke-direct {v2, p0}, Lu/aly/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lu/aly/fg;->a(Lu/aly/fc;)Z

    .line 58
    sget-object v0, Lu/aly/fg;->b:Lu/aly/fg;

    new-instance v2, Lu/aly/b;

    invoke-direct {v2, p0}, Lu/aly/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lu/aly/fg;->a(Lu/aly/fc;)Z

    .line 59
    sget-object v0, Lu/aly/fg;->b:Lu/aly/fg;

    new-instance v2, Lu/aly/ff;

    invoke-direct {v2, p0}, Lu/aly/ff;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lu/aly/fg;->a(Lu/aly/fc;)Z

    .line 60
    sget-object v0, Lu/aly/fg;->b:Lu/aly/fg;

    new-instance v2, Lu/aly/fl;

    invoke-direct {v2, p0}, Lu/aly/fl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lu/aly/fg;->a(Lu/aly/fc;)Z

    .line 61
    sget-object v0, Lu/aly/fg;->b:Lu/aly/fg;

    new-instance v2, Lu/aly/fm;

    invoke-direct {v2}, Lu/aly/fm;-><init>()V

    invoke-direct {v0, v2}, Lu/aly/fg;->a(Lu/aly/fc;)Z

    .line 62
    sget-object v0, Lu/aly/fg;->b:Lu/aly/fg;

    new-instance v2, Lu/aly/d;

    invoke-direct {v2, p0}, Lu/aly/d;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lu/aly/fg;->a(Lu/aly/fc;)Z

    .line 64
    sget-object v2, Lu/aly/fg;->b:Lu/aly/fg;

    .line 1167
    invoke-direct {v2}, Lu/aly/fg;->e()Lu/aly/bf;

    move-result-object v0

    .line 1169
    if-eqz v0, :cond_3

    .line 1172
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lu/aly/fg;->g:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1174
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1175
    :try_start_1
    iput-object v0, v2, Lu/aly/fg;->a:Lu/aly/bf;

    .line 1177
    iget-object v0, v2, Lu/aly/fg;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/fc;

    .line 1178
    iget-object v5, v2, Lu/aly/fg;->a:Lu/aly/bf;

    invoke-virtual {v0, v5}, Lu/aly/fc;->a(Lu/aly/bf;)V

    .line 1180
    invoke-virtual {v0}, Lu/aly/fc;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1181
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1188
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1185
    :cond_1
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/fc;

    .line 1186
    iget-object v4, v2, Lu/aly/fg;->g:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1188
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1190
    :try_start_4
    invoke-direct {v2}, Lu/aly/fg;->c()V

    .line 67
    :cond_3
    sget-object v0, Lu/aly/fg;->b:Lu/aly/fg;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    return-object v0
.end method

.method private a(Lu/aly/fc;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lu/aly/fg;->h:Lu/aly/fh;

    .line 2027
    iget-object v2, p1, Lu/aly/fc;->a:Ljava/lang/String;

    .line 2245
    iget-object v1, v1, Lu/aly/fh;->a:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 71
    :goto_0
    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Lu/aly/fg;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 2245
    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 118
    new-instance v1, Lu/aly/bf;

    invoke-direct {v1}, Lu/aly/bf;-><init>()V

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v0, p0, Lu/aly/fg;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/fc;

    .line 123
    invoke-virtual {v0}, Lu/aly/fc;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9077
    iget-object v5, v0, Lu/aly/fc;->c:Lu/aly/az;

    .line 126
    if-eqz v5, :cond_1

    .line 10027
    iget-object v5, v0, Lu/aly/fc;->a:Ljava/lang/String;

    .line 10077
    iget-object v6, v0, Lu/aly/fc;->c:Lu/aly/az;

    .line 127
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10085
    :cond_1
    iget-object v5, v0, Lu/aly/fc;->b:Ljava/util/List;

    .line 130
    if-eqz v5, :cond_0

    .line 11085
    iget-object v5, v0, Lu/aly/fc;->b:Ljava/util/List;

    .line 130
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 12085
    iget-object v0, v0, Lu/aly/fc;->b:Ljava/util/List;

    .line 131
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 12252
    :cond_2
    iput-object v3, v1, Lu/aly/bf;->b:Ljava/util/List;

    .line 13210
    iput-object v2, v1, Lu/aly/bf;->a:Ljava/util/Map;

    .line 138
    monitor-enter p0

    .line 140
    :try_start_0
    iput-object v1, p0, Lu/aly/fg;->a:Lu/aly/bf;

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lu/aly/fg;->a:Lu/aly/bf;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lu/aly/fg;->a:Lu/aly/bf;

    .line 15220
    if-eqz v0, :cond_0

    .line 15223
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15224
    :try_start_1
    new-instance v1, Lu/aly/da;

    invoke-direct {v1}, Lu/aly/da;-><init>()V

    invoke-virtual {v1, v0}, Lu/aly/da;->a(Lu/aly/cw;)[B

    move-result-object v0

    .line 15225
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15227
    if-eqz v0, :cond_0

    .line 15228
    :try_start_2
    iget-object v1, p0, Lu/aly/fg;->d:Ljava/io/File;

    invoke-static {v1, v0}, Lu/aly/cs;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 15232
    :cond_0
    :goto_0
    return-void

    .line 15225
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 15231
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private e()Lu/aly/bf;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lu/aly/fg;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return-object v0

    .line 203
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, p0, Lu/aly/fg;->d:Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    invoke-static {v2}, Lu/aly/cs;->b(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 206
    new-instance v1, Lu/aly/bf;

    invoke-direct {v1}, Lu/aly/bf;-><init>()V

    .line 207
    new-instance v4, Lu/aly/cz;

    invoke-direct {v4}, Lu/aly/cz;-><init>()V

    invoke-virtual {v4, v1, v3}, Lu/aly/cz;->a(Lu/aly/cw;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    invoke-static {v2}, Lu/aly/cs;->c(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    invoke-static {v2}, Lu/aly/cs;->c(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lu/aly/cs;->c(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 211
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 86
    iget-wide v0, p0, Lu/aly/fg;->e:J

    sub-long v0, v10, v0

    iget-wide v8, p0, Lu/aly/fg;->f:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_e

    .line 89
    iget-object v0, p0, Lu/aly/fg;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/fc;

    .line 90
    invoke-virtual {v0}, Lu/aly/fc;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3039
    iget-object v4, v0, Lu/aly/fc;->c:Lu/aly/az;

    .line 3041
    if-nez v4, :cond_6

    move-object v8, v7

    .line 3042
    :goto_1
    if-nez v4, :cond_7

    move v3, v2

    .line 3043
    :goto_2
    invoke-virtual {v0}, Lu/aly/fc;->a()Ljava/lang/String;

    move-result-object v6

    .line 4093
    if-nez v6, :cond_8

    move-object v6, v7

    .line 3045
    :cond_1
    :goto_3
    if-eqz v6, :cond_b

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 3046
    if-nez v4, :cond_2

    .line 3047
    new-instance v4, Lu/aly/az;

    invoke-direct {v4}, Lu/aly/az;-><init>()V

    .line 4179
    :cond_2
    iput-object v6, v4, Lu/aly/az;->a:Ljava/lang/String;

    .line 3050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 4206
    iput-wide v12, v4, Lu/aly/az;->b:J

    .line 4207
    invoke-virtual {v4}, Lu/aly/az;->a()V

    .line 3051
    add-int/lit8 v3, v3, 0x1

    .line 4232
    iput v3, v4, Lu/aly/az;->c:I

    .line 4233
    invoke-virtual {v4}, Lu/aly/az;->b()V

    .line 3053
    new-instance v3, Lu/aly/at;

    invoke-direct {v3}, Lu/aly/at;-><init>()V

    .line 3054
    iget-object v12, v0, Lu/aly/fc;->a:Ljava/lang/String;

    .line 5193
    iput-object v12, v3, Lu/aly/at;->a:Ljava/lang/String;

    .line 5247
    iput-object v6, v3, Lu/aly/at;->c:Ljava/lang/String;

    .line 6220
    iput-object v8, v3, Lu/aly/at;->b:Ljava/lang/String;

    .line 7202
    iget-wide v12, v4, Lu/aly/az;->b:J

    .line 7274
    iput-wide v12, v3, Lu/aly/at;->d:J

    .line 7275
    invoke-virtual {v3}, Lu/aly/at;->b()V

    .line 3059
    iget-object v6, v0, Lu/aly/fc;->b:Ljava/util/List;

    if-nez v6, :cond_3

    .line 3060
    new-instance v6, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Lu/aly/fc;->b:Ljava/util/List;

    .line 3063
    :cond_3
    iget-object v6, v0, Lu/aly/fc;->b:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3065
    iget-object v3, v0, Lu/aly/fc;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0xa

    if-le v3, v6, :cond_4

    .line 3066
    iget-object v3, v0, Lu/aly/fc;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3069
    :cond_4
    iput-object v4, v0, Lu/aly/fc;->c:Lu/aly/az;

    move v3, v5

    .line 94
    :goto_4
    if-eqz v3, :cond_f

    .line 97
    invoke-virtual {v0}, Lu/aly/fc;->b()Z

    move-result v1

    if-nez v1, :cond_5

    .line 98
    iget-object v1, p0, Lu/aly/fg;->h:Lu/aly/fh;

    .line 8027
    iget-object v0, v0, Lu/aly/fc;->a:Ljava/lang/String;

    .line 8249
    iget-object v1, v1, Lu/aly/fh;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    move v0, v5

    :goto_5
    move v1, v0

    .line 101
    goto/16 :goto_0

    .line 3175
    :cond_6
    iget-object v3, v4, Lu/aly/az;->a:Ljava/lang/String;

    move-object v8, v3

    goto :goto_1

    .line 3228
    :cond_7
    iget v3, v4, Lu/aly/az;->c:I

    goto :goto_2

    .line 4097
    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 4099
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_9

    move-object v6, v7

    .line 4100
    goto :goto_3

    .line 4103
    :cond_9
    const-string v12, "0"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    move-object v6, v7

    .line 4104
    goto/16 :goto_3

    .line 4107
    :cond_a
    const-string v12, "unknown"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v6, v7

    .line 4108
    goto/16 :goto_3

    :cond_b
    move v3, v2

    .line 3073
    goto :goto_4

    .line 103
    :cond_c
    if-eqz v1, :cond_d

    .line 104
    invoke-direct {p0}, Lu/aly/fg;->c()V

    .line 105
    iget-object v0, p0, Lu/aly/fg;->h:Lu/aly/fh;

    invoke-virtual {v0}, Lu/aly/fh;->a()V

    .line 106
    invoke-direct {p0}, Lu/aly/fg;->d()V

    .line 109
    :cond_d
    iput-wide v10, p0, Lu/aly/fg;->e:J

    .line 111
    :cond_e
    return-void

    :cond_f
    move v0, v1

    goto :goto_5
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 149
    .line 150
    iget-object v0, p0, Lu/aly/fg;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/fc;

    .line 151
    invoke-virtual {v0}, Lu/aly/fc;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 14085
    iget-object v4, v0, Lu/aly/fc;->b:Ljava/util/List;

    .line 154
    if-eqz v4, :cond_3

    .line 15085
    iget-object v4, v0, Lu/aly/fc;->b:Ljava/util/List;

    .line 154
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 15089
    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/fc;->b:Ljava/util/List;

    .line 156
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    if-eqz v1, :cond_2

    .line 161
    iget-object v0, p0, Lu/aly/fg;->a:Lu/aly/bf;

    invoke-virtual {v0, v2}, Lu/aly/bf;->a(Z)V

    .line 162
    invoke-direct {p0}, Lu/aly/fg;->d()V

    .line 164
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method
