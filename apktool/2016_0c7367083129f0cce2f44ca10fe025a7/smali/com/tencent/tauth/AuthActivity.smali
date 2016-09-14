.class public Lcom/tencent/tauth/AuthActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tauth/AuthActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 160
    const-string v0, "openSDK_LOG.AuthActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "execAuthCallback url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "openSDK_LOG.AuthActivity"

    const-string v1, "-->onCreate, getIntent() return null"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_1
    const-string v1, "openSDK_LOG.AuthActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-->onCreate, uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v1, "openSDK_LOG.AuthActivity"

    const-string v2, "-->handleActionUri--start"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1077
    :cond_1
    const-string v0, "openSDK_LOG.AuthActivity"

    const-string v1, "-->handleActionUri, uri invalid"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    const-string v2, "openSDK_LOG.AuthActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-->onCreate, getIntent().getData() has exception! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1081
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1084
    invoke-static {v1}, Lcom/tencent/open/utils/s;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1085
    if-nez v1, :cond_3

    .line 1086
    const-string v0, "openSDK_LOG.AuthActivity"

    const-string v1, "-->handleActionUri, bundle is null"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_0

    .line 1091
    :cond_3
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1092
    const-string v3, "openSDK_LOG.AuthActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-->handleActionUri, action: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    if-nez v2, :cond_4

    .line 1094
    invoke-static {v0}, Lcom/tencent/tauth/AuthActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1095
    :cond_4
    const-string v3, "shareToQQ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shareToQzone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "addToQQFavorites"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "sendToMyComputer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shareToTroopBar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1103
    :cond_5
    const-string v0, "shareToQzone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.tencent.mobileqq"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "5.2.0"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_6

    .line 1107
    sget v0, Lcom/tencent/tauth/AuthActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 1108
    sput v0, Lcom/tencent/tauth/AuthActivity;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 1109
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tauth/AuthActivity;->a:I

    .line 1110
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 1115
    :cond_6
    const-string v0, "openSDK_LOG.AuthActivity"

    const-string v2, "-->handleActionUri, most share action, start assistactivity"

    invoke-static {v0, v2}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1119
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1120
    invoke-virtual {p0, v0}, Lcom/tencent/tauth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 1121
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 1132
    :cond_7
    const-string v3, "sharePrize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1133
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1135
    const-string v0, "response"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    const-string v0, ""

    .line 1139
    :try_start_1
    invoke-static {v1}, Lcom/tencent/open/utils/s;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1140
    const-string v3, "activityid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1145
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1146
    const-string v1, "sharePrize"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1148
    const-string v3, "activityid"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1151
    :cond_8
    invoke-virtual {p0, v2}, Lcom/tencent/tauth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 1152
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 1141
    :catch_1
    move-exception v1

    .line 1142
    const-string v3, "openSDK_LOG.AuthActivity"

    const-string v4, "sharePrize parseJson has exception."

    invoke-static {v3, v4, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1154
    :cond_9
    invoke-static {v0}, Lcom/tencent/tauth/AuthActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
