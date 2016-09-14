.class final Lcom/nut/blehunter/ui/c;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nut/blehunter/ui/c;->a:Lcom/nut/blehunter/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nut/blehunter/ui/c;->a:Lcom/nut/blehunter/ui/b;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/b;->a(Lcom/nut/blehunter/ui/b;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 156
    iget-object v0, p0, Lcom/nut/blehunter/ui/c;->a:Lcom/nut/blehunter/ui/b;

    .line 1131
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b;->a(ILandroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/nut/blehunter/ui/c;->a:Lcom/nut/blehunter/ui/b;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b;->e_()V

    .line 158
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nut/blehunter/ui/c;->a:Lcom/nut/blehunter/ui/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/b;->a(Lcom/nut/blehunter/ui/b;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 163
    return-void
.end method
