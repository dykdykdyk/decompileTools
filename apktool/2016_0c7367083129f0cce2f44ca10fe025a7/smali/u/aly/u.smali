.class public final Lu/aly/u;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field private static i:Landroid/content/Context;


# instance fields
.field a:Lu/aly/x;

.field b:Lu/aly/r;

.field c:Lu/aly/z;

.field d:Z

.field e:Z

.field private f:Lu/aly/fg;

.field private g:Lu/aly/fj;

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu/aly/x;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lu/aly/u;->h:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/u;->d:Z

    .line 61
    invoke-static {p1}, Lu/aly/fg;->a(Landroid/content/Context;)Lu/aly/fg;

    move-result-object v0

    iput-object v0, p0, Lu/aly/u;->f:Lu/aly/fg;

    .line 62
    invoke-static {p1}, Lu/aly/fj;->a(Landroid/content/Context;)Lu/aly/fj;

    move-result-object v0

    iput-object v0, p0, Lu/aly/u;->g:Lu/aly/fj;

    .line 64
    sput-object p1, Lu/aly/u;->i:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lu/aly/u;->a:Lu/aly/x;

    .line 66
    new-instance v0, Lu/aly/r;

    invoke-direct {v0, p1}, Lu/aly/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/u;->b:Lu/aly/r;

    .line 67
    iget-object v0, p0, Lu/aly/u;->b:Lu/aly/r;

    iget-object v1, p0, Lu/aly/u;->a:Lu/aly/x;

    .line 1050
    iput-object v1, v0, Lu/aly/r;->a:Lu/aly/p;

    .line 68
    return-void
.end method


