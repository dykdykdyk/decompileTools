.class final Lcom/twitter/sdk/android/core/identity/l;
.super Ljava/lang/Object;
.source "ShareEmailController.java"


# instance fields
.field final a:Lcom/twitter/sdk/android/core/identity/ShareEmailClient;

.field final b:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/identity/ShareEmailClient;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/l;->a:Lcom/twitter/sdk/android/core/identity/ShareEmailClient;

    .line 23
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/l;->b:Landroid/os/ResultReceiver;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v1, "msg"

    const-string v2, "The user chose not to share their email address at this time."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 75
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/l;->b:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method final a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 68
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/l;->b:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 69
    return-void
.end method
