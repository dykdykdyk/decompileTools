.class Lcom/sina/weibo/sdk/b/b;
.super Ljava/lang/Object;
.source "AppInstallCmdExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field b:Landroid/os/HandlerThread;

.field c:Landroid/os/Looper;

.field d:Lcom/sina/weibo/sdk/b/c;

.field e:Z

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/org_share_data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/b/b;->f:Ljava/lang/String;

    .line 54
    const-class v0, Lcom/sina/weibo/sdk/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/b/b;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/b/b;->e:Z

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/b;->g:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/b/b;)Landroid/os/Looper;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/os/Looper;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 2064
    new-instance v1, Lcom/sina/weibo/sdk/d/n;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/d/n;-><init>()V

    .line 3058
    iget-object v0, p1, Lcom/sina/weibo/sdk/b/g;->e:Ljava/lang/String;

    .line 3078
    iput-object v0, v1, Lcom/sina/weibo/sdk/d/n;->c:Ljava/lang/String;

    .line 3347
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3348
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3349
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 3351
    const-string v3, "application/vnd.android.package-archive"

    .line 3350
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3352
    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4083
    :goto_0
    iput-object v0, v1, Lcom/sina/weibo/sdk/d/n;->d:Landroid/app/PendingIntent;

    .line 5066
    iget-object v0, p1, Lcom/sina/weibo/sdk/b/g;->f:Ljava/lang/String;

    .line 5367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5368
    const-string v0, "Weibo"

    .line 5369
    const-string v2, "\u5fae\u535a"

    .line 5370
    const-string v3, "\u5fae\u535a"

    .line 5368
    invoke-static {v0, v2, v3}, Lcom/sina/weibo/sdk/d/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6073
    :cond_0
    iput-object v0, v1, Lcom/sina/weibo/sdk/d/n;->b:Ljava/lang/String;

    .line 7058
    iget-object v0, p1, Lcom/sina/weibo/sdk/b/g;->e:Ljava/lang/String;

    .line 7068
    iput-object v0, v1, Lcom/sina/weibo/sdk/d/n;->a:Ljava/lang/String;

    .line 335
    invoke-virtual {v1, p0}, Lcom/sina/weibo/sdk/d/n;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/d/m;

    move-result-object v0

    .line 336
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/d/m;->a(I)V

    .line 337
    return-void

    .line 3354
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3355
    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/b/b;Lcom/sina/weibo/sdk/b/a;)V
    .locals 14

    .prologue
    .line 92
    .line 7093
    iget-object v1, p0, Lcom/sina/weibo/sdk/b/b;->g:Landroid/content/Context;

    .line 8072
    iget-object v0, p1, Lcom/sina/weibo/sdk/b/a;->b:Ljava/util/List;

    .line 7134
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 8080
    iget-object v2, p1, Lcom/sina/weibo/sdk/b/a;->c:Ljava/lang/String;

    .line 7135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8088
    iget-object v2, p1, Lcom/sina/weibo/sdk/b/a;->d:Ljava/lang/String;

    .line 7136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9058
    iget-object v2, p1, Lcom/sina/weibo/sdk/b/g;->e:Ljava/lang/String;

    .line 7137
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7138
    :cond_0
    const/4 v0, 0x0

    .line 7094
    :goto_0
    if-eqz v0, :cond_1

    .line 7098
    sget-object v4, Lcom/sina/weibo/sdk/b/b;->f:Ljava/lang/String;

    .line 9088
    iget-object v5, p1, Lcom/sina/weibo/sdk/b/a;->d:Ljava/lang/String;

    .line 10064
    iget-wide v6, p1, Lcom/sina/weibo/sdk/b/a;->a:J

    .line 7102
    iget-object v8, p0, Lcom/sina/weibo/sdk/b/b;->g:Landroid/content/Context;

    .line 10218
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10219
    const/4 v0, 0x0

    move-object v1, v0

    .line 7103
    :goto_1
    if-eqz v1, :cond_c

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_c

    .line 7105
    iget-object v2, p0, Lcom/sina/weibo/sdk/b/b;->g:Landroid/content/Context;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V

    .line 7124
    :cond_1
    :goto_2
    return-void

    .line 7140
    :cond_2
    const-string v2, "com.sina.weibo"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7141
    invoke-static {v1}, Lcom/sina/weibo/sdk/b;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b;->a()Lcom/sina/weibo/sdk/c;

    move-result-object v0

    .line 7142
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 7145
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7151
    const/4 v0, 0x1

    goto :goto_0

    .line 7145
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7146
    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 7147
    if-eqz v0, :cond_5

    .line 7148
    const/4 v0, 0x0

    goto :goto_0

    .line 10222
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_9

    .line 10224
    :cond_8
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 10227
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 10228
    if-nez v9, :cond_a

    .line 10229
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 10232
    :cond_a
    const/4 v2, 0x0

    .line 10233
    const/4 v1, 0x0

    .line 10234
    array-length v10, v9

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-lt v3, v10, :cond_b

    .line 10249
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    goto/16 :goto_1

    .line 10234
    :cond_b
    aget-object v0, v9, v3

    .line 10235
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 10236
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_13

    const-string v12, ".apk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 10237
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 10238
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 10239
    const/16 v13, 0x40

    .line 10238
    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 11072
    iget-object v12, p1, Lcom/sina/weibo/sdk/b/a;->b:Ljava/util/List;

    .line 11080
    iget-object v13, p1, Lcom/sina/weibo/sdk/b/a;->c:Ljava/lang/String;

    .line 10240
    invoke-static {v11, v12, v13}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v12

    .line 10241
    if-eqz v12, :cond_13

    .line 10243
    iget v12, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v12, v2, :cond_13

    .line 10244
    iget v1, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 10234
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto :goto_3

    .line 7106
    :cond_c
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->g:Landroid/content/Context;

    .line 11084
    if-eqz v0, :cond_10

    .line 11127
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 11128
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 11087
    if-eqz v0, :cond_f

    .line 11088
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v1, v2, :cond_f

    .line 11089
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11087
    const/4 v0, 0x1

    .line 7106
    :goto_5
    if-eqz v0, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7108
    const-string v1, ""

    .line 7110
    :try_start_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->g:Landroid/content/Context;

    .line 7111
    const-string v2, "GET"

    new-instance v3, Lcom/sina/weibo/sdk/net/k;

    const-string v6, ""

    invoke-direct {v3, v6}, Lcom/sina/weibo/sdk/net/k;-><init>(Ljava/lang/String;)V

    .line 12022
    invoke-static {v0, v5, v2, v3}, Lcom/sina/weibo/sdk/net/HttpManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/k;)Ljava/lang/String;

    move-result-object v2

    .line 12323
    const-string v0, ""

    .line 12324
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 12325
    const/4 v5, -0x1

    if-eq v3, v5, :cond_d

    .line 12326
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7114
    :cond_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 7115
    :cond_e
    sget-object v0, Lcom/sina/weibo/sdk/b/b;->a:Ljava/lang/String;

    const-string v2, "redirectDownloadUrl is illeagle"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7124
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->g:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 11087
    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 11092
    :cond_10
    const/4 v0, 0x0

    goto :goto_5

    .line 13034
    :cond_11
    :try_start_1
    invoke-static {v2, v4, v0}, Lcom/sina/weibo/sdk/net/HttpManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 7123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7124
    iget-object v1, p0, Lcom/sina/weibo/sdk/b/b;->g:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7121
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/exception/WeiboException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7124
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->g:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7122
    :catchall_0
    move-exception v0

    .line 7123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 7124
    iget-object v2, p0, Lcom/sina/weibo/sdk/b/b;->g:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V

    .line 7126
    :cond_12
    throw v0

    :cond_13
    move-object v0, v1

    move v1, v2

    goto/16 :goto_4
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 165
    const/4 v3, 0x1

    .line 164
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    if-eqz v2, :cond_0

    move v0, v1

    .line 169
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    .line 261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v4, v2

    .line 1292
    :goto_0
    if-nez p0, :cond_4

    move v0, v2

    .line 268
    :goto_1
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 261
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1277
    if-nez p0, :cond_3

    move v0, v2

    .line 262
    :goto_2
    if-eqz v0, :cond_0

    move v4, v3

    .line 264
    goto :goto_0

    .line 1281
    :cond_3
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1282
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 1295
    :cond_4
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_6

    .line 1297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_5

    move v0, v3

    .line 1298
    goto :goto_1

    :cond_5
    move v0, v2

    .line 1300
    goto :goto_1

    .line 1304
    :cond_6
    const-string v0, ""

    move v1, v2

    .line 1305
    :goto_3
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-lt v1, v5, :cond_7

    .line 1311
    if-nez v0, :cond_9

    move v0, v2

    .line 1312
    goto :goto_1

    .line 1306
    :cond_7
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    .line 1307
    if-eqz v5, :cond_8

    .line 1308
    invoke-static {v5}, Lcom/sina/weibo/sdk/d/j;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 1305
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1314
    :cond_9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/b/b;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/b/b;->e:Z

    return-void
.end method
