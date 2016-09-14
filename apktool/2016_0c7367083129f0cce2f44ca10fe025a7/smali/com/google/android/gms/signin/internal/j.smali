.class public final Lcom/google/android/gms/signin/internal/j;
.super Lcom/google/android/gms/common/internal/ar;

# interfaces
.implements Lcom/google/android/gms/internal/ca;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/ar",
        "<",
        "Lcom/google/android/gms/signin/internal/f;",
        ">;",
        "Lcom/google/android/gms/internal/ca;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final h:Lcom/google/android/gms/common/internal/ak;

.field private final i:Landroid/os/Bundle;

.field private j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ak;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 0
    .line 3000
    iget-object v0, p3, Lcom/google/android/gms/common/internal/ak;->e:Lcom/google/android/gms/internal/cb;

    .line 4000
    iget-object v1, p3, Lcom/google/android/gms/common/internal/ak;->f:Ljava/lang/Integer;

    .line 2000
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 5000
    iget-object v4, p3, Lcom/google/android/gms/common/internal/ak;->a:Landroid/accounts/Account;

    .line 2000
    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_0

    const-string v2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 6000
    iget-boolean v2, v0, Lcom/google/android/gms/internal/cb;->b:Z

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 7000
    iget-boolean v2, v0, Lcom/google/android/gms/internal/cb;->c:Z

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.serverClientId"

    .line 8000
    iget-object v2, v0, Lcom/google/android/gms/internal/cb;->d:Ljava/lang/String;

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 9000
    iget-boolean v2, v0, Lcom/google/android/gms/internal/cb;->e:Z

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.hostedDomain"

    .line 10000
    iget-object v2, v0, Lcom/google/android/gms/internal/cb;->f:Ljava/lang/String;

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 11000
    iget-boolean v2, v0, Lcom/google/android/gms/internal/cb;->g:Z

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12000
    iget-object v1, v0, Lcom/google/android/gms/internal/cb;->h:Ljava/lang/Long;

    .line 2000
    if-eqz v1, :cond_1

    const-string v1, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    .line 13000
    iget-object v2, v0, Lcom/google/android/gms/internal/cb;->h:Ljava/lang/Long;

    .line 2000
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14000
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/cb;->i:Ljava/lang/Long;

    .line 2000
    if-eqz v1, :cond_2

    const-string v1, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    .line 15000
    iget-object v0, v0, Lcom/google/android/gms/internal/cb;->i:Ljava/lang/Long;

    .line 2000
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 0
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/j;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/ak;Landroid/os/Bundle;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/ak;Landroid/os/Bundle;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V
    .locals 6

    .prologue
    .line 0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/ar;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ak;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V

    iput-boolean p3, p0, Lcom/google/android/gms/signin/internal/j;->a:Z

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/j;->h:Lcom/google/android/gms/common/internal/ak;

    iput-object p5, p0, Lcom/google/android/gms/signin/internal/j;->i:Landroid/os/Bundle;

    .line 1000
    iget-object v0, p4, Lcom/google/android/gms/common/internal/ak;->f:Ljava/lang/Integer;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/signin/internal/j;->j:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 0
    .line 19000
    invoke-static {p1}, Lcom/google/android/gms/signin/internal/g;->a(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/f;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method protected final h()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/j;->h:Lcom/google/android/gms/common/internal/ak;

    .line 16000
    iget-object v0, v0, Lcom/google/android/gms/common/internal/ak;->c:Ljava/lang/String;

    .line 17000
    iget-object v1, p0, Lcom/google/android/gms/common/internal/k;->d:Landroid/content/Context;

    .line 0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/j;->i:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/j;->h:Lcom/google/android/gms/common/internal/ak;

    .line 18000
    iget-object v2, v2, Lcom/google/android/gms/common/internal/ak;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/j;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/signin/internal/j;->a:Z

    return v0
.end method
