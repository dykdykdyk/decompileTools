.class public final Lorg/android/agoo/d/b/j;
.super Ljava/lang/Object;
.source "DNSManager.java"


# instance fields
.field public volatile a:Ljava/lang/String;

.field public volatile b:Ljava/lang/String;

.field public volatile c:Ljava/lang/String;

.field public volatile d:Ljava/lang/String;

.field public volatile e:Ljava/lang/String;

.field public volatile f:Ljava/lang/String;

.field public volatile g:Ljava/lang/String;

.field public volatile h:I

.field public volatile i:J

.field volatile j:Lorg/android/agoo/d/b/l;

.field volatile k:Lorg/android/agoo/d/b/i;

.field volatile l:Lorg/android/agoo/d/b/i;

.field volatile m:Z

.field volatile n:Lorg/android/agoo/d/b/m;

.field private volatile o:Landroid/content/Context;

.field private volatile p:I

.field private volatile q:D

.field private volatile r:D

.field private volatile s:Lorg/android/agoo/d/a/f;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/agoo/d/b/j;->h:I

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/android/agoo/d/b/j;->i:J

    .line 48
    iput-object v2, p0, Lorg/android/agoo/d/b/j;->j:Lorg/android/agoo/d/b/l;

    .line 49
    sget-object v0, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lorg/android/agoo/d/b/j;->k:Lorg/android/agoo/d/b/i;

    .line 50
    sget-object v0, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lorg/android/agoo/d/b/j;->l:Lorg/android/agoo/d/b/i;

    .line 51
    iput-object v2, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    .line 53
    iput v3, p0, Lorg/android/agoo/d/b/j;->p:I

    .line 54
    iput-boolean v3, p0, Lorg/android/agoo/d/b/j;->m:Z

    .line 55
    iput-object v2, p0, Lorg/android/agoo/d/b/j;->n:Lorg/android/agoo/d/b/m;

    .line 57
    iput-wide v4, p0, Lorg/android/agoo/d/b/j;->q:D

    .line 58
    iput-wide v4, p0, Lorg/android/agoo/d/b/j;->r:D

    .line 200
    iput-object v2, p0, Lorg/android/agoo/d/b/j;->s:Lorg/android/agoo/d/a/f;

    .line 69
    iput-object p1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    .line 70
    new-instance v0, Lorg/android/agoo/d/a/f;

    invoke-direct {v0}, Lorg/android/agoo/d/a/f;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/d/b/j;->s:Lorg/android/agoo/d/a/f;

    .line 71
    new-instance v0, Lorg/android/agoo/d/b/m;

    invoke-direct {v0, p0}, Lorg/android/agoo/d/b/m;-><init>(Lorg/android/agoo/d/b/j;)V

    iput-object v0, p0, Lorg/android/agoo/d/b/j;->n:Lorg/android/agoo/d/b/m;

    .line 72
    sget-object v0, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lorg/android/agoo/d/b/j;->k:Lorg/android/agoo/d/b/i;

    .line 73
    sget-object v0, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lorg/android/agoo/d/b/j;->l:Lorg/android/agoo/d/b/i;

    .line 75
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 398
    .line 400
    :try_start_0
    const-string v0, "AGOO_CONNECT"

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 402
    const-string v2, "AGOO_CONNECT_HOST"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    const-string v3, "AGOO_CONNECT_PORT"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 404
    new-instance v0, Lcom/umeng/message/proguard/h;

    invoke-direct {v0, p1}, Lcom/umeng/message/proguard/h;-><init>(Landroid/content/Context;)V

    .line 1193
    iget-object v4, v0, Lcom/umeng/message/proguard/h;->e:Ljava/lang/String;

    .line 406
    const-string v0, "AppStore"

    const/4 v5, 0x4

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 408
    const-string v5, "agoo_release_time"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 409
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :try_start_1
    const-string v1, "ip"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v1, "port"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v1, "netType"

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v1, "appKey"

    iget-object v2, p0, Lorg/android/agoo/d/b/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v1, "deviceId"

    iget-object v2, p0, Lorg/android/agoo/d/b/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v1, "agooReleasetime"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 419
    :goto_0
    return-object v0

    .line 416
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 417
    :goto_1
    const-string v2, "getConnectHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 458
    :try_start_0
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 461
    const-string v1, "agoo_dns_errorid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 462
    const-string v1, "agoo_dns_path"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final a(Lorg/android/agoo/d/b/i;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 509
    iget-boolean v0, p0, Lorg/android/agoo/d/b/j;->m:Z

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 513
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    sget-object v0, Lorg/android/agoo/d/b/b;->y:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse apoll host["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    iput-boolean v4, p0, Lorg/android/agoo/d/b/j;->m:Z

    goto :goto_0

    .line 518
    :cond_1
    :try_start_1
    const-string v0, ":"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 519
    const/4 v1, 0x0

    .line 520
    const/4 v0, -0x1

    .line 521
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 522
    const/4 v0, 0x0

    aget-object v1, v2, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    const/16 v0, 0x50

    .line 525
    const/4 v3, 0x1

    :try_start_2
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 529
    :cond_2
    :goto_1
    :try_start_3
    iget-object v2, p0, Lorg/android/agoo/d/b/j;->j:Lorg/android/agoo/d/b/l;

    if-eqz v2, :cond_3

    .line 530
    iget-object v2, p0, Lorg/android/agoo/d/b/j;->j:Lorg/android/agoo/d/b/l;

    invoke-interface {v2, p1, v1, v0}, Lorg/android/agoo/d/b/l;->a(Lorg/android/agoo/d/b/i;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 536
    :cond_3
    iput-boolean v4, p0, Lorg/android/agoo/d/b/j;->m:Z

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lorg/android/agoo/d/b/b;->y:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse apoll host["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 536
    iput-boolean v4, p0, Lorg/android/agoo/d/b/j;->m:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lorg/android/agoo/d/b/j;->m:Z

    throw v0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method static synthetic a(Lorg/android/agoo/d/b/j;)V
    .locals 9

    .prologue
    const/16 v8, 0x190

    .line 3206
    :try_start_0
    new-instance v3, Lorg/android/agoo/d/a/e;

    invoke-direct {v3}, Lorg/android/agoo/d/a/e;-><init>()V

    .line 3207
    const-string v0, "deviceId"

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    const-string v0, "app_version_code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/android/agoo/d/b/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    const-string v0, "agoo_version_code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/android/agoo/d/b/j;->i:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3211
    const-string v0, "appkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/android/agoo/d/b/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    :cond_0
    iget v0, p0, Lorg/android/agoo/d/b/j;->h:I

    .line 3214
    sget-object v1, Lorg/android/agoo/d/b/k;->a:[I

    iget-object v2, p0, Lorg/android/agoo/d/b/j;->k:Lorg/android/agoo/d/b/i;

    invoke-virtual {v2}, Lorg/android/agoo/d/b/i;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3219
    const-string v0, "%s/%s/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/android/agoo/d/b/j;->c:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string v4, "spdyip"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3220
    const/16 v0, 0x50

    move-object v2, v1

    move v1, v0

    .line 3223
    :goto_0
    const-string v0, "DNSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "apollUrl"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    new-instance v0, Lcom/umeng/message/proguard/h;

    iget-object v4, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/umeng/message/proguard/h;-><init>(Landroid/content/Context;)V

    .line 4193
    iget-object v4, v0, Lcom/umeng/message/proguard/h;->e:Ljava/lang/String;

    .line 3226
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3227
    const-string v5, "nt"

    invoke-virtual {v3, v5, v4}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    :cond_1
    iget-object v0, v0, Lcom/umeng/message/proguard/h;->c:Ljava/lang/String;

    .line 3230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3231
    const-string v4, "apn"

    invoke-virtual {v3, v4, v0}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5483
    :cond_2
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 5486
    const-string v4, "46000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "46002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5487
    :cond_3
    const-string v0, "china_mobile"

    .line 3234
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3235
    const-string v4, "agoo_operators"

    invoke-virtual {v3, v4, v0}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    :cond_4
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3238
    const-string v0, "ttid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/android/agoo/d/b/j;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    :cond_5
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3241
    const-string v0, "imei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/android/agoo/d/b/j;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    :cond_6
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3244
    const-string v0, "imsi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/android/agoo/d/b/j;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    :cond_7
    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v4, p0, Lorg/android/agoo/d/b/j;->r:D

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v4, Ljava/math/BigDecimal;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 3247
    const-string v0, "lac"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lorg/android/agoo/d/b/j;->r:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3249
    :cond_8
    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v4, p0, Lorg/android/agoo/d/b/j;->q:D

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v4, Ljava/math/BigDecimal;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 3250
    const-string v0, "lat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lorg/android/agoo/d/b/j;->q:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    :cond_9
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lorg/android/agoo/d/b/j;->h:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_d

    .line 3253
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lorg/android/agoo/d/b/j;->d:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 3254
    iget-object v1, p0, Lorg/android/agoo/d/b/j;->s:Lorg/android/agoo/d/a/f;

    iget-object v4, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-virtual {v1, v4, v0, v2, v3}, Lorg/android/agoo/d/a/f;->a(Landroid/content/Context;Lorg/apache/http/HttpHost;Ljava/lang/String;Lorg/android/agoo/d/a/e;)Lorg/android/agoo/d/a/g;

    move-result-object v0

    move-object v1, v0

    .line 3259
    :goto_2
    if-nez v1, :cond_e

    .line 3261
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 3262
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3263
    const-string v1, "faileReasons"

    const-string v2, "result == null"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3266
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    sget-object v1, Lorg/android/agoo/d/b/b;->o:Lorg/android/agoo/d/b/b;

    invoke-virtual {v1}, Lorg/android/agoo/d/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/d/b/j;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3267
    sget-object v0, Lorg/android/agoo/d/b/b;->o:Lorg/android/agoo/d/b/b;

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    .line 3393
    :goto_3
    return-void

    .line 3216
    :pswitch_0
    const-string v1, "%s/%s/"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/android/agoo/d/b/j;->c:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "activeip"

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    .line 3217
    goto/16 :goto_0

    .line 5488
    :cond_a
    const-string v4, "46001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5489
    const-string v0, "china_unicom"

    goto/16 :goto_1

    .line 5490
    :cond_b
    const-string v4, "46003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5491
    const-string v0, "china_telecom"

    goto/16 :goto_1

    .line 5494
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3256
    :cond_d
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->s:Lorg/android/agoo/d/a/f;

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lorg/android/agoo/d/a/f;->a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/d/a/e;)Lorg/android/agoo/d/a/g;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 3270
    :cond_e
    iget-object v0, v1, Lorg/android/agoo/d/a/g;->b:Ljava/util/Map;

    .line 3271
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3273
    :cond_f
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 3274
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3275
    const-string v1, "faileReasons"

    const-string v3, "headers==null"

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3278
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    const-string v1, "headers==null"

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    sget-object v0, Lorg/android/agoo/d/b/b;->o:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3389
    :catch_0
    move-exception v0

    .line 3390
    const-string v1, "DNSManager"

    const-string v2, "host Throwable"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3391
    sget-object v0, Lorg/android/agoo/d/b/b;->x:Lorg/android/agoo/d/b/b;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    goto/16 :goto_3

    .line 3283
    :cond_10
    :try_start_1
    const-string v3, "server"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3285
    const-string v0, "DNSManager"

    const-string v1, "register--->[serverName==null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 3288
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3289
    const-string v1, "faileReasons"

    const-string v3, "[serverName==null]"

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3292
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    const-string v1, "serverName==null"

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    sget-object v0, Lorg/android/agoo/d/b/b;->o:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    goto/16 :goto_3

    .line 3297
    :cond_11
    invoke-static {v0}, Lcom/umeng/message/proguard/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3298
    const-string v0, "DNSManager"

    const-string v1, "register--->[serverName!=wjas]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3300
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 3301
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3302
    const-string v1, "faileReasons"

    const-string v3, "[serverName!=wjas]"

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3305
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    const-string v1, "serverName!=wjas"

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    sget-object v0, Lorg/android/agoo/d/b/b;->o:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    goto/16 :goto_3

    .line 3310
    :cond_12
    const/16 v0, 0x12c

    iget v3, v1, Lorg/android/agoo/d/a/g;->a:I

    if-gt v0, v3, :cond_13

    iget v0, v1, Lorg/android/agoo/d/a/g;->a:I

    if-le v8, v0, :cond_13

    .line 3312
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v3, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 3313
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3314
    const-string v3, "faileReasons"

    iget v1, v1, Lorg/android/agoo/d/a/g;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3317
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    const-string v1, "300<=statusCode<400"

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3318
    sget-object v0, Lorg/android/agoo/d/b/b;->o:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    goto/16 :goto_3

    .line 3323
    :cond_13
    iget v0, v1, Lorg/android/agoo/d/a/g;->a:I

    if-gt v8, v0, :cond_14

    const/16 v0, 0x1f4

    iget v3, v1, Lorg/android/agoo/d/a/g;->a:I

    if-le v0, v3, :cond_14

    .line 3325
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v3, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 3326
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3327
    const-string v3, "faileReasons"

    iget v1, v1, Lorg/android/agoo/d/a/g;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3330
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    const-string v1, "400<=statusCode<500"

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    sget-object v0, Lorg/android/agoo/d/b/b;->z:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    goto/16 :goto_3

    .line 3335
    :cond_14
    const/16 v0, 0xc8

    iget v3, v1, Lorg/android/agoo/d/a/g;->a:I

    if-eq v0, v3, :cond_15

    .line 3337
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v3, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 3338
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3339
    const-string v3, "faileReasons"

    iget v4, v1, Lorg/android/agoo/d/a/g;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3342
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    iget v1, v1, Lorg/android/agoo/d/a/g;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    sget-object v0, Lorg/android/agoo/d/b/b;->z:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    goto/16 :goto_3

    .line 3347
    :cond_15
    iget-object v0, v1, Lorg/android/agoo/d/a/g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3349
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 3350
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3351
    const-string v1, "faileReasons"

    const-string v3, "responseBody is null"

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3354
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    const-string v1, "responseBody is null"

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    sget-object v0, Lorg/android/agoo/d/b/b;->o:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    goto/16 :goto_3

    .line 3359
    :cond_16
    iget-object v0, v1, Lorg/android/agoo/d/a/g;->c:Ljava/lang/String;

    invoke-static {v0}, Lorg/android/agoo/d/b/j;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3360
    if-eqz v3, :cond_17

    array-length v0, v3

    if-gtz v0, :cond_18

    .line 3362
    :cond_17
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    const-string v1, "ips==null"

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3364
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 3365
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3366
    const-string v1, "faileReasons"

    const-string v3, "ips==null"

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    sget-object v0, Lorg/android/agoo/d/b/b;->o:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    goto/16 :goto_3

    .line 3372
    :cond_18
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->k:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lorg/android/agoo/d/b/j;->l:Lorg/android/agoo/d/b/i;

    .line 3373
    iget-object v0, v1, Lorg/android/agoo/d/a/g;->b:Ljava/util/Map;

    if-eqz v0, :cond_19

    iget-object v0, v1, Lorg/android/agoo/d/a/g;->b:Ljava/util/Map;

    const-string v1, "spdy"

    .line 3374
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3376
    sget-object v0, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lorg/android/agoo/d/b/j;->l:Lorg/android/agoo/d/b/i;

    .line 3378
    :cond_19
    const-string v0, "DNSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " initChannel["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/android/agoo/d/b/j;->k:Lorg/android/agoo/d/b/i;

    .line 6014
    iget-object v2, v2, Lorg/android/agoo/d/b/i;->d:Ljava/lang/String;

    .line 3378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--> resultChannel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/d/b/j;->l:Lorg/android/agoo/d/b/i;

    .line 7014
    iget-object v2, v2, Lorg/android/agoo/d/b/i;->d:Ljava/lang/String;

    .line 3379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3378
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 3383
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/j;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    .line 3386
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->l:Lorg/android/agoo/d/b/i;

    invoke-direct {p0, v3, v0}, Lorg/android/agoo/d/b/j;->a([Ljava/lang/String;Lorg/android/agoo/d/b/i;)V

    .line 3388
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->l:Lorg/android/agoo/d/b/i;

    const/4 v1, 0x0

    aget-object v1, v3, v1

    iget-object v2, p0, Lorg/android/agoo/d/b/j;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/i;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 3214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a([Ljava/lang/String;Lorg/android/agoo/d/b/i;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 426
    .line 427
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    const-string v2, "AGOO_HOST"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 429
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 430
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 431
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 432
    aget-object v4, p1, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AGOO_HOST_VALUE_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    add-int/lit8 v0, v0, 0x1

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_1
    const-string v1, "AGOO_HOST_TYPE"

    .line 2018
    iget v3, p2, Lorg/android/agoo/d/b/i;->c:I

    .line 437
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 438
    const-string v1, "AGOO_HOST_SIZE"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/agoo/d/b/j;->p:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .prologue
    .line 447
    const-string v0, "\\|"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 448
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2469
    const-string v4, "(2[0-4]\\d)|(25[0-5])"

    .line 2470
    const-string v5, "1\\d{2}"

    .line 2471
    const-string v6, "[1-9]\\d"

    .line 2472
    const-string v7, "\\d"

    .line 2473
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")|("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")|("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")|("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2475
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ").("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ").("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ").("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):\\d*$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2477
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 2478
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2479
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 449
    if-nez v3, :cond_1

    .line 450
    const/4 v0, 0x0

    .line 453
    :cond_0
    return-object v0

    .line 448
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 499
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    .line 500
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 501
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/android/agoo/d/b/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    iget-boolean v0, p0, Lorg/android/agoo/d/b/j;->m:Z

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 545
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->j:Lorg/android/agoo/d/b/l;

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lorg/android/agoo/d/b/j;->j:Lorg/android/agoo/d/b/l;

    invoke-interface {v0, p1}, Lorg/android/agoo/d/b/l;->a(Lorg/android/agoo/d/b/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :cond_1
    iput-boolean v1, p0, Lorg/android/agoo/d/b/j;->m:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lorg/android/agoo/d/b/j;->m:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/android/agoo/d/b/j;->m:Z

    throw v0
.end method

.method final a()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 173
    .line 175
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/d/b/j;->o:Landroid/content/Context;

    const-string v2, "AGOO_HOST"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 177
    const-string v2, "AGOO_HOST_SIZE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 178
    if-lez v2, :cond_0

    iget v3, p0, Lorg/android/agoo/d/b/j;->p:I

    if-ge v3, v2, :cond_0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AGOO_HOST_VALUE_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/android/agoo/d/b/j;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v3, "AGOO_HOST_TYPE"

    sget-object v4, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    .line 1018
    iget v4, v4, Lorg/android/agoo/d/b/i;->c:I

    .line 181
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lorg/android/agoo/d/b/i;->a(I)Lorg/android/agoo/d/b/i;

    move-result-object v3

    .line 183
    const-string v4, "DNSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "refreshLocalHost,mHostIndex="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lorg/android/agoo/d/b/j;->p:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AGOO_HOST_VALUE_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/android/agoo/d/b/j;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    iget-object v1, p0, Lorg/android/agoo/d/b/j;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/i;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    .line 190
    iget v1, p0, Lorg/android/agoo/d/b/j;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/android/agoo/d/b/j;->p:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 195
    :catch_0
    move-exception v1

    sget-object v1, Lorg/android/agoo/d/b/b;->s:Lorg/android/agoo/d/b/b;

    invoke-virtual {p0, v1}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    goto :goto_0
.end method
