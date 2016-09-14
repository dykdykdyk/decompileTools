.class public final Lcom/umeng/analytics/s;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lu/aly/s;


# instance fields
.field a:Lu/aly/y;

.field b:Lu/aly/w;

.field c:Lu/aly/m;

.field d:Lu/aly/ej;

.field e:Z

.field f:Z

.field private g:Landroid/content/Context;

.field private h:Lu/aly/l;

.field private i:Lu/aly/h;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/umeng/analytics/s;->g:Landroid/content/Context;

    .line 38
    new-instance v0, Lu/aly/l;

    invoke-direct {v0}, Lu/aly/l;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/s;->h:Lu/aly/l;

    .line 39
    new-instance v0, Lu/aly/y;

    invoke-direct {v0}, Lu/aly/y;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/s;->a:Lu/aly/y;

    .line 40
    new-instance v0, Lu/aly/w;

    invoke-direct {v0}, Lu/aly/w;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/s;->b:Lu/aly/w;

    .line 43
    iput-object v2, p0, Lcom/umeng/analytics/s;->d:Lu/aly/ej;

    .line 45
    iput-boolean v1, p0, Lcom/umeng/analytics/s;->e:Z

    .line 46
    iput-boolean v1, p0, Lcom/umeng/analytics/s;->f:Z

    .line 49
    iget-object v0, p0, Lcom/umeng/analytics/s;->h:Lu/aly/l;

    .line 1029
    iput-object p0, v0, Lu/aly/l;->a:Lu/aly/s;

    .line 50
    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/umeng/analytics/s;->e:Z

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/s;->g:Landroid/content/Context;

    .line 55
    new-instance v0, Lu/aly/m;

    iget-object v1, p0, Lcom/umeng/analytics/s;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/s;->c:Lu/aly/m;

    .line 56
    iget-object v0, p0, Lcom/umeng/analytics/s;->g:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/h;->a(Landroid/content/Context;)Lu/aly/h;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/s;->i:Lu/aly/h;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/s;->e:Z

    .line 59
    iget-object v0, p0, Lcom/umeng/analytics/s;->d:Lu/aly/ej;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/umeng/analytics/s;->g:Landroid/content/Context;

    .line 1129
    sput-object v0, Lu/aly/ej;->f:Landroid/content/Context;

    .line 1130
    invoke-static {}, Lu/aly/ev;->a()Lu/aly/ej;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/umeng/analytics/s;->d:Lu/aly/ej;

    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/analytics/s;->f:Z

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lcom/umeng/analytics/t;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/t;-><init>(Lcom/umeng/analytics/s;)V

    invoke-static {v0}, Lcom/umeng/analytics/y;->b(Ljava/lang/Runnable;)V

    .line 77
    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 264
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/s;->e:Z

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/s;->a(Landroid/content/Context;)V

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/s;->c:Lu/aly/m;

    .line 3085
    invoke-static {p2}, Lu/aly/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lu/aly/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3086
    :cond_1
    :goto_0
    return-void

    .line 3089
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3090
    if-nez p3, :cond_6

    const-string v0, ""

    :goto_1
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    new-instance v0, Lu/aly/ai;

    invoke-direct {v0}, Lu/aly/ai;-><init>()V

    .line 3093
    iput-object p2, v0, Lu/aly/ai;->c:Ljava/lang/String;

    .line 3094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lu/aly/ai;->d:J

    .line 3095
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_3

    .line 3096
    iput-wide p4, v0, Lu/aly/ai;->e:J

    .line 3098
    :cond_3
    const/4 v2, 0x1

    iput v2, v0, Lu/aly/ai;->a:I

    .line 3099
    iget-object v2, v0, Lu/aly/ai;->f:Ljava/util/Map;

    if-nez p3, :cond_4

    const-string p3, ""

    :cond_4
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3100
    iget-object v2, v0, Lu/aly/ai;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 3101
    iget-object v2, v1, Lu/aly/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/w;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lu/aly/ai;->b:Ljava/lang/String;

    .line 3103
    :cond_5
    iget-object v1, v1, Lu/aly/m;->b:Lu/aly/h;

    invoke-virtual {v1, v0}, Lu/aly/h;->a(Lu/aly/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    move-object v0, p3

    .line 3090
    goto :goto_1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 12

    .prologue
    .line 296
    :try_start_0
    iget-object v5, p0, Lcom/umeng/analytics/s;->a:Lu/aly/y;

    .line 4061
    const/4 v4, 0x0

    .line 4062
    const-wide/16 v2, 0x0

    .line 4064
    iget-object v6, v5, Lu/aly/y;->a:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4065
    :try_start_1
    iget-object v0, v5, Lu/aly/y;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4066
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v2

    if-lez v1, :cond_4

    .line 4067
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4068
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-wide v10, v2

    move-object v2, v0

    move-wide v0, v10

    :goto_1
    move-object v4, v2

    move-wide v2, v0

    .line 4070
    goto :goto_0

    .line 4071
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4072
    if-eqz v4, :cond_1

    .line 4073
    :try_start_2
    invoke-virtual {v5, v4}, Lu/aly/y;->b(Ljava/lang/String;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/s;->g:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 299
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/s;->i:Lu/aly/h;

    if-eqz v0, :cond_2

    .line 300
    new-instance v0, Lu/aly/ah;

    invoke-direct {v0}, Lu/aly/ah;-><init>()V

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lu/aly/ah;->a:J

    .line 302
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lu/aly/ah;->b:J

    .line 303
    invoke-static {p1}, Lcom/umeng/analytics/r;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/ah;->c:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/umeng/analytics/s;->i:Lu/aly/h;

    invoke-virtual {v1, v0}, Lu/aly/h;->a(Lu/aly/o;)V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/s;->d:Lu/aly/ej;

    .line 4519
    invoke-virtual {v0}, Lu/aly/ej;->b()V

    .line 307
    iget-object v0, p0, Lcom/umeng/analytics/s;->g:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/s;->b(Landroid/content/Context;)V

    .line 308
    iget-object v0, p0, Lcom/umeng/analytics/s;->g:Landroid/content/Context;

    .line 5024
    const-string v1, "umeng_general_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    :cond_3
    invoke-static {}, Lcom/umeng/analytics/y;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 315
    :goto_2
    return-void

    .line 4071
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v1, "Exception in onAppCrash"

    invoke-static {v1, v0}, Lu/aly/ct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move-wide v0, v2

    move-object v2, v4

    goto :goto_1
.end method

.method final b(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-static {p1}, Lu/aly/w;->c(Landroid/content/Context;)V

    .line 226
    iget-object v1, p0, Lcom/umeng/analytics/s;->a:Lu/aly/y;

    .line 3024
    const-string v0, "umeng_general_config"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2079
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2081
    iget-object v3, v1, Lu/aly/y;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2082
    const-string v3, "activities"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2085
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2086
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    :cond_0
    iget-object v4, v1, Lu/aly/y;->b:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2091
    :try_start_0
    iget-object v0, v1, Lu/aly/y;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ak;

    .line 2093
    const-string v6, "[\"%s\",%d]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Lu/aly/ak;->a:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v10, v0, Lu/aly/ak;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2098
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2097
    :cond_1
    :try_start_1
    iget-object v0, v1, Lu/aly/y;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2098
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2102
    const-string v0, "activities"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2103
    const-string v0, "activities"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2106
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    iget-object v0, p0, Lcom/umeng/analytics/s;->i:Lu/aly/h;

    invoke-virtual {v0}, Lu/aly/h;->a()V

    .line 231
    return-void
.end method
