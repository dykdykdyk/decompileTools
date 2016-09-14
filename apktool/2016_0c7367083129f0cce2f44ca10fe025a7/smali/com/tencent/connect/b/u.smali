.class public final Lcom/tencent/connect/b/u;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:Lcom/tencent/connect/b/v;

.field private b:Lcom/tencent/connect/b/a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "new QQAuth() --start"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/tencent/connect/b/v;

    invoke-direct {v0, p1}, Lcom/tencent/connect/b/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/connect/b/u;->a:Lcom/tencent/connect/b/v;

    .line 42
    new-instance v0, Lcom/tencent/connect/b/a;

    iget-object v1, p0, Lcom/tencent/connect/b/u;->a:Lcom/tencent/connect/b/v;

    invoke-direct {v0, v1}, Lcom/tencent/connect/b/a;-><init>(Lcom/tencent/connect/b/v;)V

    iput-object v0, p0, Lcom/tencent/connect/b/u;->b:Lcom/tencent/connect/b/a;

    .line 43
    iget-object v0, p0, Lcom/tencent/connect/b/u;->a:Lcom/tencent/connect/b/v;

    invoke-static {p2, v0}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/b/v;)V

    .line 44
    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "new QQAuth() --end"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/b/u;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1064
    sput-object v0, Lcom/tencent/open/utils/g;->a:Landroid/content/Context;

    .line 58
    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "QQAuth -- createInstance() --start"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.tauth.AuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 66
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    new-instance v0, Lcom/tencent/connect/b/u;

    invoke-direct {v0, p0, p1}, Lcom/tencent/connect/b/u;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    const-string v1, "openSDK_LOG.QQAuth"

    const-string v2, "QQAuth -- createInstance()  --end"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "openSDK_LOG.QQAuth"

    const-string v2, "createInstance() error --end"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u53c2\u7167\u6587\u6863\u5728Androidmanifest.xml\u52a0\u4e0aAuthActivity\u548cAssitActivity\u7684\u5b9a\u4e49 "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/b;)I
    .locals 5

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 169
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 170
    const/4 v1, 0x0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 172
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 177
    :goto_0
    if-eqz v0, :cond_3

    .line 179
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/open/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    const-string v0, "openSDK_LOG.QQAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-->login channelId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, ""

    .line 1210
    const-string v2, "openSDK_LOG.QQAuth"

    const-string v3, "loginWithOEM"

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/connect/common/b;->j:Z

    .line 1213
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1214
    const-string v2, "null"

    .line 1216
    :goto_1
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1217
    const-string v1, "null"

    .line 1219
    :cond_1
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1220
    const-string v0, "null"

    .line 1222
    :cond_2
    sput-object v1, Lcom/tencent/connect/common/b;->h:Ljava/lang/String;

    .line 1223
    sput-object v2, Lcom/tencent/connect/common/b;->g:Ljava/lang/String;

    .line 1224
    sput-object v0, Lcom/tencent/connect/common/b;->i:Ljava/lang/String;

    .line 1225
    iget-object v0, p0, Lcom/tencent/connect/b/u;->b:Lcom/tencent/connect/b/a;

    .line 2204
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/b;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 193
    :goto_2
    return v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v1, "openSDK_LOG.QQAuth"

    const-string v2, "-->login get channel id exception."

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    :cond_3
    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "-->login channelId is null "

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/connect/common/b;->j:Z

    .line 193
    iget-object v0, p0, Lcom/tencent/connect/b/u;->b:Lcom/tencent/connect/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/b;)I

    move-result v0

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
