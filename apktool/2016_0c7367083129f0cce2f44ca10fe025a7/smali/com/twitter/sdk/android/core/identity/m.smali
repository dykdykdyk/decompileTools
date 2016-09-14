.class final Lcom/twitter/sdk/android/core/identity/m;
.super Lcom/twitter/sdk/android/core/f;
.source "ShareEmailController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/f",
        "<",
        "Lcom/twitter/sdk/android/core/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/identity/l;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/identity/l;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/m;->a:Lcom/twitter/sdk/android/core/identity/l;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get email address."

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/m;->a:Lcom/twitter/sdk/android/core/identity/l;

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterException;

    const-string v2, "Failed to get email address."

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/identity/l;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 43
    return-void
.end method

.method public final a(Lcom/twitter/sdk/android/core/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/a/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/m;->a:Lcom/twitter/sdk/android/core/identity/l;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/a/f;

    .line 1048
    iget-object v2, v0, Lcom/twitter/sdk/android/core/a/f;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1049
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterException;

    const-string v2, "Your application may not have access to email addresses or the user may not have an email address. To request access, please visit https://support.twitter.com/forms/platform."

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/core/identity/l;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 1053
    :goto_0
    return-void

    .line 1052
    :cond_0
    const-string v2, ""

    iget-object v3, v0, Lcom/twitter/sdk/android/core/a/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1053
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterException;

    const-string v2, "This user does not have an email address."

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/core/identity/l;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    goto :goto_0

    .line 1055
    :cond_1
    iget-object v0, v0, Lcom/twitter/sdk/android/core/a/f;->a:Ljava/lang/String;

    .line 1060
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1061
    const-string v3, "email"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v0, v1, Lcom/twitter/sdk/android/core/identity/l;->b:Landroid/os/ResultReceiver;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
