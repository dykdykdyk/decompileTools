.class public Lcom/umeng/message/UmengRegistrar;
.super Lorg/android/agoo/b/c;
.source "UmengRegistrar.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/umeng/message/UmengRegistrar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/UmengRegistrar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/android/agoo/b/c;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    sget-object v0, Lcom/umeng/message/UmengRegistrar;->a:Ljava/lang/String;

    const-string v1, "setRegisteredToUmeng: null context"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/umeng/message/UmengRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/umeng/message/UmengRegistrar;->a:Ljava/lang/String;

    const-string v1, "setRegisteredToUmeng: empty registration id"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_2

    .line 71
    const/4 v0, 0x4

    .line 72
    :cond_2
    const-string v2, "umeng_message_state"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 81
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    const-string v4, "KEY_REGISTERED_TO_UMENG_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 88
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "KEY_REGISTERED_TO_UMENG_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static final checkManifest(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public static checkRegisteredToUmeng(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lcom/umeng/message/UmengRegistrar;->isRegisteredToUmeng(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {p0}, Lcom/umeng/message/UmengRegistrar;->registerToUmeng(Landroid/content/Context;)V

    .line 144
    :cond_0
    return-void
.end method

.method public static getIMtopService(Landroid/content/Context;)Lorg/android/agoo/b;
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lorg/android/agoo/b/c;->getMtopService(Landroid/content/Context;)Lorg/android/agoo/b;

    move-result-object v0

    return-object v0
.end method

.method public static isRegisteredToUmeng(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 100
    if-nez p0, :cond_0

    .line 101
    sget-object v1, Lcom/umeng/message/UmengRegistrar;->a:Ljava/lang/String;

    const-string v2, "isRegisteredToUmeng: null context"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/umeng/message/UmengRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    sget-object v1, Lcom/umeng/message/UmengRegistrar;->a:Ljava/lang/String;

    const-string v2, "isRegisteredToUmeng: empty registration id"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    .line 3593
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEY_REGISTERED_TO_UMENG_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3594
    iget-object v3, v2, Lcom/umeng/message/MessageSharedPrefs;->a:Landroid/content/Context;

    const-string v4, "umeng_message_state"

    iget v2, v2, Lcom/umeng/message/MessageSharedPrefs;->c:I

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3596
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 32
    sget-object v0, Lcom/umeng/message/UmengRegistrar;->a:Ljava/lang/String;

    const-string v1, "Push SDK does not work for Android Verion < 8"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appKey==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appSecret==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/umeng/message/SystemReceiver;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/umeng/message/RegistrationReceiver;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/umeng/message/MessageReceiver;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/umeng/message/proguard/bi;->a(Landroid/content/Context;[Ljava/lang/Class;)V

    .line 45
    const-string v0, "umeng"

    .line 1548
    if-eqz p0, :cond_3

    .line 2372
    if-eqz p0, :cond_3

    .line 3141
    :try_start_0
    const-string v1, "AppStore"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2374
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2375
    const-string v2, "agoo_service_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2376
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "umeng:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android@umeng"

    invoke-static {p0, v0, p2, v1}, Lcom/umeng/message/UmengRegistrar;->baseRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static registerToUmeng(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    invoke-static {p0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/UTrack;->trackRegister()V

    .line 132
    return-void
.end method
