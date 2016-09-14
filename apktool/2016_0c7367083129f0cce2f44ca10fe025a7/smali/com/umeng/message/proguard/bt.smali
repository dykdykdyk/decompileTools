.class final Lcom/umeng/message/proguard/bt;
.super Ljava/lang/Object;
.source "AbsMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/umeng/message/proguard/bs;


# direct methods
.method constructor <init>(Lcom/umeng/message/proguard/bs;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/umeng/message/proguard/bt;->b:Lcom/umeng/message/proguard/bs;

    iput-object p2, p0, Lcom/umeng/message/proguard/bt;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/umeng/message/proguard/bt;->b:Lcom/umeng/message/proguard/bs;

    iget-object v0, v0, Lcom/umeng/message/proguard/bs;->a:Lcom/umeng/message/proguard/br;

    invoke-static {v0}, Lcom/umeng/message/proguard/br;->a(Lcom/umeng/message/proguard/br;)Lcom/umeng/message/proguard/bu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/umeng/message/proguard/bt;->b:Lcom/umeng/message/proguard/bs;

    iget-object v0, v0, Lcom/umeng/message/proguard/bs;->a:Lcom/umeng/message/proguard/br;

    invoke-static {v0}, Lcom/umeng/message/proguard/br;->a(Lcom/umeng/message/proguard/br;)Lcom/umeng/message/proguard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/bu;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/umeng/message/proguard/bt;->b:Lcom/umeng/message/proguard/bs;

    iget-object v1, v1, Lcom/umeng/message/proguard/bs;->a:Lcom/umeng/message/proguard/br;

    invoke-static {v1}, Lcom/umeng/message/proguard/br;->a(Lcom/umeng/message/proguard/br;)Lcom/umeng/message/proguard/bu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/umeng/message/proguard/bt;->a:Landroid/content/Intent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/umeng/message/proguard/bt;->b:Lcom/umeng/message/proguard/bs;

    iget-object v1, v1, Lcom/umeng/message/proguard/bs;->a:Lcom/umeng/message/proguard/br;

    invoke-static {v1}, Lcom/umeng/message/proguard/br;->a(Lcom/umeng/message/proguard/br;)Lcom/umeng/message/proguard/bu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/bu;->sendMessage(Landroid/os/Message;)Z

    .line 241
    :cond_0
    return-void
.end method
