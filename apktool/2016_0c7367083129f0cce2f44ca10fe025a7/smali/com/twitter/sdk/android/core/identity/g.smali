.class public final Lcom/twitter/sdk/android/core/identity/g;
.super Lcom/twitter/sdk/android/core/identity/a;
.source "OAuthHandler.java"


# direct methods
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
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/a;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/f;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    .line 26
    .line 1031
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/sdk/android/core/identity/OAuthActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1032
    const-string v1, "auth_config"

    .line 1040
    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/a;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 1032
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    iget v1, p0, Lcom/twitter/sdk/android/core/identity/g;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 27
    const/4 v0, 0x1

    return v0
.end method
