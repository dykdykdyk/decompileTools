.class public Lcom/crashlytics/android/a/a;
.super Lio/fabric/sdk/android/o;
.source "Answers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/o",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/crashlytics/android/a/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lio/fabric/sdk/android/o;-><init>()V

    return-void
.end method

.method private e()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 9055
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/e/r;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/v;

    move-result-object v0

    .line 373
    if-nez v0, :cond_0

    .line 374
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Failed to retrieve settings"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 378
    :cond_0
    iget-object v1, v0, Lio/fabric/sdk/android/services/e/v;->d:Lio/fabric/sdk/android/services/e/m;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/e/m;->d:Z

    if-eqz v1, :cond_1

    .line 379
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Analytics collection enabled"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/crashlytics/android/a/a;->a:Lcom/crashlytics/android/a/z;

    iget-object v0, v0, Lio/fabric/sdk/android/services/e/v;->e:Lio/fabric/sdk/android/services/e/b;

    .line 10116
    iget-object v2, p0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 9407
    const-string v3, "com.crashlytics.ApiEndpoint"

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/b/l;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10139
    iget-object v3, v1, Lcom/crashlytics/android/a/z;->d:Lcom/crashlytics/android/a/m;

    iget-boolean v4, v0, Lio/fabric/sdk/android/services/e/b;->h:Z

    .line 11035
    iput-boolean v4, v3, Lcom/crashlytics/android/a/m;->c:Z

    .line 10140
    iget-object v1, v1, Lcom/crashlytics/android/a/z;->b:Lcom/crashlytics/android/a/b;

    .line 11066
    new-instance v3, Lcom/crashlytics/android/a/c;

    invoke-direct {v3, v1, v0, v2}, Lcom/crashlytics/android/a/c;-><init>(Lcom/crashlytics/android/a/b;Lio/fabric/sdk/android/services/e/b;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/crashlytics/android/a/b;->a(Ljava/lang/Runnable;)V

    .line 382
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Analytics collection disabled"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/crashlytics/android/a/a;->a:Lcom/crashlytics/android/a/z;

    .line 11085
    iget-object v0, v1, Lcom/crashlytics/android/a/z;->c:Lio/fabric/sdk/android/a;

    .line 12076
    iget-object v2, v0, Lio/fabric/sdk/android/a;->a:Lio/fabric/sdk/android/b;

    if-eqz v2, :cond_2

    .line 12077
    iget-object v2, v0, Lio/fabric/sdk/android/a;->a:Lio/fabric/sdk/android/b;

    .line 12092
    iget-object v0, v2, Lio/fabric/sdk/android/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 12093
    iget-object v4, v2, Lio/fabric/sdk/android/b;->b:Landroid/app/Application;

    invoke-virtual {v4, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 11086
    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/crashlytics/android/a/z;->b:Lcom/crashlytics/android/a/b;

    .line 13083
    new-instance v1, Lcom/crashlytics/android/a/d;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/a/d;-><init>(Lcom/crashlytics/android/a/b;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/a/b;->a(Ljava/lang/Runnable;)V

    .line 386
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const-string v0, "1.3.9.142"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    const-string v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method protected final b_()Z
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 341
    .line 1116
    :try_start_0
    iget-object v2, p0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 342
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 343
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 344
    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 345
    iget v0, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 346
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "0.0"

    move-object v3, v0

    .line 351
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v0, v7, :cond_2

    .line 352
    iget-wide v0, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide v10, v0

    .line 2109
    :goto_1
    iget-object v0, p0, Lio/fabric/sdk/android/o;->t:Lio/fabric/sdk/android/services/b/x;

    .line 3038
    new-instance v4, Lcom/crashlytics/android/a/ag;

    invoke-direct {v4, v2, v0, v6, v3}, Lcom/crashlytics/android/a/ag;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/b/x;Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    new-instance v3, Lcom/crashlytics/android/a/i;

    new-instance v0, Lio/fabric/sdk/android/services/d/b;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/o;)V

    invoke-direct {v3, v2, v0}, Lcom/crashlytics/android/a/i;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;)V

    .line 3042
    new-instance v5, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    invoke-direct {v5, v0}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/r;)V

    .line 3044
    new-instance v7, Lio/fabric/sdk/android/a;

    invoke-direct {v7, v2}, Lio/fabric/sdk/android/a;-><init>(Landroid/content/Context;)V

    .line 3045
    const-string v0, "Answers Events Handler"

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/t;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 3047
    new-instance v12, Lcom/crashlytics/android/a/m;

    invoke-direct {v12, v6}, Lcom/crashlytics/android/a/m;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 3048
    new-instance v0, Lcom/crashlytics/android/a/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/a/b;-><init>(Lio/fabric/sdk/android/o;Landroid/content/Context;Lcom/crashlytics/android/a/i;Lcom/crashlytics/android/a/ag;Lio/fabric/sdk/android/services/network/l;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 4033
    new-instance v1, Lio/fabric/sdk/android/services/d/d;

    const-string v3, "settings"

    invoke-direct {v1, v2, v3}, Lio/fabric/sdk/android/services/d/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4034
    new-instance v5, Lcom/crashlytics/android/a/k;

    invoke-direct {v5, v1}, Lcom/crashlytics/android/a/k;-><init>(Lio/fabric/sdk/android/services/d/c;)V

    .line 3051
    new-instance v1, Lcom/crashlytics/android/a/z;

    move-object v2, v0

    move-object v3, v7

    move-object v4, v12

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/a/z;-><init>(Lcom/crashlytics/android/a/b;Lio/fabric/sdk/android/a;Lcom/crashlytics/android/a/m;Lcom/crashlytics/android/a/k;J)V

    .line 358
    iput-object v1, p0, Lcom/crashlytics/android/a/a;->a:Lcom/crashlytics/android/a/z;

    .line 360
    iget-object v1, p0, Lcom/crashlytics/android/a/a;->a:Lcom/crashlytics/android/a/z;

    .line 4071
    iget-object v0, v1, Lcom/crashlytics/android/a/z;->b:Lcom/crashlytics/android/a/b;

    .line 4115
    new-instance v2, Lcom/crashlytics/android/a/f;

    invoke-direct {v2, v0}, Lcom/crashlytics/android/a/f;-><init>(Lcom/crashlytics/android/a/b;)V

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/a/b;->a(Ljava/lang/Runnable;)V

    .line 4072
    iget-object v0, v1, Lcom/crashlytics/android/a/z;->c:Lio/fabric/sdk/android/a;

    new-instance v2, Lcom/crashlytics/android/a/j;

    iget-object v3, v1, Lcom/crashlytics/android/a/z;->d:Lcom/crashlytics/android/a/m;

    invoke-direct {v2, v1, v3}, Lcom/crashlytics/android/a/j;-><init>(Lcom/crashlytics/android/a/z;Lcom/crashlytics/android/a/m;)V

    invoke-virtual {v0, v2}, Lio/fabric/sdk/android/a;->a(Lio/fabric/sdk/android/d;)Z

    .line 4073
    iget-object v0, v1, Lcom/crashlytics/android/a/z;->d:Lcom/crashlytics/android/a/m;

    .line 5049
    iget-object v0, v0, Lcom/crashlytics/android/a/m;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4075
    iget-wide v2, v1, Lcom/crashlytics/android/a/z;->a:J

    .line 5153
    iget-object v0, v1, Lcom/crashlytics/android/a/z;->e:Lcom/crashlytics/android/a/k;

    .line 6048
    iget-object v0, v0, Lcom/crashlytics/android/a/k;->a:Lio/fabric/sdk/android/services/d/c;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/d/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "analytics_launched"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5153
    if-nez v0, :cond_4

    .line 6163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 6164
    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    move v0, v8

    .line 5153
    :goto_2
    if-eqz v0, :cond_4

    move v0, v8

    .line 4075
    :goto_3
    if-eqz v0, :cond_0

    .line 7122
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v2, "Answers"

    const-string v3, "Logged install"

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7123
    iget-object v0, v1, Lcom/crashlytics/android/a/z;->b:Lcom/crashlytics/android/a/b;

    .line 8043
    new-instance v2, Lcom/crashlytics/android/a/ac;

    sget-object v3, Lcom/crashlytics/android/a/ad;->f:Lcom/crashlytics/android/a/ad;

    invoke-direct {v2, v3}, Lcom/crashlytics/android/a/ac;-><init>(Lcom/crashlytics/android/a/ad;)V

    .line 8051
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/crashlytics/android/a/b;->a(Lcom/crashlytics/android/a/ac;ZZ)V

    .line 4077
    iget-object v0, v1, Lcom/crashlytics/android/a/z;->e:Lcom/crashlytics/android/a/k;

    .line 9043
    iget-object v1, v0, Lcom/crashlytics/android/a/k;->a:Lio/fabric/sdk/android/services/d/c;

    iget-object v0, v0, Lcom/crashlytics/android/a/k;->a:Lio/fabric/sdk/android/services/d/c;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/d/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/d/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    :cond_0
    move v0, v8

    .line 366
    :goto_4
    return v0

    .line 346
    :cond_1
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v3, v0

    goto/16 :goto_0

    .line 354
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v10, v0

    goto/16 :goto_1

    :cond_3
    move v0, v9

    .line 6164
    goto :goto_2

    :cond_4
    move v0, v9

    .line 5153
    goto :goto_3

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Error retrieving app properties"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v9

    .line 366
    goto :goto_4
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/crashlytics/android/a/a;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
