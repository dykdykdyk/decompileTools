.class final Lcom/nut/blehunter/ui/h;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nut/blehunter/ui/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/b;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/h;->a:Ljava/lang/ref/WeakReference;

    .line 75
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    iget-object v0, p0, Lcom/nut/blehunter/ui/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lcom/nut/blehunter/ui/b;->a(Landroid/os/Message;)V

    .line 84
    :cond_0
    return-void
.end method
