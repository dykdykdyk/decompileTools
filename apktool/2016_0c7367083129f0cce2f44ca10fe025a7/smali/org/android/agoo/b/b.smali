.class public abstract Lorg/android/agoo/b/b;
.super Landroid/app/IntentService;
.source "BaseIntentService.java"

# interfaces
.implements Lorg/android/agoo/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "AgooIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static final a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    :try_start_0
    const-string v0, "BaseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runIntent to receive one message"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    :try_start_1
    const-string v1, "BaseIntentService"

    const-string v2, "runIntentInService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 93
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    invoke-static {p0, v0, v1}, Lorg/android/a;->a(Landroid/content/Context;J)Z

    move-result v12

    .line 102
    if-eqz v12, :cond_0

    invoke-static {p0}, Lorg/android/agoo/b/c;->isRegistered(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    if-eqz p0, :cond_2

    .line 1305
    :try_start_1
    const-string v0, "BaseIntentService"

    const-string v1, "auto update [updateSwitchConfig]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const-string v0, "org.android.agoo.impl.MtopService"

    invoke-static {v0}, Lorg/android/agoo/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/b;

    .line 1308
    new-instance v1, Lorg/android/agoo/b/h;

    invoke-direct {v1}, Lorg/android/agoo/b/h;-><init>()V

    .line 1309
    const-string v2, "mtop.wswitch.syncconfiggroup"

    .line 2071
    iput-object v2, v1, Lorg/android/agoo/b/h;->a:Ljava/lang/String;

    .line 1310
    const-string v2, "1.0"

    .line 2079
    iput-object v2, v1, Lorg/android/agoo/b/h;->b:Ljava/lang/String;

    .line 1311
    const-string v2, "configName"

    const-string v3, "client_sdk_switch"

    invoke-virtual {v1, v2, v3}, Lorg/android/agoo/b/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1312
    invoke-interface {v0, p0, v1}, Lorg/android/agoo/b;->getV3(Landroid/content/Context;Lorg/android/agoo/b/h;)Lorg/android/agoo/b/j;

    move-result-object v0

    .line 3014
    iget-boolean v1, v0, Lorg/android/agoo/b/j;->a:Z

    .line 1313
    if-eqz v1, :cond_3

    .line 3028
    iget-object v13, v0, Lorg/android/agoo/b/j;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1316
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1317
    const-string v0, "autoUpdate"

    .line 1318
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1319
    const-string v1, "multiplex"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1320
    const-string v2, "spdy"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1321
    const-string v3, "updateCycle"

    .line 1322
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1321
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1323
    const-string v3, "postData"

    .line 1324
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1326
    const-wide/32 v6, 0x15180

    .line 1327
    const-string v10, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v11, v8

    .line 1330
    :goto_1
    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v10, v8

    .line 1333
    :goto_2
    const-string v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1336
    const-string v0, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    move v2, v8

    .line 1339
    :goto_3
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_4

    move-wide v0, v4

    .line 4141
    :goto_4
    :try_start_3
    const-string v3, "AppStore"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3475
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3476
    const-string v4, "agoo_autoupdate"

    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3477
    const-string v4, "agoo_multiplex"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3478
    const-string v4, "agoo_spdy"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3479
    const-string v4, "agoo_updateCycle"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3480
    const-string v0, "agoo_postData"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3481
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 1358
    :goto_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v0

    .line 5141
    :try_start_5
    const-string v2, "AppStore"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4490
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4491
    const-string v3, "agoo_update_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4492
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 108
    :cond_2
    :goto_6
    :try_start_6
    invoke-static {p0}, Lorg/android/a;->k(Landroid/content/Context;)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_0

    if-eqz v12, :cond_0

    .line 111
    invoke-static {p0}, Lorg/android/agoo/b/c;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "BaseIntentService"

    const-string v1, "auto update [download]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, "org.android.agoo.impl.UpdateService"

    .line 117
    invoke-static {v0}, Lorg/android/agoo/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v1, "BaseIntentService"

    const-string v2, " onHandleIntent---isNeedAutoUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1347
    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lorg/android/agoo/f/b;->a()Lorg/android/agoo/f/b;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ERROR_EVENT_UPDATECONFIG_ERROR"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0}, Lorg/android/agoo/f/b;->b(Landroid/content/Context;)V

    goto :goto_5

    .line 103
    :catch_2
    move-exception v0

    goto :goto_6

    .line 1354
    :cond_3
    invoke-static {}, Lorg/android/agoo/f/b;->a()Lorg/android/agoo/f/b;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ERROR_EVENT_UPDATECONFIG_ERROR"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v0}, Lorg/android/agoo/b/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 1354
    invoke-virtual {v1, p0}, Lorg/android/agoo/f/b;->b(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_5

    :cond_4
    move-wide v0, v6

    goto/16 :goto_4

    :cond_5
    move v2, v9

    goto/16 :goto_3

    :cond_6
    move v10, v9

    goto/16 :goto_2

    :cond_7
    move v11, v9

    goto/16 :goto_1
.end method


# virtual methods
.method public callAgooService()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p0}, Lorg/android/agoo/b/b;->getAgooService()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "BaseIntentService"

    const-string v2, "callAgooService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final callDeletedMessages(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public final callError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    :try_start_0
    const-string v0, "BaseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callError["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0, p2}, Lorg/android/agoo/b/b;->onError$5ffc00fd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v1, "BaseIntentService"

    const-string v2, "callError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final callMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 188
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/b/b;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public callRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public final callRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/b/b;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "BaseIntentService"

    const-string v2, "callRegistered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final callShouldProcessMessage(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public final callUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/b/b;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string v1, "BaseIntentService"

    const-string v2, "callUnregistered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final callUserCommand(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final callUserHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public getAgooService()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onError$5ffc00fd(Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 66
    const-string v3, "0"

    .line 67
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lorg/android/agoo/b/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 70
    invoke-static {v2}, Lorg/android/a;->m(Landroid/content/Context;)Z

    move-result v1

    .line 71
    const-string v0, "org.android.agoo.impl.ControlService"

    invoke-static {v0}, Lorg/android/agoo/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/a;

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, v2, p1, p0}, Lorg/android/agoo/a;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/a/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    if-eqz v1, :cond_1

    .line 80
    invoke-static {v2, v3}, Lorg/android/agoo/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_1
    const-string v4, "BaseIntentService"

    const-string v5, " onHandleIntent"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    if-eqz v1, :cond_1

    .line 80
    invoke-static {v2, v3}, Lorg/android/agoo/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 80
    invoke-static {v2, v3}, Lorg/android/agoo/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    throw v0
.end method

.method public abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method
