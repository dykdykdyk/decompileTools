.class public final Lcom/tencent/tauth/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static b:Lcom/tencent/tauth/c;


# instance fields
.field public final a:Lcom/tencent/connect/b/u;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1064
    sput-object v0, Lcom/tencent/open/utils/g;->a:Landroid/content/Context;

    .line 50
    invoke-static {p1, p2}, Lcom/tencent/connect/b/u;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tauth/c;->a:Lcom/tencent/connect/b/u;

    .line 51
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/c;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 55
    const-class v1, Lcom/tencent/tauth/c;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2064
    sput-object v2, Lcom/tencent/open/utils/g;->a:Landroid/content/Context;

    .line 56
    const-string v2, "openSDK_LOG.Tencent"

    const-string v3, "createInstance()  -- start"

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v2, Lcom/tencent/tauth/c;->b:Lcom/tencent/tauth/c;

    if-nez v2, :cond_1

    .line 58
    new-instance v2, Lcom/tencent/tauth/c;

    invoke-direct {v2, p0, p1}, Lcom/tencent/tauth/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v2, Lcom/tencent/tauth/c;->b:Lcom/tencent/tauth/c;

    .line 66
    :cond_0
    :goto_0
    invoke-static {p1, p0}, Lcom/tencent/tauth/c;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 71
    :goto_1
    monitor-exit v1

    return-object v0

    .line 60
    :cond_1
    :try_start_1
    sget-object v2, Lcom/tencent/tauth/c;->b:Lcom/tencent/tauth/c;

    .line 2384
    iget-object v2, v2, Lcom/tencent/tauth/c;->a:Lcom/tencent/connect/b/u;

    .line 3288
    iget-object v2, v2, Lcom/tencent/connect/b/u;->a:Lcom/tencent/connect/b/v;

    .line 4023
    iget-object v2, v2, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    sget-object v2, Lcom/tencent/tauth/c;->b:Lcom/tencent/tauth/c;

    .line 4264
    const-string v3, "openSDK_LOG.Tencent"

    const-string v4, "logout()"

    invoke-static {v3, v4}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4265
    iget-object v3, v2, Lcom/tencent/tauth/c;->a:Lcom/tencent/connect/b/u;

    .line 4288
    iget-object v3, v3, Lcom/tencent/connect/b/u;->a:Lcom/tencent/connect/b/v;

    .line 4265
    const/4 v4, 0x0

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/tencent/connect/b/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    iget-object v2, v2, Lcom/tencent/tauth/c;->a:Lcom/tencent/connect/b/u;

    .line 5288
    iget-object v2, v2, Lcom/tencent/connect/b/u;->a:Lcom/tencent/connect/b/v;

    .line 6049
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/tencent/connect/b/v;->c:Ljava/lang/String;

    .line 62
    new-instance v2, Lcom/tencent/tauth/c;

    invoke-direct {v2, p0, p1}, Lcom/tencent/tauth/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v2, Lcom/tencent/tauth/c;->b:Lcom/tencent/tauth/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 70
    :cond_2
    :try_start_2
    const-string v0, "openSDK_LOG.Tencent"

    const-string v2, "createInstance()  -- end"

    invoke-static {v0, v2}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/tencent/tauth/c;->b:Lcom/tencent/tauth/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 83
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.tauth.AuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 87
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 114
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity,\u8bf7\u52a0\u4e0acom.tencent.tauth.AuthActivity,\u5e76\u914d\u7f6e<data android:scheme=\"tencent"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n    <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />\n</intent-filter>\n</activity>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v2, "openSDK_LOG.Tencent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :catch_1
    move-exception v1

    const-string v1, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity,\u8bf7\u52a0\u4e0acom.tencent.connect.common.AssistActivity,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"behind\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "openSDK_LOG.Tencent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
