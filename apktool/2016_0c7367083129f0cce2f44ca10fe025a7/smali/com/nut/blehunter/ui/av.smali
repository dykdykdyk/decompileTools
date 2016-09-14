.class final Lcom/nut/blehunter/ui/av;
.super Ljava/lang/Object;
.source "FriendManageActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/at;

.field final synthetic b:Lcom/nut/blehunter/ui/au;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/au;Lcom/nut/blehunter/ui/at;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/nut/blehunter/ui/av;->b:Lcom/nut/blehunter/ui/au;

    iput-object p2, p0, Lcom/nut/blehunter/ui/av;->a:Lcom/nut/blehunter/ui/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 351
    iget-object v0, p0, Lcom/nut/blehunter/ui/av;->b:Lcom/nut/blehunter/ui/au;

    iget-object v0, v0, Lcom/nut/blehunter/ui/au;->o:Lcom/nut/blehunter/ui/at;

    iget-object v0, v0, Lcom/nut/blehunter/ui/at;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nut/blehunter/ui/av;->b:Lcom/nut/blehunter/ui/au;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/au;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 352
    iget-object v1, p0, Lcom/nut/blehunter/ui/av;->b:Lcom/nut/blehunter/ui/au;

    iget-object v1, v1, Lcom/nut/blehunter/ui/au;->o:Lcom/nut/blehunter/ui/at;

    iget-object v1, v1, Lcom/nut/blehunter/ui/at;->d:Lcom/nut/blehunter/ui/FriendManageActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/FriendManageActivity;->a(Lcom/nut/blehunter/ui/FriendManageActivity;)Lcom/nut/blehunter/entity/User;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/av;->b:Lcom/nut/blehunter/ui/au;

    iget-object v2, v2, Lcom/nut/blehunter/ui/au;->o:Lcom/nut/blehunter/ui/at;

    iget-object v2, v2, Lcom/nut/blehunter/ui/at;->d:Lcom/nut/blehunter/ui/FriendManageActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/FriendManageActivity;->a(Lcom/nut/blehunter/ui/FriendManageActivity;)Lcom/nut/blehunter/entity/User;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/nut/blehunter/ui/av;->b:Lcom/nut/blehunter/ui/au;

    iget-object v1, v1, Lcom/nut/blehunter/ui/au;->o:Lcom/nut/blehunter/ui/at;

    iget-object v1, v1, Lcom/nut/blehunter/ui/at;->d:Lcom/nut/blehunter/ui/FriendManageActivity;

    new-instance v2, Lcom/nut/blehunter/ui/widget/m;

    iget-object v3, p0, Lcom/nut/blehunter/ui/av;->b:Lcom/nut/blehunter/ui/au;

    iget-object v3, v3, Lcom/nut/blehunter/ui/au;->o:Lcom/nut/blehunter/ui/at;

    iget-object v3, v3, Lcom/nut/blehunter/ui/at;->d:Lcom/nut/blehunter/ui/FriendManageActivity;

    new-instance v4, Lcom/nut/blehunter/ui/aw;

    invoke-direct {v4, p0, v0}, Lcom/nut/blehunter/ui/aw;-><init>(Lcom/nut/blehunter/ui/av;Lcom/nut/blehunter/entity/Friend;)V

    invoke-direct {v2, v3, p1, v4}, Lcom/nut/blehunter/ui/widget/m;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v2}, Lcom/nut/blehunter/ui/FriendManageActivity;->a(Lcom/nut/blehunter/ui/FriendManageActivity;Lcom/nut/blehunter/ui/widget/m;)Lcom/nut/blehunter/ui/widget/m;

    .line 361
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
