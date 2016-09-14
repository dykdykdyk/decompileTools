.class public Lcom/nut/blehunter/NutTrackerApplication;
.super Landroid/app/Application;
.source "NutTrackerApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/nut/blehunter/a/d;


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Z

.field private static e:Lcom/nut/blehunter/NutTrackerApplication;

.field private static f:Ljava/lang/String;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NutTracker/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/NutTrackerApplication;->a:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/nut/blehunter/NutTrackerApplication;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/NutTrackerApplication;->g:Ljava/util/Stack;

    .line 57
    iput-object v1, p0, Lcom/nut/blehunter/NutTrackerApplication;->c:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/nut/blehunter/NutTrackerApplication;->d:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public static declared-synchronized a()Lcom/nut/blehunter/NutTrackerApplication;
    .locals 2

    .prologue
    .line 86
    const-class v0, Lcom/nut/blehunter/NutTrackerApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nut/blehunter/NutTrackerApplication;->e:Lcom/nut/blehunter/NutTrackerApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 64
    invoke-static {p0}, Landroid/support/b/a;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public final b()Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/nut/blehunter/NutTrackerApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 91
    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/nut/blehunter/NutTrackerApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nut/blehunter/NutTrackerApplication;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/NutTrackerApplication;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 154
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 155
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 156
    const-string v0, "VERSION"

    const-string v3, "1.0"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v0, "PLATFORM"

    const-string v3, "ANDROID"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {p0}, Lcom/nut/blehunter/NutTrackerApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/nut/blehunter/NutTrackerApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 160
    const-string v3, "APP_VERSION"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 163
    const-string v3, "USER_ID"

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/NutTrackerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    const-string v3, "PHONE_DEVICE_ID"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :goto_1
    const-string v0, "PHONE_MODAL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v0, "SYSTEM_VERSION"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v0, "NUT_LOG_HEADER"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_2
    return-object v0

    .line 165
    :cond_0
    const-string v0, "USER_ID"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    const-string v1, "getHeaderInfo JSONException"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 172
    :cond_1
    :try_start_1
    const-string v0, "PHONE_DEVICE_ID"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 181
    :catch_1
    move-exception v0

    const-string v1, "getHeaderInfo NameNotFoundException"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    .line 189
    const-string v0, "created"

    sput-object v0, Lcom/nut/blehunter/NutTrackerApplication;->f:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/nut/blehunter/NutTrackerApplication;->g:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 204
    const-string v0, "destroyed"

    sput-object v0, Lcom/nut/blehunter/NutTrackerApplication;->f:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/nut/blehunter/NutTrackerApplication;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 220
    const-string v0, "paused"

    sput-object v0, Lcom/nut/blehunter/NutTrackerApplication;->f:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 215
    const-string v0, "resumed"

    sput-object v0, Lcom/nut/blehunter/NutTrackerApplication;->f:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 195
    const-string v0, "started"

    sput-object v0, Lcom/nut/blehunter/NutTrackerApplication;->f:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 210
    const-string v0, "stopped"

    sput-object v0, Lcom/nut/blehunter/NutTrackerApplication;->f:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 70
    invoke-static {p0}, Lcom/b/a/a;->a(Landroid/app/Application;)V

    .line 71
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    sget-object v1, Lcom/nut/blehunter/a;->m:Ljava/lang/String;

    sget-object v2, Lcom/nut/blehunter/a;->n:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x2

    new-array v1, v1, [Lio/fabric/sdk/android/o;

    new-instance v2, Lcom/twitter/sdk/android/core/q;

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/core/q;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    aput-object v2, v1, v3

    const/4 v0, 0x1

    new-instance v2, Lcom/crashlytics/android/a;

    invoke-direct {v2}, Lcom/crashlytics/android/a;-><init>()V

    aput-object v2, v1, v0

    invoke-static {p0, v1}, Lio/fabric/sdk/android/f;->a(Landroid/content/Context;[Lio/fabric/sdk/android/o;)Lio/fabric/sdk/android/f;

    .line 74
    sput-object p0, Lcom/nut/blehunter/NutTrackerApplication;->e:Lcom/nut/blehunter/NutTrackerApplication;

    .line 75
    invoke-virtual {p0, p0}, Lcom/nut/blehunter/NutTrackerApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1101
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nut/blehunter/NutTrackerApplication;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1105
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nut/blehunter/NutTrackerApplication;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/NutTrackerApplication;->c:Ljava/lang/String;

    .line 1121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nut/blehunter/NutTrackerApplication;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1123
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1110
    :cond_1
    new-instance v0, Lcom/nut/blehunter/b;

    invoke-virtual {p0}, Lcom/nut/blehunter/NutTrackerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/NutTrackerApplication;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nut/blehunter/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1115
    new-instance v0, Lcom/nut/blehunter/x;

    invoke-direct {v0, v3}, Lcom/nut/blehunter/x;-><init>(B)V

    invoke-static {v0}, La/a/a;->a(La/a/e;)V

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nut/blehunter/NutTrackerApplication;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/NutTrackerApplication;->d:Ljava/lang/String;

    .line 1129
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nut/blehunter/NutTrackerApplication;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1131
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1148
    :cond_2
    invoke-static {}, Lcom/nut/blehunter/a/c;->a()Lcom/nut/blehunter/a/c;

    move-result-object v0

    .line 2073
    const-string v1, "UbRecod"

    const-string v2, "init ubrecord"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iput-object p0, v0, Lcom/nut/blehunter/a/c;->b:Lcom/nut/blehunter/a/d;

    .line 2075
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nut/blehunter/a/f;

    invoke-direct {v2, v0, v3}, Lcom/nut/blehunter/a/f;-><init>(Lcom/nut/blehunter/a/c;B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2076
    const-string v2, "UbRecordThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2078
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nut/blehunter/a/c;->a(J)V

    .line 83
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/nut/blehunter/NutTrackerApplication;->f:Ljava/lang/String;

    const-string v1, "stopped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    .line 2234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2235
    const-string v1, "com.nutspace.action.app.background"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2236
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/NutTrackerApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 229
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 231
    return-void
.end method
