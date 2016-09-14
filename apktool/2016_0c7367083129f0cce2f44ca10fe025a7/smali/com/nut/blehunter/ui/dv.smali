.class final Lcom/nut/blehunter/ui/dv;
.super Ljava/lang/Object;
.source "NewFriendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/du;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/du;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/nut/blehunter/ui/dv;->a:Lcom/nut/blehunter/ui/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nut/blehunter/ui/dv;->a:Lcom/nut/blehunter/ui/du;

    iget-object v0, v0, Lcom/nut/blehunter/ui/du;->b:Lcom/nut/blehunter/ui/ds;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ds;->p:Lcom/nut/blehunter/ui/dr;

    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->d:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->b(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/m;->dismiss()V

    .line 203
    iget-object v0, p0, Lcom/nut/blehunter/ui/dv;->a:Lcom/nut/blehunter/ui/du;

    iget-object v0, v0, Lcom/nut/blehunter/ui/du;->b:Lcom/nut/blehunter/ui/ds;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ds;->p:Lcom/nut/blehunter/ui/dr;

    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->d:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/dr;

    move-result-object v0

    .line 1130
    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    .line 203
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/dv;->a:Lcom/nut/blehunter/ui/du;

    iget-object v0, v0, Lcom/nut/blehunter/ui/du;->b:Lcom/nut/blehunter/ui/ds;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ds;->p:Lcom/nut/blehunter/ui/dr;

    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->d:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/dr;

    move-result-object v0

    .line 2130
    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/nut/blehunter/ui/dv;->a:Lcom/nut/blehunter/ui/du;

    iget-object v0, v0, Lcom/nut/blehunter/ui/du;->b:Lcom/nut/blehunter/ui/ds;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ds;->p:Lcom/nut/blehunter/ui/dr;

    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->d:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/dr;

    move-result-object v0

    .line 3130
    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    .line 204
    iget-object v1, p0, Lcom/nut/blehunter/ui/dv;->a:Lcom/nut/blehunter/ui/du;

    iget-object v1, v1, Lcom/nut/blehunter/ui/du;->b:Lcom/nut/blehunter/ui/ds;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/ds;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/UnhandledFriend;

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/nut/blehunter/ui/dv;->a:Lcom/nut/blehunter/ui/du;

    iget-object v1, v1, Lcom/nut/blehunter/ui/du;->b:Lcom/nut/blehunter/ui/ds;

    iget-object v1, v1, Lcom/nut/blehunter/ui/ds;->p:Lcom/nut/blehunter/ui/dr;

    iget-object v1, v1, Lcom/nut/blehunter/ui/dr;->d:Lcom/nut/blehunter/ui/NewFriendActivity;

    iget-object v0, v0, Lcom/nut/blehunter/entity/UnhandledFriend;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;Ljava/lang/String;Z)V

    .line 209
    :cond_0
    return-void
.end method
