.class final Landroid/support/v7/a/e;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/a/d;


# direct methods
.method constructor <init>(Landroid/support/v7/a/d;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 1061
    iget-object v0, v0, Landroid/support/v7/a/d;->n:Landroid/widget/Button;

    .line 120
    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 2061
    iget-object v0, v0, Landroid/support/v7/a/d;->p:Landroid/os/Message;

    .line 120
    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 3061
    iget-object v0, v0, Landroid/support/v7/a/d;->p:Landroid/os/Message;

    .line 121
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 130
    :goto_0
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 10061
    iget-object v0, v0, Landroid/support/v7/a/d;->M:Landroid/os/Handler;

    .line 135
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 11061
    iget-object v2, v2, Landroid/support/v7/a/d;->b:Landroid/support/v7/a/av;

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 4061
    iget-object v0, v0, Landroid/support/v7/a/d;->q:Landroid/widget/Button;

    .line 122
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 5061
    iget-object v0, v0, Landroid/support/v7/a/d;->s:Landroid/os/Message;

    .line 122
    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 6061
    iget-object v0, v0, Landroid/support/v7/a/d;->s:Landroid/os/Message;

    .line 123
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 7061
    iget-object v0, v0, Landroid/support/v7/a/d;->t:Landroid/widget/Button;

    .line 124
    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 8061
    iget-object v0, v0, Landroid/support/v7/a/d;->v:Landroid/os/Message;

    .line 124
    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 9061
    iget-object v0, v0, Landroid/support/v7/a/d;->v:Landroid/os/Message;

    .line 125
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
