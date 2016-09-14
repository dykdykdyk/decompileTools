.class final Lcom/nut/blehunter/ui/aw;
.super Ljava/lang/Object;
.source "FriendManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Friend;

.field final synthetic b:Lcom/nut/blehunter/ui/av;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/av;Lcom/nut/blehunter/entity/Friend;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/nut/blehunter/ui/aw;->b:Lcom/nut/blehunter/ui/av;

    iput-object p2, p0, Lcom/nut/blehunter/ui/aw;->a:Lcom/nut/blehunter/entity/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/nut/blehunter/ui/aw;->b:Lcom/nut/blehunter/ui/av;

    iget-object v0, v0, Lcom/nut/blehunter/ui/av;->b:Lcom/nut/blehunter/ui/au;

    iget-object v0, v0, Lcom/nut/blehunter/ui/au;->o:Lcom/nut/blehunter/ui/at;

    iget-object v0, v0, Lcom/nut/blehunter/ui/at;->d:Lcom/nut/blehunter/ui/FriendManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/FriendManageActivity;->b(Lcom/nut/blehunter/ui/FriendManageActivity;)Lcom/nut/blehunter/ui/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/m;->dismiss()V

    .line 357
    iget-object v0, p0, Lcom/nut/blehunter/ui/aw;->b:Lcom/nut/blehunter/ui/av;

    iget-object v0, v0, Lcom/nut/blehunter/ui/av;->b:Lcom/nut/blehunter/ui/au;

    iget-object v0, v0, Lcom/nut/blehunter/ui/au;->o:Lcom/nut/blehunter/ui/at;

    iget-object v0, v0, Lcom/nut/blehunter/ui/at;->d:Lcom/nut/blehunter/ui/FriendManageActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/aw;->a:Lcom/nut/blehunter/entity/Friend;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/FriendManageActivity;->a(Lcom/nut/blehunter/ui/FriendManageActivity;Lcom/nut/blehunter/entity/Friend;)V

    .line 358
    return-void
.end method
