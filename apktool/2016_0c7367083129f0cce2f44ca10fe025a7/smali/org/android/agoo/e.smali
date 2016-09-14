.class public final Lorg/android/agoo/e;
.super Ljava/lang/Object;
.source "AgooSettings.java"


# direct methods
.method private static final a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "none"

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 102
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 271
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 273
    const-string v1, "backoff_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    const-string v1, "Settings"

    const-string v2, "setBackOffCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Z)Z
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 401
    .line 403
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 404
    const-string v0, "app_disable"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 406
    if-nez p1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    :try_start_1
    const-string v3, "app_disable_version"

    const/high16 v4, -0x80000000

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 411
    invoke-static {p0}, Lorg/android/a;->j(Landroid/content/Context;)I

    move-result v3

    .line 412
    if-eq v2, v5, :cond_0

    if-eq v2, v3, :cond_0

    .line 413
    invoke-static {p0}, Lorg/android/agoo/e;->m(Landroid/content/Context;)V

    .line 2132
    invoke-static {p0}, Lorg/android/a;->f(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 415
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    :try_start_0
    const-string v1, "AppStore"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    const-string v0, ""

    .line 142
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    const-string v2, "app_key_temp"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    const-string v0, ""

    .line 157
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 158
    const-string v2, "app_tt_id_temp"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 170
    const-string v0, ""

    .line 172
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 173
    const-string v2, "app_sercet_temp"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final f(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 186
    .line 1191
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 197
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    const-string v2, "app_device_token_temp"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final h(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 220
    const-string v0, "local"

    .line 222
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 223
    const-string v2, "app_election_source"

    const-string v3, "local"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final i(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 231
    .line 233
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 234
    const-string v3, "app_sudo_pack_timeout"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 238
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final j(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 253
    .line 255
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 256
    const-string v2, "backoff_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 262
    :goto_0
    return v0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    const-string v2, "Settings"

    const-string v3, "getBackoffCount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final k(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 296
    .line 298
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 299
    const-string v2, "app_retry_register"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 305
    :goto_0
    return v0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    const-string v2, "Settings"

    const-string v3, "getRetryRegisterCount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final l(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 333
    const-string v0, ""

    .line 335
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 336
    const-string v2, "app_last_register_time "

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 337
    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 338
    invoke-static {v2, v3}, Lorg/android/agoo/e;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 341
    invoke-static {v4, v5}, Lorg/android/agoo/e;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 342
    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final m(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 384
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 386
    const-string v1, "app_disable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 387
    invoke-static {p0}, Lorg/android/a;->j(Landroid/content/Context;)I

    move-result v1

    .line 388
    const-string v2, "app_disable_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final n(Landroid/content/Context;)J
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    const/4 v6, -0x1

    .line 474
    .line 476
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 477
    const-string v3, "agoo_start_time"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 478
    const-string v4, "agoo_end_time"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 479
    if-eq v3, v6, :cond_0

    if-eq v2, v6, :cond_0

    .line 480
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 482
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 483
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 484
    const/16 v7, 0xd

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 485
    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    .line 486
    if-ge v5, v3, :cond_1

    .line 487
    const/16 v2, 0xd

    sub-int/2addr v3, v5

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 493
    :goto_0
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 499
    :cond_0
    :goto_1
    return-wide v0

    .line 488
    :cond_1
    if-le v5, v2, :cond_0

    .line 489
    const/16 v2, 0xd

    sub-int/2addr v3, v5

    const v5, 0x15180

    add-int/2addr v3, v5

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static final o(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 504
    .line 3141
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2411
    const-string v1, "agoo_security_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 504
    return v0
.end method

.method public static final p(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 508
    .line 510
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 511
    const-string v2, "agoo_mode"

    sget-object v3, Lorg/android/agoo/f;->d:Lorg/android/agoo/f;

    .line 3715
    iget v3, v3, Lorg/android/agoo/f;->f:I

    .line 511
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 513
    sget-object v2, Lorg/android/agoo/f;->d:Lorg/android/agoo/f;

    .line 4715
    iget v2, v2, Lorg/android/agoo/f;->f:I

    .line 513
    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/android/agoo/f;->e:Lorg/android/agoo/f;

    .line 5715
    iget v2, v2, Lorg/android/agoo/f;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 518
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final q(Landroid/content/Context;)Lorg/android/agoo/f;
    .locals 3

    .prologue
    .line 558
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 559
    const-string v1, "agoo_mode"

    sget-object v2, Lorg/android/agoo/f;->e:Lorg/android/agoo/f;

    .line 6715
    iget v2, v2, Lorg/android/agoo/f;->f:I

    .line 559
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 561
    packed-switch v0, :pswitch_data_0

    .line 571
    :pswitch_0
    sget-object v0, Lorg/android/agoo/f;->e:Lorg/android/agoo/f;

    .line 576
    :goto_0
    return-object v0

    .line 563
    :pswitch_1
    sget-object v0, Lorg/android/agoo/f;->a:Lorg/android/agoo/f;

    goto :goto_0

    .line 565
    :pswitch_2
    sget-object v0, Lorg/android/agoo/f;->b:Lorg/android/agoo/f;

    goto :goto_0

    .line 567
    :pswitch_3
    sget-object v0, Lorg/android/agoo/f;->c:Lorg/android/agoo/f;

    goto :goto_0

    .line 569
    :pswitch_4
    sget-object v0, Lorg/android/agoo/f;->d:Lorg/android/agoo/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    sget-object v0, Lorg/android/agoo/f;->e:Lorg/android/agoo/f;

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
