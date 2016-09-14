.class final Lcom/nut/blehunter/ui/gk;
.super Ljava/lang/Object;
.source "ShareManageActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/ShareUserInfo;

.field final synthetic b:Lcom/nut/blehunter/ui/ShareManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ShareManageActivity;Lcom/nut/blehunter/entity/ShareUserInfo;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/nut/blehunter/ui/gk;->b:Lcom/nut/blehunter/ui/ShareManageActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/gk;->a:Lcom/nut/blehunter/entity/ShareUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nut/blehunter/ui/gk;->b:Lcom/nut/blehunter/ui/ShareManageActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/gk;->b:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/ShareManageActivity;->b(Lcom/nut/blehunter/ui/ShareManageActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/gk;->a:Lcom/nut/blehunter/entity/ShareUserInfo;

    iget-object v2, v2, Lcom/nut/blehunter/entity/ShareUserInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/ShareManageActivity;->a(Lcom/nut/blehunter/ui/ShareManageActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method