# virtual methods
.method final a([B)I
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 211
    new-instance v7, Lu/aly/bz;

    invoke-direct {v7}, Lu/aly/bz;-><init>()V

    .line 212
    new-instance v0, Lu/aly/cz;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1}, Lu/aly/dk;-><init>()V

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Lu/aly/dr;)V

    .line 216
    :try_start_0
    invoke-virtual {v0, v7, p1}, Lu/aly/cz;->a(Lu/aly/cw;[B)V

    .line 218
    iget v0, v7, Lu/aly/bz;->a:I

    if-ne v0, v2, :cond_1

    .line 219
    iget-object v8, p0, Lu/aly/u;->g:Lu/aly/fj;

    .line 4227
    iget-object v9, v7, Lu/aly/bz;->c:Lu/aly/bl;

    .line 5109
    if-eqz v9, :cond_0

    .line 6254
    iget-object v0, v9, Lu/aly/bl;->c:Ljava/lang/String;

    .line 6075
    invoke-static {v9}, Lu/aly/fj;->a(Lu/aly/bl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    .line 5115
    :goto_0
    if-eqz v0, :cond_0

    .line 5125
    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5126
    :try_start_1
    iget-object v5, v8, Lu/aly/fj;->c:Lu/aly/bl;

    .line 5129
    if-nez v5, :cond_6

    move-object v6, v4

    .line 5130
    :goto_1
    if-nez v5, :cond_7

    .line 5131
    invoke-static {v9}, Lu/aly/fj;->b(Lu/aly/bl;)Lu/aly/bl;

    move-result-object v0

    .line 5136
    :goto_2
    iput-object v0, v8, Lu/aly/fj;->c:Lu/aly/bl;

    .line 5137
    if-nez v0, :cond_b

    move-object v0, v4

    .line 5138
    :goto_3
    invoke-static {v6, v0}, Lu/aly/fj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    .line 5141
    :goto_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5143
    :try_start_2
    iget-object v1, v8, Lu/aly/fj;->c:Lu/aly/bl;

    if-eqz v1, :cond_0

    .line 5146
    if-eqz v0, :cond_0

    .line 5147
    iget-object v0, v8, Lu/aly/fj;->b:Lu/aly/fk;

    iget-object v1, v8, Lu/aly/fj;->c:Lu/aly/bl;

    invoke-virtual {v0, v1}, Lu/aly/fk;->a(Lu/aly/bl;)V

    .line 5148
    iget-object v0, v8, Lu/aly/fj;->a:Lu/aly/t;

    if-eqz v0, :cond_0

    .line 5149
    iget-object v0, v8, Lu/aly/fj;->a:Lu/aly/t;

    iget-object v1, v8, Lu/aly/fj;->b:Lu/aly/fk;

    invoke-interface {v0, v1}, Lu/aly/t;->a(Lu/aly/fk;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lu/aly/u;->g:Lu/aly/fj;

    .line 11246
    iget-object v1, v0, Lu/aly/fj;->c:Lu/aly/bl;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_1

    .line 11251
    :try_start_3
    new-instance v1, Lu/aly/da;

    invoke-direct {v1}, Lu/aly/da;-><init>()V

    iget-object v3, v0, Lu/aly/fj;->c:Lu/aly/bl;

    invoke-virtual {v1, v3}, Lu/aly/da;->a(Lu/aly/cw;)[B

    move-result-object v1

    .line 11252
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lu/aly/fj;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v4, ".imprint"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lu/aly/cs;->a(Ljava/io/File;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 222
    :cond_1
    :goto_5
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send log:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12200
    iget-object v1, v7, Lu/aly/bz;->b:Ljava/lang/String;

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ct;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 227
    :goto_6
    iget v0, v7, Lu/aly/bz;->a:I

    if-ne v0, v2, :cond_c

    .line 228
    const/4 v0, 0x2

    .line 230
    :goto_7
    return v0

    .line 7201
    :cond_2
    :try_start_5
    iget-object v0, v9, Lu/aly/bl;->a:Ljava/util/Map;

    .line 6079
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bs;

    .line 7226
    iget-object v5, v0, Lu/aly/bs;->c:Ljava/lang/String;

    .line 6080
    invoke-static {v5}, Lcom/umeng/analytics/r;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 6081
    invoke-static {v0}, Lu/aly/fj;->a(Lu/aly/bs;)[B

    move-result-object v6

    move v0, v3

    .line 6083
    :goto_8
    const/4 v10, 0x4

    if-ge v0, v10, :cond_3

    .line 6084
    aget-byte v10, v5, v0

    aget-byte v11, v6, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eq v10, v11, :cond_4

    move v0, v3

    .line 6085
    goto/16 :goto_0

    .line 6083
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_5
    move v0, v2

    .line 6089
    goto/16 :goto_0

    .line 7254
    :cond_6
    :try_start_6
    iget-object v0, v5, Lu/aly/bl;->c:Ljava/lang/String;

    move-object v6, v0

    goto/16 :goto_1

    .line 8169
    :cond_7
    if-nez v9, :cond_8

    move-object v0, v5

    .line 8170
    goto/16 :goto_2

    .line 8201
    :cond_8
    iget-object v10, v5, Lu/aly/bl;->a:Ljava/util/Map;

    .line 9201
    iget-object v0, v9, Lu/aly/bl;->a:Ljava/util/Map;

    .line 8176
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bs;

    invoke-virtual {v1}, Lu/aly/bs;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 5141
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 224
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 8180
    :cond_9
    :try_start_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 9228
    :cond_a
    iget v0, v9, Lu/aly/bl;->b:I

    .line 9232
    iput v0, v5, Lu/aly/bl;->b:I

    .line 9233
    invoke-virtual {v5}, Lu/aly/bl;->b()V

    .line 8185
    invoke-static {v5}, Lu/aly/fj;->a(Lu/aly/bl;)Ljava/lang/String;

    move-result-object v0

    .line 9258
    iput-object v0, v5, Lu/aly/bl;->c:Ljava/lang/String;

    move-object v0, v5

    .line 8187
    goto/16 :goto_2

    .line 10254
    :cond_b
    iget-object v0, v0, Lu/aly/bl;->c:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 11254
    :catch_1
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_5

    .line 230
    :cond_c
    const/4 v0, 0x3

    goto/16 :goto_7

    :cond_d
    move v0, v3

    goto/16 :goto_4
.end method

.method public final a()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lu/aly/u;->c:Lu/aly/z;

    if-eqz v1, :cond_5

    .line 1150
    iget-object v0, p0, Lu/aly/u;->f:Lu/aly/fg;

    invoke-virtual {v0}, Lu/aly/fg;->a()V

    .line 1151
    iget-object v1, p0, Lu/aly/u;->c:Lu/aly/z;

    .line 1153
    :try_start_0
    iget-object v0, p0, Lu/aly/u;->f:Lu/aly/fg;

    .line 2114
    iget-object v0, v0, Lu/aly/fg;->a:Lu/aly/bf;

    .line 1154
    new-instance v2, Lu/aly/da;

    invoke-direct {v2}, Lu/aly/da;-><init>()V

    invoke-virtual {v2, v0}, Lu/aly/da;->a(Lu/aly/cw;)[B

    move-result-object v0

    .line 1155
    iget-object v2, v1, Lu/aly/z;->a:Lu/aly/am;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lu/aly/am;->O:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_0
    sget-object v0, Lu/aly/u;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/aa;->a(Lu/aly/z;)[B

    move-result-object v0

    .line 1161
    sget-object v1, Lu/aly/u;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/analytics/r;->a(Landroid/content/Context;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1165
    if-nez v0, :cond_1

    .line 1166
    const-string v0, "message is null"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V

    .line 1200
    :cond_0
    :goto_1
    return-void

    .line 1157
    :catch_0
    move-exception v0

    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1171
    :cond_1
    iget-boolean v1, p0, Lu/aly/u;->d:Z

    if-nez v1, :cond_2

    .line 1172
    sget-object v1, Lu/aly/u;->i:Landroid/content/Context;

    sget-object v2, Lu/aly/u;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/fe;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/fe;

    move-result-object v0

    .line 1177
    :goto_2
    invoke-virtual {v0}, Lu/aly/fe;->a()[B

    move-result-object v1

    .line 1178
    sget-object v0, Lu/aly/u;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/aa;->e()V

    .line 1181
    iget-object v0, p0, Lu/aly/u;->b:Lu/aly/r;

    invoke-virtual {v0, v1}, Lu/aly/r;->a([B)[B

    move-result-object v0

    .line 1182
    if-nez v0, :cond_3

    .line 1183
    const/4 v0, 0x1

    .line 1188
    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1202
    :pswitch_0
    iget-boolean v0, p0, Lu/aly/u;->e:Z

    if-nez v0, :cond_0

    .line 1203
    sget-object v0, Lu/aly/u;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/aa;->a([B)V

    goto :goto_1

    .line 1174
    :cond_2
    sget-object v1, Lu/aly/u;->i:Landroid/content/Context;

    sget-object v2, Lu/aly/u;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/fe;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/fe;

    move-result-object v0

    goto :goto_2

    .line 1185
    :cond_3
    invoke-virtual {p0, v0}, Lu/aly/u;->a([B)I

    move-result v0

    goto :goto_3

    .line 1190
    :pswitch_1
    iget-object v0, p0, Lu/aly/u;->a:Lu/aly/x;

    invoke-virtual {v0}, Lu/aly/x;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1191
    iget-object v0, p0, Lu/aly/u;->a:Lu/aly/x;

    invoke-virtual {v0}, Lu/aly/x;->g()V

    .line 1194
    :cond_4
    iget-object v0, p0, Lu/aly/u;->f:Lu/aly/fg;

    invoke-virtual {v0}, Lu/aly/fg;->b()V

    .line 1195
    iget-object v0, p0, Lu/aly/u;->a:Lu/aly/x;

    invoke-virtual {v0}, Lu/aly/x;->f()V

    .line 1196
    const-wide/16 v0, 0x0

    sput-wide v0, Lu/aly/z;->c:J

    goto :goto_1

    .line 1199
    :pswitch_2
    iget-object v0, p0, Lu/aly/u;->a:Lu/aly/x;

    invoke-virtual {v0}, Lu/aly/x;->f()V

    goto :goto_1

    .line 3095
    :cond_5
    sget-object v1, Lu/aly/u;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    move-result-object v1

    .line 3279
    iget-object v1, v1, Lcom/umeng/analytics/aa;->b:Lcom/umeng/analytics/ae;

    .line 3096
    new-instance v2, Lu/aly/v;

    invoke-direct {v2, p0}, Lu/aly/v;-><init>(Lu/aly/u;)V

    .line 3353
    iget-object v3, v1, Lcom/umeng/analytics/ae;->a:Ljava/io/File;

    iget-object v4, v1, Lcom/umeng/analytics/ae;->b:Ljava/io/FilenameFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 3356
    if-eqz v3, :cond_6

    array-length v4, v3

    const/16 v5, 0xa

    if-lt v4, v5, :cond_6

    .line 3357
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3358
    array-length v4, v3

    add-int/lit8 v4, v4, -0xa

    .line 3359
    new-instance v5, Lcom/umeng/analytics/af;

    invoke-direct {v5, v1, v4}, Lcom/umeng/analytics/af;-><init>(Lcom/umeng/analytics/ae;I)V

    invoke-static {v5}, Lcom/umeng/analytics/y;->b(Ljava/lang/Runnable;)V

    move v1, v0

    .line 3370
    :goto_4
    if-ge v1, v4, :cond_6

    .line 3371
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3370
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3375
    :cond_6
    if-eqz v3, :cond_0

    array-length v1, v3

    if-lez v1, :cond_0

    .line 3378
    array-length v1, v3

    .line 3380
    :goto_5
    if-ge v0, v1, :cond_8

    .line 3383
    :try_start_1
    aget-object v4, v3, v0

    invoke-interface {v2, v4}, Lcom/umeng/analytics/ah;->a(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 3387
    if-eqz v4, :cond_7

    .line 3388
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3380
    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3388
    :catch_1
    move-exception v4

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_6

    :catchall_0
    move-exception v0

    throw v0

    .line 3392
    :cond_8
    invoke-interface {v2}, Lcom/umeng/analytics/ah;->a()V

    goto/16 :goto_1

    .line 1188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lu/aly/t;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lu/aly/u;->g:Lu/aly/fj;

    .line 1053
    iput-object p1, v0, Lu/aly/fj;->a:Lu/aly/t;

    .line 84
    return-void
.end method
