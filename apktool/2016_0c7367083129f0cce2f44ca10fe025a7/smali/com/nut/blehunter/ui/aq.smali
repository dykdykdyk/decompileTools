.class final Lcom/nut/blehunter/ui/aq;
.super Ljava/lang/Object;
.source "FriendManageActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Friend;

.field final synthetic b:Lcom/nut/blehunter/ui/FriendManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/FriendManageActivity;Lcom/nut/blehunter/entity/Friend;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nut/blehunter/ui/aq;->b:Lcom/nut/blehunter/ui/FriendManageActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/aq;->a:Lcom/nut/blehunter/entity/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nut/blehunter/ui/aq;->b:Lcom/nut/blehunter/ui/FriendManageActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/aq;->a:Lcom/nut/blehunter/entity/Friend;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/FriendManageActivity;->a(Lcom/nut/blehunter/ui/FriendManageActivity;Ljava/lang/String;)V

    .line 145
    return-void
.end method
