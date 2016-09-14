.class public final Lu/aly/ej;
.super Ljava/lang/Object;
.source "UMCCAggregatedManager.java"


# static fields
.field public static f:Landroid/content/Context;


# instance fields
.field a:Lu/aly/eg;

.field public b:Lu/aly/fa;

.field public c:Z

.field public d:Z

.field public e:J

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Lu/aly/eu;

.field private i:Lu/aly/ey;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lu/aly/ej;->a:Lu/aly/eg;

    .line 45
    iput-object v2, p0, Lu/aly/ej;->i:Lu/aly/ey;

    .line 46
    iput-object v2, p0, Lu/aly/ej;->b:Lu/aly/fa;

    .line 48
    iput-boolean v0, p0, Lu/aly/ej;->c:Z

    .line 49
    iput-boolean v0, p0, Lu/aly/ej;->d:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/ej;->e:J

    .line 52
    const-string v0, "main_fest_mode"

    iput-object v0, p0, Lu/aly/ej;->j:Ljava/lang/String;

    .line 53
    const-string v0, "main_fest_timestamp"

    iput-object v0, p0, Lu/aly/ej;->k:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/ej;->g:Ljava/util/List;

    .line 61
    iput-object v2, p0, Lu/aly/ej;->h:Lu/aly/eu;

    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lu/aly/ek;

    invoke-direct {v1, p0}, Lu/aly/ek;-><init>(Lu/aly/ej;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lu/aly/ej;->l:Ljava/lang/Thread;

    .line 107
    sget-object v0, Lu/aly/ej;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lu/aly/ej;->a:Lu/aly/eg;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lu/aly/eg;

    invoke-direct {v0}, Lu/aly/eg;-><init>()V

    iput-object v0, p0, Lu/aly/ej;->a:Lu/aly/eg;

    .line 112
    :cond_0
    iget-object v0, p0, Lu/aly/ej;->i:Lu/aly/ey;

    if-nez v0, :cond_1

    .line 113
    sget-object v0, Lu/aly/ej;->f:Landroid/content/Context;

    .line 1038
    sput-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    .line 1039
    invoke-static {}, Lu/aly/ez;->a()Lu/aly/ey;

    move-result-object v0

    .line 113
    iput-object v0, p0, Lu/aly/ej;->i:Lu/aly/ey;

    .line 115
    :cond_1
    iget-object v0, p0, Lu/aly/ej;->b:Lu/aly/fa;

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Lu/aly/fa;

    invoke-direct {v0}, Lu/aly/fa;-><init>()V

    iput-object v0, p0, Lu/aly/ej;->b:Lu/aly/fa;

    .line 119
    :cond_2
    iget-object v0, p0, Lu/aly/ej;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lu/aly/ej;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 311
    sget-object v0, Lu/aly/ej;->f:Landroid/content/Context;

    .line 2024
    const-string v1, "umeng_general_config"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    const-string v1, "main_fest_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lu/aly/ej;->d:Z

    .line 313
    const-string v1, "main_fest_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/ej;->e:J

    .line 314
    return-void
.end method

.method public final a(JJLjava/lang/String;)V
    .locals 7

    .prologue
    const/16 v3, 0x80

    .line 423
    new-instance v1, Lu/aly/en;

    invoke-direct {v1, p0}, Lu/aly/en;-><init>(Lu/aly/ej;)V

    .line 2161
    :try_start_0
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2254
    :try_start_1
    const-string v0, "system"

    invoke-static {v2, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 3025
    invoke-static {}, Lu/aly/ex;->a()Lu/aly/ew;

    .line 2256
    if-ge v0, v3, :cond_1

    .line 2257
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2258
    const-string v3, "key"

    invoke-virtual {v0, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    const-string v3, "timeStamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2260
    const-string v3, "count"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2261
    const-string v3, "system"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2163
    :cond_0
    :goto_0
    :try_start_2
    const-string v0, "success"

    invoke-virtual {v1, v0}, Lu/aly/ef;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2167
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    .line 2168
    :goto_1
    return-void

    .line 2262
    :cond_1
    if-ne v0, v3, :cond_2

    .line 2263
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2264
    const-string v3, "key"

    const-string v4, "__meta_ve_of"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const-string v3, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2266
    const-string v3, "count"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2267
    const-string v3, "system"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 2270
    :cond_2
    const-string v0, "__meta_ve_of"
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3283
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3284
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update system set count=count+1 where key like \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3287
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3288
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3291
    if-eqz v2, :cond_0

    .line 3292
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2165
    :catch_1
    move-exception v0

    :try_start_6
    const-string v0, "package size to big or envelopeOverflowPackageCount exception"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2167
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    goto :goto_1

    .line 3291
    :catch_2
    move-exception v0

    if-eqz v2, :cond_0

    .line 3292
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 2167
    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    throw v0

    .line 3291
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_3

    .line 3292
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v0
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 477
    :try_start_0
    iget-object v0, p0, Lu/aly/ej;->a:Lu/aly/eg;

    .line 4033
    iget-object v0, v0, Lu/aly/eg;->a:Ljava/util/Map;

    .line 477
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 478
    new-instance v0, Lu/aly/eq;

    invoke-direct {v0, p0}, Lu/aly/eq;-><init>(Lu/aly/ej;)V

    iget-object v1, p0, Lu/aly/ej;->a:Lu/aly/eg;

    .line 5033
    iget-object v1, v1, Lu/aly/eg;->a:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 5088
    :try_start_1
    sget-object v2, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/as;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5089
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v2, v1}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z

    .line 5090
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lu/aly/ef;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5094
    :try_start_2
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    .line 483
    :cond_0
    :goto_0
    iget-object v0, p0, Lu/aly/ej;->b:Lu/aly/fa;

    .line 6050
    iget-object v0, v0, Lu/aly/fa;->a:Ljava/util/Map;

    .line 483
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 484
    new-instance v0, Lu/aly/er;

    invoke-direct {v0, p0}, Lu/aly/er;-><init>(Lu/aly/ej;)V

    iget-object v1, p0, Lu/aly/ej;->b:Lu/aly/fa;

    .line 7050
    iget-object v1, v1, Lu/aly/fa;->a:Ljava/util/Map;

    .line 484
    invoke-static {v0, v1}, Lu/aly/ey;->a(Lu/aly/ef;Ljava/util/Map;)V

    .line 494
    :cond_1
    iget-object v0, p0, Lu/aly/ej;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 495
    new-instance v0, Lu/aly/ef;

    invoke-direct {v0}, Lu/aly/ef;-><init>()V

    iget-object v1, p0, Lu/aly/ej;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lu/aly/ey;->a(Lu/aly/ef;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 501
    :cond_2
    :goto_1
    return-void

    .line 5092
    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "save agg data error"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5094
    :try_start_4
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 497
    :catch_1
    move-exception v0

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convertMemoryToCacheTable happen error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 5094
    :catchall_0
    move-exception v0

    :try_start_5
    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
.end method
