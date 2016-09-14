.class final Lcom/nut/blehunter/ui/dq;
.super Lcom/nut/blehunter/rxApi/j;
.source "NewFriendActivity.java"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nut/blehunter/ui/NewFriendActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NewFriendActivity;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nut/blehunter/ui/dq;->c:Lcom/nut/blehunter/ui/NewFriendActivity;

    iput-boolean p2, p0, Lcom/nut/blehunter/ui/dq;->a:Z

    iput-object p3, p0, Lcom/nut/blehunter/ui/dq;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nut/blehunter/ui/dq;->c:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 125
    iget-object v0, p0, Lcom/nut/blehunter/ui/dq;->c:Lcom/nut/blehunter/ui/NewFriendActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 126
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nut/blehunter/ui/dq;->c:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 114
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/dq;->a:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/nut/blehunter/ui/dq;->c:Lcom/nut/blehunter/ui/NewFriendActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/NewFriendActivity;->setResult(I)V

    .line 116
    iget-object v0, p0, Lcom/nut/blehunter/ui/dq;->c:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->finish()V

    .line 6165
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/dq;->c:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/dr;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/dq;->b:Ljava/lang/String;

    .line 6157
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6160
    iget-object v0, v1, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/UnhandledFriend;

    .line 6161
    iget-object v4, v0, Lcom/nut/blehunter/entity/UnhandledFriend;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6162
    iget-object v2, v1, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7102
    iget-object v0, v1, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    .line 6164
    iget-object v0, v1, Lcom/nut/blehunter/ui/dr;->d:Lcom/nut/blehunter/ui/NewFriendActivity;

    iget-object v1, v1, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;Z)V

    goto :goto_0
.end method
