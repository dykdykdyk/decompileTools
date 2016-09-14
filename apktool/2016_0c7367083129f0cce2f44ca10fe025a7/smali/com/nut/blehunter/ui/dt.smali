.class final Lcom/nut/blehunter/ui/dt;
.super Ljava/lang/Object;
.source "NewFriendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/dr;

.field final synthetic b:Lcom/nut/blehunter/ui/ds;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ds;Lcom/nut/blehunter/ui/dr;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/nut/blehunter/ui/dt;->b:Lcom/nut/blehunter/ui/ds;

    iput-object p2, p0, Lcom/nut/blehunter/ui/dt;->a:Lcom/nut/blehunter/ui/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nut/blehunter/ui/dt;->b:Lcom/nut/blehunter/ui/ds;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ds;->p:Lcom/nut/blehunter/ui/dr;

    .line 1130
    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    .line 190
    iget-object v1, p0, Lcom/nut/blehunter/ui/dt;->b:Lcom/nut/blehunter/ui/ds;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/ds;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/UnhandledFriend;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/nut/blehunter/ui/dt;->b:Lcom/nut/blehunter/ui/ds;

    iget-object v1, v1, Lcom/nut/blehunter/ui/ds;->p:Lcom/nut/blehunter/ui/dr;

    iget-object v1, v1, Lcom/nut/blehunter/ui/dr;->d:Lcom/nut/blehunter/ui/NewFriendActivity;

    iget-object v0, v0, Lcom/nut/blehunter/entity/UnhandledFriend;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;Ljava/lang/String;Z)V

    .line 194
    :cond_0
    return-void
.end method
