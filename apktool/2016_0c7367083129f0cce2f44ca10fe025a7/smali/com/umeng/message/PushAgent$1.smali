.class Lcom/umeng/message/PushAgent$1;
.super Landroid/os/Handler;
.source "PushAgent.java"


# instance fields
.field final synthetic a:Lcom/umeng/message/PushAgent;


# direct methods
.method constructor <init>(Lcom/umeng/message/PushAgent;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/umeng/message/PushAgent$1;->a:Lcom/umeng/message/PushAgent;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    return-void
.end method
