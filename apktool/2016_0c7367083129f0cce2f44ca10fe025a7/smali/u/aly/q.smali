.class public final Lu/aly/q;
.super Ljava/lang/Object;
.source "MemoCache.java"


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/q;->b:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/q;->a:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lu/aly/q;->a:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 6

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 47
    sget-wide v2, Lu/aly/z;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 51
    :cond_0
    monitor-exit p0

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lu/aly/o;)V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/q;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lu/aly/z;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 83
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lu/aly/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/o;

    .line 88
    invoke-interface {v0, p1}, Lu/aly/o;->a(Lu/aly/z;)V

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lu/aly/q;->a:Landroid/content/Context;

    .line 1024
    const-string v1, "umeng_general_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    monitor-exit p0

    .line 122
    :cond_1
    :goto_1
    return-void

    .line 94
    :cond_2
    const-string v1, "userlevel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 96
    iget-object v1, p1, Lu/aly/z;->b:Lu/aly/al;

    iput-object v0, v1, Lu/aly/al;->j:Ljava/lang/String;

    .line 98
    :cond_3
    iget-object v0, p0, Lu/aly/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    sget-wide v0, Lu/aly/z;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->d:Lu/aly/aa;

    sget-wide v2, Lu/aly/z;->c:J

    iput-wide v2, v0, Lu/aly/aa;->a:J

    .line 109
    :cond_4
    iget-object v0, p0, Lu/aly/q;->a:Landroid/content/Context;

    .line 1129
    sput-object v0, Lu/aly/ej;->f:Landroid/content/Context;

    .line 1130
    invoke-static {}, Lu/aly/ev;->a()Lu/aly/ej;

    move-result-object v2

    .line 1319
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->h:Lu/aly/ac;

    if-eqz v0, :cond_7

    .line 1320
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v3, v0, Lu/aly/al;->h:Lu/aly/ac;

    new-instance v0, Lu/aly/ef;

    invoke-direct {v0}, Lu/aly/ef;-><init>()V

    .line 1326
    invoke-static {}, Lu/aly/ey;->a()Ljava/util/Map;

    move-result-object v4

    .line 1327
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1328
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 1329
    :cond_5
    const/4 v0, 0x0

    .line 1320
    :goto_2
    iput-object v0, v3, Lu/aly/ac;->a:Ljava/util/Map;

    .line 1321
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->h:Lu/aly/ac;

    new-instance v1, Lu/aly/ef;

    invoke-direct {v1}, Lu/aly/ef;-><init>()V

    .line 1340
    iget-object v1, v2, Lu/aly/ej;->b:Lu/aly/fa;

    .line 2050
    iget-object v1, v1, Lu/aly/fa;->a:Ljava/util/Map;

    .line 1340
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1341
    new-instance v1, Lu/aly/el;

    invoke-direct {v1, v2}, Lu/aly/el;-><init>(Lu/aly/ej;)V

    iget-object v2, v2, Lu/aly/ej;->b:Lu/aly/fa;

    .line 3050
    iget-object v2, v2, Lu/aly/fa;->a:Ljava/util/Map;

    .line 1341
    invoke-static {v1, v2}, Lu/aly/ey;->a(Lu/aly/ef;Ljava/util/Map;)V

    .line 1350
    :cond_6
    new-instance v1, Lu/aly/ef;

    invoke-direct {v1}, Lu/aly/ef;-><init>()V

    invoke-static {v1}, Lu/aly/ey;->a(Lu/aly/ef;)Ljava/util/Map;

    move-result-object v1

    .line 1321
    iput-object v1, v0, Lu/aly/ac;->b:Ljava/util/Map;

    .line 113
    :cond_7
    iget-object v0, p0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/x;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_8

    aget-object v1, v0, v7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    aget-object v1, v0, v8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 115
    iget-object v1, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v1, v1, Lu/aly/al;->g:Lu/aly/ab;

    aget-object v2, v0, v7

    iput-object v2, v1, Lu/aly/ab;->a:Ljava/lang/String;

    .line 116
    iget-object v1, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v1, v1, Lu/aly/al;->g:Lu/aly/ab;

    aget-object v0, v0, v8

    iput-object v0, v1, Lu/aly/ab;->b:Ljava/lang/String;

    .line 121
    :cond_8
    iget-object v0, p0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Lu/aly/ap;

    move-result-object v0

    .line 3242
    iget-boolean v1, v0, Lu/aly/ap;->a:Z

    if-eqz v1, :cond_1

    .line 3244
    iget-object v1, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v1, v1, Lu/aly/al;->f:Ljava/util/Map;

    const-string v2, "client_test"

    iget v0, v0, Lu/aly/ap;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1331
    :cond_9
    iget-object v0, v2, Lu/aly/ej;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1332
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1333
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    move-object v0, v1

    .line 1336
    goto/16 :goto_2
.end method
