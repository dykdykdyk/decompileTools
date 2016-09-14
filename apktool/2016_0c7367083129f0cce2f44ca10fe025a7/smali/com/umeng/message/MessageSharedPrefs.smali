.class public Lcom/umeng/message/MessageSharedPrefs;
.super Ljava/lang/Object;
.source "MessageSharedPrefs.java"


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Lcom/umeng/message/MessageSharedPrefs;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/SharedPreferences;

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/umeng/message/MessageSharedPrefs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/MessageSharedPrefs;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/message/MessageSharedPrefs;->c:I

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 49
    iget v0, p0, Lcom/umeng/message/MessageSharedPrefs;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/MessageSharedPrefs;->c:I

    .line 52
    :cond_0
    const-string v0, "umeng_message_state"

    iget v1, p0, Lcom/umeng/message/MessageSharedPrefs;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    .line 55
    sget-object v0, Lcom/umeng/message/MessageSharedPrefs;->d:Ljava/lang/String;

    const-string v1, "Constructor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/umeng/message/MessageSharedPrefs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/MessageSharedPrefs;->e:Lcom/umeng/message/MessageSharedPrefs;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/umeng/message/MessageSharedPrefs;

    invoke-direct {v0, p0}, Lcom/umeng/message/MessageSharedPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/MessageSharedPrefs;->e:Lcom/umeng/message/MessageSharedPrefs;

    .line 63
    :cond_0
    sget-object v0, Lcom/umeng/message/MessageSharedPrefs;->e:Lcom/umeng/message/MessageSharedPrefs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a()I
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "mute_duration"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addAlias(Lcom/umeng/message/MessageSharedPrefs$a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALIAS"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/message/MessageSharedPrefs$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 383
    return-void
.end method

.method public addAliasTypeSingle(Lcom/umeng/message/MessageSharedPrefs$a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 356
    invoke-virtual {v0, p1, p4}, Lcom/umeng/message/MessageSharedPrefs;->getAliasType(Lcom/umeng/message/MessageSharedPrefs$a;I)Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/umeng/message/MessageSharedPrefs;->isAliasType(Lcom/umeng/message/MessageSharedPrefs$a;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_0
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p4}, Lcom/umeng/message/MessageSharedPrefs;->saveAliasType(Lcom/umeng/message/MessageSharedPrefs$a;Ljava/lang/String;I)V

    .line 369
    :cond_1
    return-void

    .line 362
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs addTags([Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 470
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 471
    const-string v5, "UMENG_TAG_%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 472
    iget-object v5, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 473
    if-nez v5, :cond_0

    .line 474
    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 476
    invoke-virtual {p0}, Lcom/umeng/message/MessageSharedPrefs;->getTagCount()I

    move-result v4

    .line 477
    add-int/lit8 v4, v4, 0x1

    .line 478
    const-string v5, "UMENG_TAG_COUNT"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 470
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 482
    return-void
.end method

.method public clearSharedPrefs()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    return-void
.end method

.method public getAlias(Lcom/umeng/message/MessageSharedPrefs$a;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALIAS"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/message/MessageSharedPrefs$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliasCount(Lcom/umeng/message/MessageSharedPrefs$a;I)I
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 450
    invoke-virtual {v0, p1, p2}, Lcom/umeng/message/MessageSharedPrefs;->getAliasType(Lcom/umeng/message/MessageSharedPrefs$a;I)Ljava/lang/String;

    move-result-object v0

    .line 453
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 458
    :goto_0
    array-length v0, v0

    .line 459
    return v0

    .line 456
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAliasType(Lcom/umeng/message/MessageSharedPrefs$a;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALIAS"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/message/MessageSharedPrefs$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0
.end method

.method public getAppLaunchLogSendPolicy()I
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_APP_LAUNCH_LOG_SEND_POLICY"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppLaunchLogSentAt()J
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_LAUNCH_LOG_SENT_MARK"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 82
    return-wide v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "device_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/UmengRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 772
    :cond_0
    return-object v0
.end method

.method public getDisplayNotificationNumber()I
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_NOTIFICATION_NUMBER"

    const/4 v2, 0x1

    .line 185
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    const-string v0, "ALIAS_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastLocalNotificationUsingAt()J
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_LAST_LOCAL_NOTIFICATION_USING"

    const-wide/16 v2, 0x0

    .line 129
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageAppKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_UMENG_MESSAGE_APP_KEY"

    const-string v2, ""

    .line 196
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageAppSecret()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_UMENG_MESSAGE_APP_SECRET"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_UMENG_MESSAGE_APP_CHANNEL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificaitonOnForeground()Z
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_SET_NOTIFICATION_ON_FOREGROUND"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNotificationPlayLights()I
    .locals 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_SET_NOTIFICATION_PLAY_LIGHTS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNotificationPlaySound()I
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_SET_NOTIFICATION_PLAY_SOUND"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNotificationPlayVibrate()I
    .locals 3

    .prologue
    .line 712
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_SET_NOTIFICATION_PLAY_VIBRATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPushIntentServiceClass()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_PUSH_INTENT_SERVICE_CLASSNAME"

    sget-object v2, Lcom/umeng/message/MsgConstant;->DEFAULT_INTENT_SERVICE_CLASS_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v2, "KEY_SET_PUSH_INTENT_SERVICE_VERSION_CODE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    .line 162
    invoke-static {v2}, Lcom/umeng/a/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 165
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unknown"

    .line 171
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    sget-object v0, Lcom/umeng/message/MsgConstant;->DEFAULT_INTENT_SERVICE_CLASS_NAME:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_0
    sget-object v0, Lcom/umeng/message/MsgConstant;->DEFAULT_INTENT_SERVICE_CLASS_NAME:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResourcePackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_SET_RESOURCE_PACKAGENAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNo()I
    .locals 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    const-string v1, "umeng_message_state"

    iget v2, p0, Lcom/umeng/message/MessageSharedPrefs;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "serial_no"

    const/4 v2, 0x1

    .line 683
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTagCount()I
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "UMENG_TAG_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTagRemain()I
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "UMENG_TAG_REMAIN"

    const/16 v2, 0x40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTagSendPolicy()I
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_TAG_SEND_POLICY"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasAppLaunchLogSentToday()Z
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v0, 0x1

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/umeng/message/MsgLogStore;->getMsgConfigInfo_AppLaunchAt()J

    move-result-wide v4

    .line 95
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 102
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 103
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 104
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 107
    :goto_1
    return v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    sget-object v3, Lcom/umeng/message/MessageSharedPrefs;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasLocalNotificationUsingSendToday()Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lcom/umeng/message/MessageSharedPrefs;->getLastLocalNotificationUsingAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 115
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 116
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAliasSet(Lcom/umeng/message/MessageSharedPrefs$a;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    const-string v2, "ALIAS%s%d_%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/umeng/message/MessageSharedPrefs$a;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 431
    iget-object v3, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    if-eqz p3, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isAliasType(Lcom/umeng/message/MessageSharedPrefs$a;Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 308
    .line 309
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 310
    invoke-virtual {v0, p1, p3}, Lcom/umeng/message/MessageSharedPrefs;->getAliasType(Lcom/umeng/message/MessageSharedPrefs$a;I)Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    new-array v0, v2, [Ljava/lang/String;

    :goto_0
    move v1, v2

    .line 317
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 318
    aget-object v3, v0, v1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    const/4 v2, 0x1

    .line 323
    :cond_0
    return v2

    .line 315
    :cond_1
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isAliaseTypeSet(Lcom/umeng/message/MessageSharedPrefs$a;ILjava/lang/String;)Z
    .locals 4

    .prologue
    .line 439
    const-string v0, "ALIAS%s%d_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/umeng/message/MessageSharedPrefs$a;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTagSet(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 512
    const-string v0, "UMENG_TAG_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 514
    return v0
.end method

.method public removeAlias(Lcom/umeng/message/MessageSharedPrefs$a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALIAS"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/message/MessageSharedPrefs$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 394
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 395
    return-void
.end method

.method public removeAliasType(Lcom/umeng/message/MessageSharedPrefs$a;I)V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALIAS"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/message/MessageSharedPrefs$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    return-void
.end method

.method public removeAliasTypeSingle(Lcom/umeng/message/MessageSharedPrefs$a;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 328
    invoke-virtual {v0, p1, p3}, Lcom/umeng/message/MessageSharedPrefs;->getAliasType(Lcom/umeng/message/MessageSharedPrefs$a;I)Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v2, ""

    .line 331
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    new-array v0, v1, [Ljava/lang/String;

    :goto_0
    move v4, v1

    move-object v1, v2

    move v2, v4

    .line 336
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 337
    aget-object v3, v0, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    :cond_1
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 346
    :cond_3
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/umeng/message/MessageSharedPrefs;->removeAliasType(Lcom/umeng/message/MessageSharedPrefs$a;I)V

    .line 352
    :goto_3
    return-void

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p3}, Lcom/umeng/message/MessageSharedPrefs;->saveAliasType(Lcom/umeng/message/MessageSharedPrefs$a;Ljava/lang/String;I)V

    goto :goto_3
.end method

.method public varargs removeTags([Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 491
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 492
    const-string v5, "UMENG_TAG_%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 493
    iget-object v5, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 494
    if-eqz v5, :cond_0

    .line 495
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-virtual {p0}, Lcom/umeng/message/MessageSharedPrefs;->getTagCount()I

    move-result v4

    .line 498
    add-int/lit8 v4, v4, -0x1

    .line 499
    const-string v5, "UMENG_TAG_COUNT"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 491
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 503
    return-void
.end method

.method public resetTags()V
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 533
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 535
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 536
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 537
    const-string v3, "UMENG_TAG_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 542
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 543
    return-void
.end method

.method public saveAliasType(Lcom/umeng/message/MessageSharedPrefs$a;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALIAS"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/message/MessageSharedPrefs$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method

.method public setAppLaunchLogSendPolicy(I)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_APP_LAUNCH_LOG_SEND_POLICY"

    .line 224
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    return-void
.end method

.method public setAppLaunchLogSentAt(J)V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_LAUNCH_LOG_SENT_MARK"

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 75
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_token"

    .line 763
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 764
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 765
    return-void
.end method

.method public setDisplayNotificationNumber(I)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_NOTIFICATION_NUMBER"

    .line 179
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    return-void
.end method

.method public setLastLocalNotificationUsingAt()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_LAST_LOCAL_NOTIFICATION_USING"

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method public setMessageAppKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_UMENG_MESSAGE_APP_KEY"

    .line 190
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    return-void
.end method

.method public setMessageAppSecret(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_UMENG_MESSAGE_APP_SECRET"

    .line 201
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method

.method public setMessageChannel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_UMENG_MESSAGE_APP_CHANNEL"

    .line 212
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    return-void
.end method

.method public setNotificaitonOnForeground(Z)V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    .line 694
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SET_NOTIFICATION_ON_FOREGROUND"

    .line 695
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 696
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 697
    return-void
.end method

.method public setNotificationPlayLights(I)V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    .line 730
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SET_NOTIFICATION_PLAY_LIGHTS"

    .line 731
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 732
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    return-void
.end method

.method public setNotificationPlaySound(I)V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SET_NOTIFICATION_PLAY_SOUND"

    .line 742
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 743
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 744
    return-void
.end method

.method public setNotificationPlayVibrate(I)V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    .line 718
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SET_NOTIFICATION_PLAY_VIBRATE"

    .line 719
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 720
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 721
    return-void
.end method

.method public setPushIntentServiceClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lcom/umeng/message/UmengBaseIntentService;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_PUSH_INTENT_SERVICE_CLASSNAME"

    .line 137
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SET_PUSH_INTENT_SERVICE_VERSION_CODE"

    .line 138
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    .line 143
    invoke-static {v1}, Lcom/umeng/a/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    .line 145
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "KEY_PUSH_INTENT_SERVICE_CLASSNAME"

    .line 146
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "KEY_SET_PUSH_INTENT_SERVICE_VERSION_CODE"

    .line 148
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setResourcePackageName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    .line 706
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SET_RESOURCE_PACKAGENAME"

    .line 707
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 708
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 709
    return-void
.end method

.method public setSerialNo(I)V
    .locals 3

    .prologue
    .line 676
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    const-string v1, "umeng_message_state"

    iget v2, p0, Lcom/umeng/message/MessageSharedPrefs;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 677
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "serial_no"

    .line 678
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 679
    return-void
.end method

.method public setTagRemain(I)V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 523
    const-string v1, "UMENG_TAG_REMAIN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 525
    return-void
.end method

.method public setTagSendPolicy(I)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_TAG_SEND_POLICY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    return-void
.end method
