.class final Lu/aly/eu;
.super Landroid/os/Handler;
.source "UMCCAggregatedManager.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lu/aly/ej;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu/aly/ej;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lu/aly/eu;->a:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lu/aly/eu;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 5466
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const/16 v0, 0x30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1073
    const/16 v1, 0x3e9

    invoke-static {v2, v3, v1}, Lu/aly/fb;->a(JI)J

    move-result-wide v2

    .line 86
    invoke-virtual {p0, v0, v2, v3}, Lu/aly/eu;->sendEmptyMessageDelayed(IJ)Z

    .line 2130
    invoke-static {}, Lu/aly/ev;->a()Lu/aly/ej;

    move-result-object v0

    .line 3038
    invoke-virtual {v0}, Lu/aly/ej;->b()V

    goto :goto_0

    .line 90
    :pswitch_1
    const/16 v0, 0x31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3083
    const/16 v1, 0x3ea

    invoke-static {v2, v3, v1}, Lu/aly/fb;->a(JI)J

    move-result-wide v2

    .line 90
    invoke-virtual {p0, v0, v2, v3}, Lu/aly/eu;->sendEmptyMessageDelayed(IJ)Z

    .line 4130
    invoke-static {}, Lu/aly/ev;->a()Lu/aly/ej;

    move-result-object v0

    .line 5440
    :try_start_0
    iget-object v1, v0, Lu/aly/ej;->a:Lu/aly/eg;

    .line 6033
    iget-object v1, v1, Lu/aly/eg;->a:Ljava/util/Map;

    .line 5440
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5441
    new-instance v1, Lu/aly/eo;

    invoke-direct {v1, v0}, Lu/aly/eo;-><init>(Lu/aly/ej;)V

    iget-object v2, v0, Lu/aly/ej;->a:Lu/aly/eg;

    .line 7033
    iget-object v2, v2, Lu/aly/eg;->a:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 7224
    :try_start_1
    sget-object v3, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v3}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v3

    invoke-virtual {v3}, Lu/aly/as;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 7225
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lu/aly/a;->a(Lu/aly/ef;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7230
    :try_start_2
    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    .line 5450
    :cond_1
    :goto_1
    iget-object v1, v0, Lu/aly/ej;->b:Lu/aly/fa;

    .line 8050
    iget-object v1, v1, Lu/aly/fa;->a:Ljava/util/Map;

    .line 5450
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 5451
    new-instance v1, Lu/aly/ep;

    invoke-direct {v1, v0}, Lu/aly/ep;-><init>(Lu/aly/ej;)V

    iget-object v2, v0, Lu/aly/ej;->b:Lu/aly/fa;

    .line 9050
    iget-object v2, v2, Lu/aly/fa;->a:Ljava/util/Map;

    .line 5451
    invoke-static {v1, v2}, Lu/aly/ey;->a(Lu/aly/ef;Ljava/util/Map;)V

    .line 5461
    :cond_2
    iget-object v1, v0, Lu/aly/ej;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5462
    new-instance v1, Lu/aly/ef;

    invoke-direct {v1}, Lu/aly/ef;-><init>()V

    iget-object v0, v0, Lu/aly/ej;->g:Ljava/util/List;

    invoke-static {v1, v0}, Lu/aly/ey;->a(Lu/aly/ef;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5464
    :catch_0
    move-exception v0

    .line 5465
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "converyMemoryToDataTable happen error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7228
    :catch_1
    move-exception v1

    :try_start_3
    const-string v1, "cacheToData error"

    invoke-static {v1}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7230
    :try_start_4
    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
