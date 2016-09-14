.class public abstract Lcom/twitter/sdk/android/core/identity/a;
.super Ljava/lang/Object;
.source "AuthHandler.java"


# instance fields
.field protected final a:I

.field final b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final c:Lcom/twitter/sdk/android/core/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/f",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/f;I)V
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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/a;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 35
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/a;->c:Lcom/twitter/sdk/android/core/f;

    .line 36
    iput p3, p0, Lcom/twitter/sdk/android/core/identity/a;->a:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)Z
    .locals 8

    .prologue
    .line 63
    iget v0, p0, Lcom/twitter/sdk/android/core/identity/a;->a:I

    if-eq v0, p1, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 1044
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/a;->c:Lcom/twitter/sdk/android/core/f;

    .line 68
    if-eqz v1, :cond_1

    .line 69
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 70
    const-string v0, "tk"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v2, "ts"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v3, "screen_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    const-string v4, "user_id"

    const-wide/16 v6, 0x0

    invoke-virtual {p3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 74
    new-instance v6, Lcom/twitter/sdk/android/core/u;

    new-instance v7, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-direct {v7, v0, v2}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v4, v5, v3}, Lcom/twitter/sdk/android/core/u;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v6, v0}, Lcom/twitter/sdk/android/core/f;->success(Ljava/lang/Object;Lretrofit/client/Response;)V

    .line 83
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    if-eqz p3, :cond_3

    const-string v0, "auth_error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const-string v0, "auth_error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthException;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/core/f;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    goto :goto_1

    .line 80
    :cond_3
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v2, "Authorize failed."

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/core/f;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    goto :goto_1
.end method

.method public abstract a(Landroid/app/Activity;)Z
.end method
