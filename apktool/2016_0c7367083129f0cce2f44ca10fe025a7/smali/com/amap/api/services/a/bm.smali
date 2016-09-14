.class public Lcom/amap/api/services/a/bm;
.super Ljava/lang/Object;
.source "DBOperation.java"


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/services/a/bl;",
            ">;",
            "Lcom/amap/api/services/a/bl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/a/br;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/amap/api/services/a/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/bm;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V
    .locals 6

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/br;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2}, Lcom/amap/api/services/a/bl;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 44
    invoke-interface {p2}, Lcom/amap/api/services/a/bl;->b()I

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/br;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/services/a/bl;)V

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->a:Lcom/amap/api/services/a/br;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iput-object p2, p0, Lcom/amap/api/services/a/bm;->c:Lcom/amap/api/services/a/bl;

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Lcom/amap/api/services/a/bn;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 453
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2}, Lcom/amap/api/services/a/bn;->b()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 455
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 456
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 457
    invoke-direct {p0, p1, v4, v1}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    return-object v1
.end method

.method private a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->a:Lcom/amap/api/services/a/br;

    invoke-virtual {v0}, Lcom/amap/api/services/a/br;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    if-nez p1, :cond_1

    .line 490
    const-string v1, "DBOperation"

    const-string v2, "getReadAbleDataBase"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/Class;)Lcom/amap/api/services/a/bl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/services/a/bl;",
            ">;)",
            "Lcom/amap/api/services/a/bl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 31
    const-class v1, Lcom/amap/api/services/a/bm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/bm;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/amap/api/services/a/bm;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    sget-object v0, Lcom/amap/api/services/a/bm;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/bl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/amap/api/services/a/bn;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/amap/api/services/a/bn;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 351
    invoke-interface {p3}, Lcom/amap/api/services/a/bn;->b()Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 352
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 353
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 354
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 355
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v2, v1

    .line 356
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 357
    const-class v0, Lcom/amap/api/services/a/bo;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 361
    check-cast v0, Lcom/amap/api/services/a/bo;

    .line 362
    invoke-interface {v0}, Lcom/amap/api/services/a/bo;->b()I

    move-result v6

    .line 363
    invoke-interface {v0}, Lcom/amap/api/services/a/bo;->a()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 365
    packed-switch v6, :pswitch_data_0

    .line 355
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 367
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 371
    :pswitch_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    .line 372
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 375
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 376
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 379
    :pswitch_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 380
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 383
    :pswitch_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 387
    :pswitch_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 388
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 391
    :pswitch_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 392
    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 396
    :cond_1
    return-object v3

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lcom/amap/api/services/a/bn;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amap/api/services/a/bn;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    const/4 v0, 0x0

    .line 526
    :goto_0
    return-object v0

    .line 525
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/services/a/bn;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string v0, ""

    .line 97
    :goto_0
    return-object v0

    .line 83
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 91
    :cond_1
    const-string v4, " and "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 92
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/Class;)Lcom/amap/api/services/a/bn;

    move-result-object v0

    .line 214
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/bm;->a(Lcom/amap/api/services/a/bn;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 221
    invoke-direct {p0, p2, v0}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Object;Lcom/amap/api/services/a/bn;)Landroid/content/ContentValues;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 225
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 401
    const-class v0, Lcom/amap/api/services/a/bo;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 402
    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 405
    :cond_0
    check-cast v0, Lcom/amap/api/services/a/bo;

    .line 406
    invoke-interface {v0}, Lcom/amap/api/services/a/bo;->b()I

    move-result v1

    .line 408
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 416
    :pswitch_0
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v1

    .line 417
    invoke-interface {v0}, Lcom/amap/api/services/a/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 411
    :pswitch_1
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 412
    invoke-interface {v0}, Lcom/amap/api/services/a/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 421
    :pswitch_2
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 422
    invoke-interface {v0}, Lcom/amap/api/services/a/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 426
    :pswitch_3
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v2

    .line 427
    invoke-interface {v0}, Lcom/amap/api/services/a/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 431
    :pswitch_4
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 432
    invoke-interface {v0}, Lcom/amap/api/services/a/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :pswitch_5
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v1

    .line 437
    invoke-interface {v0}, Lcom/amap/api/services/a/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 441
    :pswitch_6
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 442
    invoke-interface {v0}, Lcom/amap/api/services/a/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private a(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .prologue
    .line 517
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 478
    :goto_0
    return-object v0

    .line 473
    :cond_0
    if-eqz p2, :cond_1

    .line 474
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->a:Lcom/amap/api/services/a/br;

    invoke-virtual {v0}, Lcom/amap/api/services/a/br;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 509
    :catch_0
    move-exception v0

    const-string v1, "DBOperation"

    const-string v2, "getWriteDatabase"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Class;)Lcom/amap/api/services/a/bn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/amap/api/services/a/bn;"
        }
    .end annotation

    .prologue
    .line 531
    const-class v0, Lcom/amap/api/services/a/bn;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 533
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    const/4 v0, 0x0

    .line 537
    :goto_0
    return-object v0

    .line 536
    :cond_0
    check-cast v0, Lcom/amap/api/services/a/bn;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 264
    iget-object v10, p0, Lcom/amap/api/services/a/bm;->c:Lcom/amap/api/services/a/bl;

    monitor-enter v10

    .line 265
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-direct {p0, p2}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/Class;)Lcom/amap/api/services/a/bn;

    move-result-object v11

    .line 268
    invoke-direct {p0, v11}, Lcom/amap/api/services/a/bm;->a(Lcom/amap/api/services/a/bn;)Ljava/lang/String;

    move-result-object v1

    .line 269
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0, p3}, Lcom/amap/api/services/a/bm;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    .line 273
    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v8

    .line 317
    :goto_0
    return-object v0

    .line 276
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 279
    if-nez v1, :cond_5

    .line 280
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 295
    if-eqz v1, :cond_3

    .line 296
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    :cond_3
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    :cond_4
    :goto_2
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v8

    goto :goto_0

    .line 284
    :cond_5
    :goto_3
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 285
    invoke-direct {p0, v1, p2, v11}, Lcom/amap/api/services/a/bm;->a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/amap/api/services/a/bn;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 288
    :catch_0
    move-exception v0

    .line 289
    :goto_4
    if-nez p3, :cond_6

    .line 290
    :try_start_7
    const-string v2, "DataBase"

    const-string v3, "searchListData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 295
    :cond_6
    if-eqz v1, :cond_7

    .line 296
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 305
    :cond_7
    :goto_5
    :try_start_9
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    .line 306
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 317
    :cond_8
    :goto_6
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v0, v8

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    move-object v1, v9

    .line 295
    :goto_7
    if-eqz v1, :cond_9

    .line 296
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 305
    :cond_9
    :goto_8
    :try_start_c
    iget-object v1, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_a

    .line 306
    iget-object v1, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 307
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 294
    :cond_a
    :goto_9
    :try_start_d
    throw v0

    .line 319
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 298
    :catch_1
    move-exception v1

    .line 299
    if-nez p3, :cond_9

    .line 300
    :try_start_e
    const-string v2, "DataBase"

    const-string v3, "searchListData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 309
    :catch_2
    move-exception v1

    .line 310
    if-nez p3, :cond_a

    .line 311
    const-string v2, "DataBase"

    const-string v3, "searchListData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 298
    :catch_3
    move-exception v0

    .line 299
    if-nez p3, :cond_7

    .line 300
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 309
    :catch_4
    move-exception v0

    .line 310
    if-nez p3, :cond_8

    .line 311
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 298
    :catch_5
    move-exception v0

    .line 299
    if-nez p3, :cond_3

    .line 300
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 309
    :catch_6
    move-exception v0

    .line 310
    if-nez p3, :cond_4

    .line 311
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    .line 295
    :cond_b
    if-eqz v1, :cond_c

    .line 296
    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 305
    :cond_c
    :goto_a
    :try_start_10
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    .line 306
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_6

    .line 309
    :catch_7
    move-exception v0

    .line 310
    if-nez p3, :cond_8

    .line 311
    :try_start_11
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 298
    :catch_8
    move-exception v0

    .line 299
    if-nez p3, :cond_c

    .line 300
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_a

    .line 294
    :catchall_2
    move-exception v0

    goto/16 :goto_7

    .line 288
    :catch_9
    move-exception v0

    move-object v1, v9

    goto/16 :goto_4
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Object;Z)V

    .line 188
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/amap/api/services/a/bm;->c:Lcom/amap/api/services/a/bl;

    monitor-enter v1

    .line 175
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Object;)V

    .line 182
    :goto_0
    monitor-exit v1

    return-void

    .line 179
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lcom/amap/api/services/a/bm;->c:Lcom/amap/api/services/a/bl;

    monitor-enter v1

    .line 194
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/services/a/bm;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 195
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 196
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    return-void

    .line 199
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/services/a/bm;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 208
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 201
    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DataBase"

    const-string v3, "insertData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 203
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    .line 204
    iget-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 205
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 203
    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lcom/amap/api/services/a/bm;->c:Lcom/amap/api/services/a/bl;

    monitor-enter v1

    .line 108
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/Class;)Lcom/amap/api/services/a/bn;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/bm;->a(Lcom/amap/api/services/a/bn;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    monitor-exit v1

    .line 129
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/amap/api/services/a/bm;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    iget-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 115
    monitor-exit v1

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 118
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 129
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DataBase"

    const-string v3, "deleteData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 122
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 122
    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 171
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/amap/api/services/a/bm;->c:Lcom/amap/api/services/a/bl;

    monitor-enter v1

    .line 134
    if-nez p2, :cond_0

    .line 135
    :try_start_0
    monitor-exit v1

    .line 166
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/Class;)Lcom/amap/api/services/a/bn;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/bm;->a(Lcom/amap/api/services/a/bn;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    monitor-exit v1

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 142
    :cond_1
    :try_start_1
    invoke-direct {p0, p2, v0}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Object;Lcom/amap/api/services/a/bn;)Landroid/content/ContentValues;

    move-result-object v0

    .line 143
    if-nez v0, :cond_2

    .line 144
    monitor-exit v1

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0, p3}, Lcom/amap/api/services/a/bm;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 147
    iget-object v3, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_3

    .line 148
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 166
    :cond_4
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    if-nez p3, :cond_5

    .line 154
    :try_start_4
    const-string v2, "DataBase"

    const-string v3, "updateData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 156
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 159
    :catchall_1
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_6

    .line 160
    iget-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/services/a/bm;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 159
    :cond_6
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
