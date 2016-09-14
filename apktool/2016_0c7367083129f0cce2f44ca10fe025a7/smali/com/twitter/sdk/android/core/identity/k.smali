.class public final Lcom/twitter/sdk/android/core/identity/k;
.super Lcom/twitter/sdk/android/core/identity/a;
.source "SSOAuthHandler.java"


# static fields
.field static final c:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.twitter.android"

    const-string v2, "com.twitter.android.SingleSignOnActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/core/identity/k;->c:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/f;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/f",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/a;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/f;I)V

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/k;->a(Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/pm/PackageManager;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 110
    :try_start_0
    const-string v1, "com.twitter.android"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 116
    const-string v5, "3082025d308201c6a00302010202044bd76cce300d06092a864886f70d01010505003073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e6420526563686973301e170d3130303432373233303133345a170d3438303832353233303133345a3073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e642052656368697330819f300d06092a864886f70d010101050003818d003081890281810086233c2e51c62232d49cc932e470713d63a6a1106b38f9e442e01bc79ca4f95c72b2cb3f1369ef7dea6036bff7c4b2828cb3787e7657ad83986751ced5b131fcc6f413efb7334e32ed9787f9e9a249ae108fa66009ac7a7932c25d37e1e07d4f9f66aa494c270dbac87d261c9668d321c2fba4ef2800e46671a597ff2eac5d7f0203010001300d06092a864886f70d0101050500038181003e1f01cb6ea8be8d2cecef5cd2a64c97ba8728aa5f08f8275d00508d64d139b6a72c5716b40a040df0eeeda04de9361107e123ee8d3dc05e70c8a355f46dbadf1235443b0b214c57211afd4edd147451c443d49498d2a7ff27e45a99c39b9e47429a1dae843ba233bf8ca81296dbe1dc5c5434514d995b0279246809392a219b"

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    const/4 v0, 0x1

    .line 120
    :cond_0
    :goto_1
    return v0

    .line 115
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private b(Landroid/app/Activity;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/twitter/sdk/android/core/identity/k;->a(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "SSO app signature check failed"

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :goto_0
    return v0

    .line 77
    :cond_0
    :try_start_0
    sget-object v2, Lcom/twitter/sdk/android/core/identity/k;->c:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/a;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 84
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/twitter/sdk/android/core/identity/k;->c:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 85
    const-string v3, "ck"

    .line 1082
    iget-object v4, v1, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "cs"

    .line 1089
    iget-object v1, v1, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->b:Ljava/lang/String;

    .line 85
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :try_start_1
    iget v1, p0, Lcom/twitter/sdk/android/core/identity/k;->a:I

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "SSO auth activity not found"

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :catch_1
    move-exception v1

    .line 92
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Twitter"

    const-string v4, "SSO exception occurred"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/k;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
